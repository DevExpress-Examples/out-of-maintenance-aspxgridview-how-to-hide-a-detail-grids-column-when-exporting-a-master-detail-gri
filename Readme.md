<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128534352/16.1.4%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T546454)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/Default.aspx.vb))
<!-- default file list end -->
# ASPxGridView - How to hide a detail grid's column when exporting a master-detail grid
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/t546454/)**
<!-- run online end -->


<p>This example illustrates how to make a detail grid's column visible in the master detail grid on the page and hide it when exporting the master grid.<br><br>To accomplish this task, it's necessary to set the corresponding detail grid column's <a href="https://documentation.devexpress.com/AspNet/DevExpress.Web.WebColumnBase.Visible.property">Visible</a> property to false in the detail grid's <a href="https://documentation.devexpress.com/AspNet/DevExpress.Web.ASPxDataWebControlBase.DataBound.event">DataBound</a> event handler only when exporting is performed. For this purpose, set a custom flag variable that indicates that the export is performed in your Export button's Click event handler. Then, check this variable's value in the detail grid's DataBound event handler and hide the required column if it's equal to true.</p>

<br/>


