unit UJogoDaVelha;

interface

type

  TJogoDaVelha = class
  private
    FJogadorVez : Integer;
    FJogador2: TObject;
    FJogador1: TObject;
    procedure SetJogador1(const Value: TObject);
    procedure SetJogador2(const Value: TObject);

  public
    Tabuleiro: array[1..3, 1..3] of Char;
    constructor Create;
  published
    property Jogador1 : TObject read FJogador1 write SetJogador1;
    property Jogador2 : TObject read FJogador2 write SetJogador2;
    function isvazio:boolean;
    function VerificaPosicao(Posicao: integer): boolean;
    function VezJogador1(): Boolean;
    function VezJogador2(): Boolean;
  end;

implementation

{ TJogoDaVelha }

constructor TJogoDaVelha.Create;
begin
  Jogador1 := TObject.Create;
  Jogador2 := TObject.Create;
  FJogadorVez := 1;
end;

function TJogoDaVelha.isvazio: boolean;
var
  I, J: Integer;
begin
 Result := True;

  for I := 1 to 3 do
    for J := 1 to 3 do
      if Tabuleiro[I, J] <> ''then
      begin
        Result := False;
        Exit;
      end;
end;

procedure TJogoDaVelha.SetJogador1(const Value: TObject);
begin
  FJogador1 := Value;
end;

procedure TJogoDaVelha.SetJogador2(const Value: TObject);
begin
  FJogador2 := Value;
end;

function TJogoDaVelha.VerificaPosicao(Posicao: integer): boolean;
begin
  result:=true;
end;

function TJogoDaVelha.VezJogador1: Boolean;
begin
  Result := FJogadorVez = 1;
end;

function TJogoDaVelha.VezJogador2: Boolean;
begin
  Result := FJogadorVez = 2;
end;

end.
