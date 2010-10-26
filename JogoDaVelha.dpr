program JogoDaVelha;

uses
  Forms,
  UFormPrincipal in 'src\UFormPrincipal.pas' {FormPrincipal},
  UJogoDaVelha in 'src\UJogoDaVelha.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.Run;
end.
