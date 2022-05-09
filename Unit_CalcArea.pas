unit Unit_CalcArea;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, System.ImageList,
  Vcl.ImgList, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.Buttons;

type
  TFormCalcArea = class(TForm)
    ToolBar1: TToolBar;
    TButton_Calc: TToolButton;
    ToolButton2: TToolButton;
    TButton_Limpa: TToolButton;
    ImageList_TBar: TImageList;
    ToolButton4: TToolButton;
    PageControl1: TPageControl;
    Tab_Tri: TTabSheet;
    Tab_Qua: TTabSheet;
    Tab_Ret: TTabSheet;
    Tab_Circ: TTabSheet;
    Image1: TImage;
    GBox_Tri: TGroupBox;
    Edit_Alt: TEdit;
    Edit_Base: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    GBox_RTri: TGroupBox;
    SpeedButton1: TSpeedButton;
    Lb_Rtri: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure TButton_LimpaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure limpa;
    procedure areatri;
    procedure triangulo;
    procedure quadrado;
    procedure retangulo;
    procedure circulo;
  end;

var
  FormCalcArea: TFormCalcArea;


implementation

uses Unit_Escolha;

{$R *.dfm}

procedure TFormCalcArea.triangulo;
begin
FormCalcArea.Tab_Tri.TabVisible:= True;
end;

procedure TFormCalcArea.quadrado;
begin
FormCalcArea.Tab_Qua.TabVisible:=true;
end;

procedure TFormCalcArea.retangulo;
begin
FormCalcArea.Tab_Ret.TabVisible:=true;
end;

procedure TFormCalcArea.circulo;
begin
FormCalcArea.Tab_Circ.TabVisible:=true;
end;


procedure TFormCalcArea.FormCreate(Sender: TObject);
begin
   case FormEscolha.ComboBox1.ItemIndex of
    0: triangulo;
    1: quadrado;
   end;


limpa;
end;

procedure TFormCalcArea.limpa;
begin
Edit_Alt.Text:='';
Edit_Base.Text:='';
Lb_Rtri.Caption:='';
end;

procedure TFormCalcArea.SpeedButton1Click(Sender: TObject);
begin
areatri;
end;

procedure TFormCalcArea.TButton_LimpaClick(Sender: TObject);
begin
limpa;
end;

procedure TFormCalcArea.areatri;
var base,alt,area:real;

begin
base:= StrToFloat(Edit_Base.text);
alt := StrToFloat(Edit_Alt.Text);


area:=(alt*base)/2;

Lb_Rtri.Caption:= FormatFloat('#,##0.00',area);;




end;


end.
