unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    Button1: TButton;
    function IsVerticalDirectionInverted(const APrinterType: Byte ): Boolean;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

function TForm3.IsVerticalDirectionInverted(const APrinterType: byte): boolean;
begin
    case APrinterType of
      3,4,9,11: result := true;
      12,13,14,15,16,17: result := false;
    else
      raise Exception.Create('Unknown printer type.');
    end;
end;


procedure TForm3.Button1Click(Sender: TObject);
var
bool: boolean;
BoolToStr: string;
begin
bool:=IsVerticalDirectionInverted(21);
 if bool = true then BoolToStr:='True';
 if bool = false then BoolToStr:='False';
showmessage(BoolToStr)  ;
end;

end.
