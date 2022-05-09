program ProjetoX;

uses
  Vcl.Forms,
  Unit_principal in 'Unit_principal.pas' {FormPrincipal},
  Unit_Sobre in 'Unit_Sobre.pas' {FormSobre},
  Unit_IMC in 'Unit_IMC.pas' {FormIMC},
  Unit_CalcArea in 'Unit_CalcArea.pas' {FormCalcArea},
  Unit_Escolha in 'Unit_Escolha.pas' {FormEscolha};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TFormEscolha, FormEscolha);
  Application.Run;
end.
