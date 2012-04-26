unit f_selfield;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, funcs, Vcl.ExtCtrls;

type
  TFSelField = class(TForm)
    shp_sel: TShape;
    shp_wnd: TShape;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    procedure StartSelect(Full: Boolean = False);
  end;

var
  FSelField: TFSelField;

implementation

{$R *.dfm}

procedure TFSelField.FormCreate(Sender: TObject);
begin
  Color := $00FF00;
  TransparentColorValue := $00FF00;
  TransparentColor := true;
end;

procedure TFSelField.FormShow(Sender: TObject);

begin
  SetWindowPos(Handle, HWND_TOPMOST, Left, Top, Width, Height, SWP_NOACTIVATE or
    SWP_NOMOVE or SWP_NOSIZE);
end;

procedure TFSelField.StartSelect(Full: Boolean = False);
var
  i, w, h: Integer;
begin
  if (GSettings.MonIndex > 0) and (not Full) then
  begin
    Top := Screen.Monitors[GSettings.MonIndex - 1].Top;
    Left := Screen.Monitors[GSettings.MonIndex - 1].Left;
    Width := Screen.Monitors[GSettings.MonIndex - 1].Width;
    Height := Screen.Monitors[GSettings.MonIndex - 1].Height;
  end
  else
  begin
    Top := 0;
    Left := 0;
    h := 0;
    w := 0;
    for i := 0 to Screen.MonitorCount - 1 do
    begin
      Inc(h, Screen.Monitors[i].Height);
      Inc(w, Screen.Monitors[i].Width);
    end;
    Width := w;
    Height := h;
  end;
end;

end.
