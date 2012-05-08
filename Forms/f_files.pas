unit f_files;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  Winapi.ShellAPI,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.ExtCtrls,
  Vcl.Buttons,
  Vcl.Menus,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.ImgList,
  Vcl.ComCtrls,
  JvExComCtrls,
  Vcl.Clipbrd,
  JvListView,
  acAlphaImageList,
  sSpeedButton,
  funcs,
  ConstStrings,
  fileuploaders;

type
  TLinkStatus = (lsWait, lsError, lsOK, lsCanceled, lsNoFile, lsInProgress);

type
  TLinkData = record
    FilePath: String;
    Size: String;
    Status: TLinkStatus;
    StatusText: String;
    Link: String;
  end;

type
  TFFiles = class(TForm)
    lv_files: TJvListView;
    Images: TsAlphaImageList;
    pnl_buttons: TPanel;
    btn_StartLoad: TsSpeedButton;
    btn_Stop: TsSpeedButton;
    btn_settings: TsSpeedButton;
    mm: TMainMenu;
    mm_menu: TMenuItem;
    mm_load: TMenuItem;
    mm_close: TMenuItem;
    mm_links: TMenuItem;
    mm_copyall: TMenuItem;
    mm_openall: TMenuItem;
    btn_copyall: TsSpeedButton;
    btn_openall: TsSpeedButton;
    pm: TPopupMenu;
    pm_dontload: TMenuItem;
    pm_load: TMenuItem;
    pm_delete: TMenuItem;
    pm_copy: TMenuItem;
    pm_open: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btn_StartLoadClick(Sender: TObject);
    procedure btn_copyallClick(Sender: TObject);
    procedure btn_openallClick(Sender: TObject);
    procedure mm_closeClick(Sender: TObject);
    procedure btn_StopClick(Sender: TObject);
    procedure pm_loadClick(Sender: TObject);
    procedure pm_deleteClick(Sender: TObject);
    procedure pm_copyClick(Sender: TObject);
    procedure pm_openClick(Sender: TObject);
    procedure pm_dontloadClick(Sender: TObject);
  private
    Links: array of TLinkData;
    CurrentLink: Integer;
    StopLoad: Boolean;
    FileLoader: TFileLoader;
    procedure LoadFileByIndex(Index: Integer);
    procedure RePaintList;
    procedure FileProgress(Sender: TObject; Text: string);
    procedure EnableButtons(B: Boolean);
  public
    procedure StartLoad(Files: Tstringlist);
  protected
    procedure CreateParams(var Params: TCreateParams); override;

  end;

implementation

{$R *.dfm}

procedure TFFiles.EnableButtons(B: Boolean);
begin
  btn_StartLoad.Enabled := B;
  btn_Stop.Enabled := not B;
end;

procedure TFFiles.btn_copyallClick(Sender: TObject);
var
  i: Integer;
  r: string;
begin
  r := '';
  for i := 0 to High(Links) do
    if Links[i].Status = lsOK then r := r + Links[i].Link + #13#10;
  if r <> '' then Clipboard.AsText := r;
end;

