<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="DevExpress.Web.v17.1, Version=17.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
               <dx:ASPxGridView ID="MasterGrid" runat="server" DataSourceID="Categories" KeyFieldName="CategoryID" 
                 AutoGenerateColumns="false">
                <Columns>
                    <dx:GridViewDataTextColumn FieldName="CategoryID"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="CategoryName"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Description"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="ProductCount" Visible="false"></dx:GridViewDataTextColumn>
                </Columns>
                <Templates>
                    <DetailRow>
                        <dx:ASPxGridView ID="detailGrid" runat="server" DataSourceID="Products"  OnDataBound="detailGrid_DataBound"
                          KeyFieldName="ProductID" OnBeforePerformDataSelect="detailGrid_BeforePerformDataSelect">
                            <Columns>
                                <dx:GridViewDataTextColumn FieldName="ProductID"></dx:GridViewDataTextColumn>
                                 <dx:GridViewDataTextColumn FieldName="ProductName"></dx:GridViewDataTextColumn>
                                 <dx:GridViewDataTextColumn FieldName="QuantityPerUnit"></dx:GridViewDataTextColumn>
                            </Columns>
                        </dx:ASPxGridView>
                    </DetailRow>
                </Templates>
                <SettingsDetail ShowDetailRow="true" AllowOnlyOneMasterRowExpanded="true" ExportMode="All" />
            </dx:ASPxGridView>

            <dx:ASPxGridViewExporter ID="ASPxGridViewExporter1" runat="server" GridViewID="masterGrid">
            </dx:ASPxGridViewExporter>

            <dx:ASPxButton ID="ASPxButton1" runat="server" Text="Export" OnClick="ASPxButton1_Click"></dx:ASPxButton>
        <asp:AccessDataSource ID="Categories" runat="server" DataFile="~/App_Data/nwind.mdb"
            SelectCommand="SELECT [CategoryID],[CategoryName],[Description],(SELECT COUNT(ProductID) from Products p where c.CategoryID = p.CategoryID) as ProductCount FROM Categories c;"></asp:AccessDataSource>
        <asp:AccessDataSource ID="Products" runat="server" DataFile="~/App_Data/nwind.mdb" SelectCommand="SELECT * FROM [Products] WHERE [CategoryID]=@CategoryID">
            <SelectParameters>
                <asp:SessionParameter Name="CategoryID" SessionField="CategoryID" Type="Int32" />
            </SelectParameters>
        </asp:AccessDataSource>
    </form>
</body>
</html>
