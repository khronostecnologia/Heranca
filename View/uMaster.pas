unit uMaster;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvSmoothPanel, Vcl.StdCtrls,
  JvDBCheckBox, JvExMask,JvToolEdit, JvDBControls, cxCheckBox, JvMaskEdit,
  Vcl.ExtCtrls, Vcl.Menus, cxCurrencyEdit,Vcl.DBCtrls,RxDBCtrl;

type
  TFrmMaster = class(TForm)
    PnlGeral: TAdvSmoothPanel;
    PnlHeader: TAdvSmoothPanel;
    PnlCentral: TAdvSmoothPanel;
    PnlFooter: TAdvSmoothPanel;
    lblTitulo: TLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  protected
    { Protected declarations }
    procedure ControlaEditsMaster(AEnabled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMaster: TFrmMaster;

implementation

{$R *.dfm}

procedure TFrmMaster.FormCreate(Sender: TObject);
begin
  Caption := Application.Title + ' | ' + Name;
end;

procedure TFrmMaster.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If key = #13 then
  Begin
    Key:= #0;
    Perform(Wm_NextDlgCtl,0,0);
  end;
end;

procedure TFrmMaster.ControlaEditsMaster(AEnabled: Boolean);
var
  i : Integer;
begin
  for I := 0 to Pred(Self.ComponentCount) do
  begin
    {TAG 1 - Componentes detalhes.Somente são habilitados atraves dos controles de crud}
    if Self.Components[I].Tag <> 0 then
    begin
      if Self.Components[I] is TDBMemo then
        TDBMemo(Self.Components[I]).Enabled           := false;
      if Self.Components[I] is TDBEdit then
        TDBEdit(Self.Components[I]).Enabled           := false;
      if Self.Components[I] is TDBComboBox then
        TDBComboBox(Self.Components[I]).Enabled       := false;
      if Self.Components[I] is TJvDBDateEdit then
        TJvDBDateEdit(Self.Components[I]).Enabled     := false;
      if Self.Components[I] is TJvDBCheckBox then
        TJvDBCheckBox(Self.Components[I]).Enabled     := false;
      if Self.Components[I] is TJvDBMaskEdit then
        TJvDBMaskEdit(Self.Components[I]).Enabled     := false;
      if Self.Components[I] is TJvDBCalcEdit then
        TJvDBCalcEdit(Self.Components[I]).Enabled     := false;
      if Self.Components[I] is TDBLookupComboBox then
        TDBLookupComboBox(Self.Components[I]).Enabled := false;
      if Self.Components[I] is TRxDBCalcEdit then
        TRxDBCalcEdit(Self.Components[I]).Enabled     := false;
    end
    else
    begin
      if Self.Components[I] is TDBMemo then
        TDBMemo(Self.Components[I]).Enabled           := AEnabled;
      if Self.Components[I] is TDBEdit then
        TDBEdit(Self.Components[I]).Enabled           := AEnabled;
      if Self.Components[I] is TDBComboBox then
        TDBComboBox(Self.Components[I]).Enabled       := AEnabled;
      if Self.Components[I] is TJvDBDateEdit then
        TJvDBDateEdit(Self.Components[I]).Enabled     := AEnabled;
      if Self.Components[I] is TJvDBCheckBox then
        TJvDBCheckBox(Self.Components[I]).Enabled     := AEnabled;
      if Self.Components[I] is TJvDBMaskEdit then
        TJvDBMaskEdit(Self.Components[I]).Enabled     := AEnabled;
      if Self.Components[I] is TJvDBCalcEdit then
        TJvDBCalcEdit(Self.Components[I]).Enabled     := AEnabled;
      if Self.Components[I] is TDBLookupComboBox then
        TDBLookupComboBox(Self.Components[I]).Enabled := AEnabled;
      if Self.Components[I] is TRxDBCalcEdit then
        TRxDBCalcEdit(Self.Components[I]).Enabled     := AEnabled;
    end;
  end;
end;

end.
