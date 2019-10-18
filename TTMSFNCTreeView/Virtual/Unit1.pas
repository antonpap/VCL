unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VCL.TMSFNCTypes, VCL.TMSFNCUtils, VCL.TMSFNCGraphics,
  VCL.TMSFNCGraphicsTypes, VCL.TMSFNCCustomControl, VCL.TMSFNCTreeViewBase, VCL.TMSFNCTreeViewData,
  VCL.TMSFNCCustomTreeView, VCL.TMSFNCTreeView;

type
  TFrmMain = class(TForm)
    Tree: TTMSFNCTreeView;
    procedure FormShow(Sender: TObject);
    procedure TreeGetNumberOfNodes(Sender: TObject; ANode: TTMSFNCTreeViewVirtualNode;
      var ANumberOfNodes: Integer);
    procedure TreeGetNodeText(Sender: TObject; ANode: TTMSFNCTreeViewVirtualNode; AColumn: Integer;
      AMode: TTMSFNCTreeViewNodeTextMode; var AText: string);
    procedure TreeGetNodeTextColor(Sender: TObject; ANode: TTMSFNCTreeViewVirtualNode;
      AColumn: Integer; var ATextColor: TColor);
    procedure TreeGetNodeCheckType(Sender: TObject; ANode: TTMSFNCTreeViewVirtualNode;
      AColumn: Integer; var ACheckType: TTMSFNCTreeViewNodeCheckType);
    procedure TreeDblClick(Sender: TObject);
  private
    { Private declarations }
    procedure BuildTreeview;

    procedure ShowInfo;
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

procedure TFrmMain.BuildTreeview;
begin
  Tree.BeginUpdate;
  Tree.Clear;
  Tree.Columns.Add.Text := 'Column 1';
  Tree.Columns.Add.Text := 'Column 2';
  Tree.Columns.Add.Text := 'Column 3';
  Tree.Columns.Add.Text := 'Column 4';
  Tree.EndUpdate;
end;

procedure TFrmMain.FormShow(Sender: TObject);
begin
  BuildTreeview;
end;

procedure TFrmMain.ShowInfo;
begin
  if Assigned( Tree.SelectedVirtualNode ) then
  begin
    if Tree.SelectedVirtualNode.CheckStates[2] then
    begin
      ShowMessage( 'checked' );
    end;

  end;
end;

procedure TFrmMain.TreeDblClick(Sender: TObject);
begin
  ShowInfo;
end;

procedure TFrmMain.TreeGetNodeCheckType(Sender: TObject; ANode: TTMSFNCTreeViewVirtualNode;
  AColumn: Integer; var ACheckType: TTMSFNCTreeViewNodeCheckType);
begin
  if ANode.Level = 1 then
  begin
    if AColumn = 2 then
    begin
      ACheckType := tvntRadioButton;
    end;
  end;
end;

procedure TFrmMain.TreeGetNodeText(Sender: TObject; ANode: TTMSFNCTreeViewVirtualNode;
  AColumn: Integer; AMode: TTMSFNCTreeViewNodeTextMode; var AText: string);
begin
  AText := Format( '%d: %d %d', [ ANode.Level, AColumn, ANode.Index ] );
end;

procedure TFrmMain.TreeGetNodeTextColor(Sender: TObject; ANode: TTMSFNCTreeViewVirtualNode;
  AColumn: Integer; var ATextColor: TColor);
begin
  if ANode.Level = 1 then
  begin
    if AColumn = 2 then
    begin
      ATextColor := clRed;
    end;
  end;
end;

procedure TFrmMain.TreeGetNumberOfNodes(Sender: TObject; ANode: TTMSFNCTreeViewVirtualNode;
  var ANumberOfNodes: Integer);
begin
  if ANode.Level = -1 then
  begin
    ANumberOfNodes := 10;
  end;

  if ANode.Level = 0 then
  begin
    ANumberOfNodes := 3;
  end;
end;

end.
