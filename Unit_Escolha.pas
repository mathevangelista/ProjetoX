unit Unit_Escolha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.CategoryButtons,
  Vcl.ButtonGroup;

type
  TFormEscolha = class(TForm)
    GBox_escolha: TGroupBox;
    ButtonGroup1: TButtonGroup;
    ComboBox1: TComboBox;
    Button1: TButton;
    procedure ButtonGroup1Items0Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;


var    
  FormEscolha: TFormEscolha;

implementation

uses Unit_CalcArea;

{$R *.dfm}



procedure TFormEscolha.Button1Click(Sender: TObject);
begin
  FormCalcArea.triangulo:= ComboBox1.ItemIndex;
  FormCalcArea.ShowModal;
end;

procedure TFormEscolha.ButtonGroup1Items0Click(Sender: TObject);
begin
FormCalcArea:=TFormCalcArea.Create(self);
FormCalcArea.ShowModal;

FormCalcArea.triangulo;

FormEscolha.CloseModal;
end;

end.
