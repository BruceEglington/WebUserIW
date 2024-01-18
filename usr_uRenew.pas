unit usr_uRenew;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWTypes,
  Controls, Forms, IWCompLabel, IWBaseControl,
  IWControl, IWCompEdit, IWCompButton, IWCompMemo,
  IWCompRectangle, IWHTMLControls,
  IWVCLBaseControl, IWBaseHTMLControl, IWDBStdCtrls, IWCompListbox;

type
  TISFRenew = class(TIWAppForm)
    rectMain: TIWRectangle;
    IWLabel2: TIWLabel;
    rectLeft: TIWRectangle;
    rectTitle: TIWRectangle;
    lblSignIn: TIWLabel;
    IWLabel1: TIWLabel;
    IWLabel4: TIWLabel;
    IWLabel3: TIWLabel;
    IWLabel5: TIWLabel;
    IWLabel6: TIWLabel;
    IWLabel7: TIWLabel;
    IWLabel8: TIWLabel;
    iwDBSoftwareID: TIWDBLabel;
    iwDBUserID: TIWDBLabel;
    iwDBAccountID: TIWDBLabel;
    iwDBAccountName: TIWDBLabel;
    iwDBDateStarted: TIWDBLabel;
    iwDBValidUntil: TIWDBLabel;
    iwlSubscription: TIWLabel;
    iwcbMembershipType: TIWComboBox;
    IWMemo2: TIWMemo;
    IWLabel9: TIWLabel;
    IWLabel10: TIWLabel;
    IWDBLabel1: TIWDBLabel;
    IWLabel11: TIWLabel;
    IWLabel12: TIWLabel;
    procedure IWAppFormCreate(Sender: TObject);
    procedure iwcbMembershipTypeChange(Sender: TObject);
  protected
    tmpMemTypeID : string;
    tmpSubscription : double;
  public
  end;

implementation
{$R *.dfm}

uses
  usr_uDBInterface, ServerController, usrIW_dm, DB_List_Combo;

procedure TISFRenew.IWAppFormCreate(Sender: TObject);
var
  tmpStr : string;
begin
  dmUser.qThisProgram.Close;
  dmUser.qThisProgram.ParamByName('SoftwareID').AsString := UserSession.ThisProgram;
  dmUser.cdsThisProgram.Close;
  dmUser.cdsThisProgram.Open;
  dmUser.qUserAccount.Close;
  dmUser.qUserAccount.ParamByName('USERID').AsString := UserSession.UserID;
  dmUser.qUserAccount.ParamByName('SoftwareID').AsString := UserSession.ThisProgram;
  dmUser.cdsUserAccount.Close;
  dmUser.cdsUserAccount.Open;
  tmpStr := Trim(dmUser.cdsUserAccountACCOUNTID.AsString);
  dmUser.qAccounts.Close;
  dmUser.qAccounts.ParamByName('AccountID').AsString := tmpStr;
  dmUser.cdsAccounts.Close;
  dmUser.cdsAccounts.Open;
  tmpStr := Trim(dmUser.cdsAccountsMEMTYPEID.AsString);
  tmpMemTypeID := tmpStr;
  dmUser.qMemberType.Close;
  dmUser.qMemberType.ParamByName('MemTypeID').AsString := tmpStr;
  dmUser.cdsMemberType.Close;
  dmUser.cdsMemberType.Open;
  iwlSubscription.Caption := 'USD '+FormatFloat('###0.00',dmUser.cdsMemberTypeSUBSCRIPTION.AsFloat);
  dmUser.qMemberTypes.Close;
  dmUser.cdsMemberTypes.Close;
  dmUser.cdsMemberTypes.Open;
  tmpMemTypeID := tmpStr;
  UpdateComboBoxValue(iwcbMembershipType,dmUser.cdsMemberTypes,'MEMBERTYPE','MEMTYPEID',tmpMemTypeID);
end;

procedure TISFRenew.iwcbMembershipTypeChange(Sender: TObject);
begin
  GetComboBoxValue(iwcbMembershipType,dmUser.cdsMemberTypes,'MEMBERTYPE','MEMTYPEID',tmpMemTypeID);
  dmUser.cdsMemberTypes.Locate('MEMTYPEID',tmpMemTypeID,[]);
  tmpSubscription := dmUser.cdsMemberTypesSUBSCRIPTION.AsFloat;
  iwlSubscription.Caption := 'USD '+FormatFloat('###0.00',tmpSubscription);
  iwlSubscription.Refresh;
  {
  ArcIWPayPalItemPurchase1.ItemID := UserSession.ThisProgram;
  ArcIWPayPalItemPurchase1.ItemText := UserSession.UserID + ' - ' + tmpMemTypeID;
  ArcIWPayPalItemPurchase1.ItemAmount := tmpSubscription;
  }
end;

end.
