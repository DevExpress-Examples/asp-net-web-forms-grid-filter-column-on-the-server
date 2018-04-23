﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web.ASPxGridView;

public partial class _Default : System.Web.UI.Page {
    protected void Page_Load (object sender, EventArgs e) {

    }
    protected void grid_CustomCallback (object sender, ASPxGridViewCustomCallbackEventArgs e) {
        (grid.Columns["CategoryName"] as GridViewDataColumn).AutoFilterBy(txtFilter.Text);
    }
}
