unit Unit_principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList,
  Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.Ribbon,
  Vcl.RibbonSilverStyleActnCtrls, System.ImageList, Vcl.ImgList,
  Vcl.RibbonObsidianStyleActnCtrls, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFormPrincipal = class(TForm)
    Ribbon1: TRibbon;
    ActionManager1: TActionManager;
    RibbonPage1: TRibbonPage;
    RibbonGroup1: TRibbonGroup;
    RibbonGroup2: TRibbonGroup;
    ImageList_Ribbon: TImageList;
    Action1: TAction;
    P_conf: TPanel;
    Area: TAction;
    procedure Ribbon1HelpButtonClick(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure P_confClick(Sender: TObject);
    procedure AreaExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
///  código totalmente desenvolvido por Matheus Evangelista.
///  ao decorrer de toda programação terão alguns blocos de comentários informando o mesmo.
var
  FormPrincipal: TFormPrincipal;

implementation

uses Unit_Sobre, Unit_IMC, Unit_CalcArea, Unit_Escolha;

{$R *.dfm}

procedure TFormPrincipal.Action1Execute(Sender: TObject);
begin
FormIMC:=TFormIMC.Create(self);
FormIMC.ShowModal;
end;

procedure TFormPrincipal.AreaExecute(Sender: TObject);
begin
FormEscolha:=TFormEscolha.Create(self);
FormEscolha.ShowModal;
end;

procedure TFormPrincipal.P_confClick(Sender: TObject);
begin
ShowMessage('Codificação feita por Matheus Evangelista!!!');
end;

procedure TFormPrincipal.Ribbon1HelpButtonClick(Sender: TObject);
begin
FormSobre:=TFormSobre.Create(self);
FormSobre.ShowModal;
end;

end.
