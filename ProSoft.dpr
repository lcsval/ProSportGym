program ProSoft;

uses
  Forms,
  U_Principal in 'U_Principal.pas' {F_Principal},
  U_Dm in 'U_Dm.pas' {DM: TDataModule},
  U_Padrao in 'U_Padrao.pas' {F_Padrao},
  U_Cargo in 'U_Cargo.pas' {F_Cargo},
  U_Cidade in 'U_Cidade.pas' {F_Cidade},
  U_Login in 'U_Login.pas' {F_Login},
  U_ControleAcesso in 'U_ControleAcesso.pas' {F_ControleAcesso},
  U_PLANOS in 'U_PLANOS.pas' {F_Planos},
  U_Mensalidade in 'U_Mensalidade.pas' {F_Mensalidade},
  U_Aluno in 'U_Aluno.pas' {F_Aluno},
  U_Funcionario in 'U_Funcionario.pas' {F_Funcionario},
  U_ConfSenha in 'U_ConfSenha.pas' {F_ConfSenha},
  U_ProcAv in 'U_ProcAv.pas' {F_ProcAv},
  U_Monitor in 'U_Monitor.pas' {F_Monitor},
  U_RelHistoricoAluno in 'U_RelHistoricoAluno.pas' {F_RelHistoricoAluno},
  U_Sobre in 'U_Sobre.pas' {F_Sobre},
  U_Dicas in 'U_Dicas.pas' {F_Dicas},
  U_BkpRest in 'U_BkpRest.pas' {F_BkpRest},
  U_funcoes in 'U_funcoes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'ProSoft';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TF_Principal, F_Principal);
  Application.Run;
end.
