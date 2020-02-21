unit uMaster;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvSmoothPanel, Vcl.StdCtrls;

type
  TFrmMaster = class(TForm)
    PnlGeral: TAdvSmoothPanel;
    PnlHeader: TAdvSmoothPanel;
    PnlCentral: TAdvSmoothPanel;
    PnlFooter: TAdvSmoothPanel;
    lblTitulo: TLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMaster: TFrmMaster;

implementation

{$R *.dfm}

procedure TFrmMaster.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If key = #13 then
  Begin
   Key:= #0;
   Perform(Wm_NextDlgCtl,0,0);
  end;
end;

end.
