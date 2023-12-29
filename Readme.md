<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/Default.aspx.vb))
<!-- default file list end -->
# ASPxGridView - How to hide a detail grid's column when exporting a master-detail grid


<p>This example illustrates how to make a detail grid's column visible in the master detail grid on the page and hide it when exporting the master grid.<br><br>To accomplish this task, it's necessary to set the corresponding detail grid column's <a href="https://documentation.devexpress.com/AspNet/DevExpress.Web.WebColumnBase.Visible.property">Visible</a> property to false in the detail grid's <a href="https://documentation.devexpress.com/AspNet/DevExpress.Web.ASPxDataWebControlBase.DataBound.event">DataBound</a> event handler only when exporting is performed. For this purpose, set a custom flag variable that indicates that the export is performed in your Export button's Click event handler. Then, check this variable's value in the detail grid's DataBound event handler and hide the required column if it's equal to true.</p>

<br/>


