unit UJogoDaVelhaTest;
{

  Delphi DUnit Test Case
  ----------------------
  This unit contains a skeleton test case class generated by the Test Case Wizard.
  Modify the generated code to correctly setup and call the methods from the unit 
  being tested.

}

interface

uses
  TestFramework, Windows, Forms, Dialogs, Controls, Classes, SysUtils,
  Variants, Graphics, Messages, UJogoDaVelha;

type
  // Test methods for class TFormPrincipal

  JogoDaVelhaTest = class(TTestCase)
  strict private
    FJogoDaVelha : TJogoDaVelha;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestJogoDaVelhaExists;
  end;

implementation

procedure JogoDaVelhaTest.SetUp;
begin
  FJogoDaVelha := TJogoDaVelha.Create;
end;

procedure JogoDaVelhaTest.TearDown;
begin
  FreeAndNil(FJogoDaVelha);
end;


procedure JogoDaVelhaTest.TestJogoDaVelhaExists;
begin
  CheckNotNull(FJogoDaVelha, 'Jogo da Velha n�o criado');
end;

initialization
  // Register any test cases with the test runner
  RegisterTest(JogoDaVelhaTest.Suite);
end.
