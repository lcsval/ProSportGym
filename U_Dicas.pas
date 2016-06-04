unit U_Dicas;

interface

uses
  {$IFDEF VER210} //Versão 2010
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, ExtCtrls;
  {$ELSE}
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;
  {$ENDIF} //Versão XE2

type
  TF_Dicas = class(TForm)
    ListBox1: TListBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Dicas: TF_Dicas;

implementation

{$R *.dfm}

procedure TF_Dicas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
