unit Main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmPrincipal = class(TForm)
    swt_bd: TSwitch;
    lblNome: TLabel;
    Button1: TButton;
    qry_inner: TFDQuery;
    procedure swt_bdSwitch(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
    UnitDM;

{$R *.fmx}

procedure TfrmPrincipal.Button1Click(Sender: TObject);
begin
    qry_inner.Active := False;
    qry_inner.SQL.Clear;
    qry_inner.SQL.Add('select * from pessoa p where p.id=18949');
    qry_inner.Active := True;
    lblNome.Text := qry_inner.FieldByName('PES_NOMEFANTASIA').AsString;
end;

procedure TfrmPrincipal.swt_bdSwitch(Sender: TObject);
begin
    dm.Conn.Connected := swt_bd.IsChecked;
end;

end.
