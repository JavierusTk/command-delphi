unit Command.Button1;

interface

uses
  System.Classes, System.SysUtils,
  Vcl.StdCtrls, Vcl.Pattern.Command;

type
  TButon1Command = class (TCommand)
  private
    FMemo: TMemo;
  protected
    procedure Guard; override;
  public
    procedure Execute; override;
  published
    property Memo: Vcl.StdCtrls.TMemo read FMemo write FMemo;
  end;

implementation

procedure TButon1Command.Guard;
begin
  inherited;
  Assert(Memo<>nil);
end;

procedure TButon1Command.Execute;
begin
  inherited;
  Memo.Lines.Add('Simple message from command 1');
end;

end.