procedure TFFiles.btn_openallClick(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to High(Links) do
    if Links[i].Status = lsOK then ShellExecute(Handle, 'open', PChar(Links[i].Link), nil, nil, SW_SHOW);
end;

procedure TFFiles.btn_StartLoadClick(Sender: TObject);
var
  i: Integer;

begin
  StopLoad := false;
  EnableButtons(false);
  for i := 0 to High(Links) do begin
    if StopLoad then break;
    CurrentLink := i;
    if Links[i].Status = lsWait then LoadFileByIndex(i);
  end;
  EnableButtons(true);
end;

procedure TFFiles.btn_StopClick(Sender: TObject);
begin
  StopLoad := true;
  if FileLoader <> nil then FileLoader.StopLoad;
end;

procedure TFFiles.LoadFileByIndex(Index: Integer);
begin
  try
    FileLoader := FileLoadersArray[GSettings.FileLoaderIndex].Obj.Create;
    FileLoader.OnHTTPWork := FileProgress;
    if FileExists(Links[Index].FilePath) then begin
      CurrentLink := Index;
      Links[Index].Status := lsInProgress;
      RePaintList;
      FileLoader.LoadFile(Links[Index].FilePath);
    end else begin
      Links[Index].Status := lsNoFile;
      RePaintList;
    end;
  finally
    if Links[Index].Status <> lsNoFile then begin
      if FileLoader.Error then begin
        Links[Index].Status := lsError;
        Links[Index].StatusText := '������ ��������';
      end else begin
        Links[Index].Status := lsOK;
        Links[Index].StatusText := '���������';
        Links[Index].Link := FileLoader.GetLink;
        AddToRecentFiles(Links[Index].Link, ExtractFileName(Links[Index].FilePath), rfOther);
        if GSettings.ShowInTray then begin
          GSettings.TrayIcon.Hint := Links[Index].Link;
          GSettings.TrayIcon.BalloonHint('���� ��������', Links[Index].Link);
        end;
      end;
    end;
    RePaintList;
    Freeandnil(FileLoader);
  end;
end;

procedure TFFiles.mm_closeClick(Sender: TObject);
begin
  Close;
end;

procedure TFFiles.pm_copyClick(Sender: TObject);
begin
  if lv_files.ItemIndex < 0 then exit;
  if Links[lv_files.ItemIndex].Status = lsOK then Clipboard.AsText := Links[lv_files.ItemIndex].Link;
end;

procedure TFFiles.pm_deleteClick(Sender: TObject);
var
  i: Integer;
begin
  if lv_files.ItemIndex < 0 then exit;
  for i := lv_files.ItemIndex to High(Links) - 1 do Links[i] := Links[i + 1];
  SetLength(Links, Length(Links) - 1);
  RePaintList;
end;

procedure TFFiles.pm_dontloadClick(Sender: TObject);
begin
  if lv_files.ItemIndex < 0 then exit;
  if Links[lv_files.ItemIndex].Status = lsWait then begin
    Links[lv_files.ItemIndex].Status := lsCanceled;
    Links[lv_files.ItemIndex].StatusText := '����������';
  end else begin
    Links[lv_files.ItemIndex].Status := lsWait;
    Links[lv_files.ItemIndex].StatusText := '��������';
  end;
  RePaintList;
end;

procedure TFFiles.pm_loadClick(Sender: TObject);
begin
  if lv_files.ItemIndex < 0 then exit;
  EnableButtons(false);
  StopLoad := false;
  CurrentLink := lv_files.ItemIndex;
  LoadFileByIndex(lv_files.ItemIndex);
  EnableButtons(true);
end;

procedure TFFiles.pm_openClick(Sender: TObject);
begin
  if lv_files.ItemIndex < 0 then exit;
  if Links[lv_files.ItemIndex].Status = lsOK then
      ShellExecute(Handle, 'open', PChar(Links[lv_files.ItemIndex].Link), nil, nil, SW_SHOW);
end;

procedure TFFiles.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
  Params.WndParent := GetDesktopWindow;
end;

procedure TFFiles.FileProgress(Sender: TObject; Text: string);
begin
  Links[CurrentLink].StatusText := Text;
  lv_files.Items[CurrentLink].SubItems[1] := Text;
end;

procedure TFFiles.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.RemoveComponent(self);
  Action := caFree;
end;

procedure TFFiles.FormCreate(Sender: TObject);
begin
  Application.InsertComponent(self);
end;

procedure TFFiles.RePaintList;
var
  d, i, indx: Integer;
begin
  with lv_files do begin
    d := ItemIndex;
    Clear;
    for i := 0 to High(Links) do
      with Items.Add do begin
        Caption := Links[i].FilePath;
        SubItems.Add(Links[i].Size + ' ��');
        SubItems.Add(Links[i].StatusText);
        case Links[i].Status of
          lsWait: indx := 2;
          lsError: indx := 1;
          lsInProgress: indx := 0;
          lsOK: indx := 3;
          lsCanceled: indx := 4;
          lsNoFile: indx := 1;
        end;
        ImageIndex := indx;
        StateIndex := indx;
      end;
    if (ItemIndex <= High(Links)) and (d >= 0) then ItemIndex := d;
  end;

end;

procedure TFFiles.StartLoad(Files: Tstringlist);
var
  i: Integer;
begin
  SetLength(Links, Files.Count);
  for i := 0 to Files.Count - 1 do begin
    Links[i].FilePath := Files[i];
    if FileExists(Files[i]) then begin
      Links[i].Size := inttostr(GetFileSize(Files[i]) div 1024);
      if Links[i].Size = '0' then Links[i].Size := '1';
      Links[i].StatusText := '��������';
      Links[i].Status := lsWait;
    end else begin
      Links[i].Size := '0';
      Links[i].Status := lsNoFile;
      Links[i].StatusText := '���� �����������!';
    end;
  end;
  Files.Free;
  RePaintList;
  Show;
end;

end.