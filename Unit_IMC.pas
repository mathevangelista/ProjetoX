unit Unit_IMC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList,
  System.ImageList, Vcl.ImgList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,
  Vcl.ToolWin, Vcl.ActnCtrls, Vcl.ComCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TFormIMC = class(TForm)
    ImageList_TBar: TImageList;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    Panel1: TPanel;
    Edit_nome: TEdit;
    Edit_peso: TEdit;
    Edit_altura: TEdit;
    LB_nome: TLabel;
    LB_peso: TLabel;
    LB_alt: TLabel;
    CB_sexo: TComboBox;
    GB_sexo: TGroupBox;
    GB_res: TGroupBox;
    Image1: TImage;
    Panel2: TPanel;
    Image2: TImage;
    Edit_RNome: TEdit;
    Edit_IMC: TEdit;
    Lb_Class: TLabel;
    procedure ToolButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure limpa;
  end;

var
  FormIMC: TFormIMC;
  peso,altura,res:real;

implementation

{$R *.dfm}

procedure TFormIMC.FormCreate(Sender: TObject);
begin
limpa;
end;

procedure TFormIMC.limpa;
begin
Edit_nome.Text      :='';
Edit_peso.Text      :='';
Edit_altura.Text    :='';
LB_Class.Caption      :='';
lb_Class.Visible      :=false;
CB_sexo.ItemIndex   :=-1;
CB_sexo.Text        :='Selecione o sexo';
Edit_RNome.Text     :='';
Edit_IMC.Text     :='';
peso:=0;
altura:=0;
res:=0;
end;

/// código desenvolvido por Matheus Evangelista

procedure TFormIMC.ToolButton1Click(Sender: TObject);
begin
peso    :=StrToFloat(Edit_peso.Text);
altura  :=StrToFloat(Edit_altura.Text);
res     :=peso/(altura*altura);


Edit_IMC.Text  := FormatFloat('#,##0.00',res);
Edit_RNome.Text  := Edit_nome.Text;


 if (res < 18.5) then    // Se menor ou igual a 17,5 é abaixo do peso
    begin
       LB_Class.Caption   := 'Abaixo do Peso ';
       LB_Class.Visible   := true;
     end
  else if ((res >= 18.6) AND (res <= 24.99))then  // normal
    begin
      LB_Class.Caption   := 'Normal ';
      LB_Class.Visible   := true;
     end
  else if ((res >= 25) AND (res <= 29.99)) then        // sobrepeso
    begin
       LB_Class.Caption   := 'Sobrepeso ';
       LB_Class.Visible   := true;
     end
  else if ((res >= 30) AND (res <= 34.99)) then       // obesidade I
    begin
        LB_Class.Caption   := 'Obesidade I ';
        LB_Class.Visible   := true;
     end
  else if ((res >= 35) AND (res <= 39.99)) then       // obesidade II
    begin
      LB_Class.Caption   := 'Obesidade II ';
      LB_Class.Visible   := true;
     end
  else if (res >= 40) then           // obesidade mórbida
    begin
      LB_Class.Caption   := 'Obesidade III ';
      LB_Class.Visible   := true;
     end;



  end;



procedure TFormIMC.ToolButton3Click(Sender: TObject);
begin
limpa;
end;

end.
