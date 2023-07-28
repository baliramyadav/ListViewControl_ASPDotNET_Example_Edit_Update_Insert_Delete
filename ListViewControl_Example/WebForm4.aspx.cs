using ListViewControl_Examplee;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ListViewControl_Example
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        Customer obj = new Customer();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
            }
        }
        private void LoadData()
        {
            ListView1.DataSource = obj.Customer_Select(null,null);
            ListView1.DataBind();
        }

        protected void ListView1_ItemEditing(object sender, ListViewEditEventArgs e)
        {
            ListView1.EditIndex = e.NewEditIndex;
            LoadData();
        }

        protected void ListView1_ItemCanceling(object sender, ListViewCancelEventArgs e)
        {
            ListView1.EditIndex = -1;
            LoadData();
        }

        protected void ListView1_ItemInserting(object sender, ListViewInsertEventArgs e)
        {
            string Name = ((TextBox)e.Item.FindControl("txtName")).Text;
            decimal Balance = decimal.Parse(((TextBox)e.Item.FindControl("txtBalance")).Text);
            string City = ((TextBox)e.Item.FindControl("txtCity")).Text;
            bool Status = ((CheckBox)e.Item.FindControl("cbStatus")).Checked;
            int? Custid = null;
            if(obj.Customer_Insert(Name,Balance,City,Status,ref Custid)>0)
            {
                LoadData();
            }
            else
            {
                Response.Write("<script>alert('Failed inserting record into the table.')</script>");
            }

        }

        protected void ListView1_ItemUpdating(object sender, ListViewUpdateEventArgs e)
        {
            int Custid = (int)e.Keys["Custid"];
            string Name = ((TextBox)ListView1.Items[e.ItemIndex].FindControl("txtName")).Text;
            decimal Balance = decimal.Parse(((TextBox)ListView1.Items[e.ItemIndex].FindControl("txtBalance")).Text);
            string City = ((TextBox)ListView1.Items[e.ItemIndex].FindControl("txtCity")).Text;
            if (obj.Customer_Update(Custid, Name, Balance, City) > 0)
            {
                ListView1.EditIndex = -1; LoadData();
            }
            else
                Response.Write("<script>alert('Failed updating record in the table.')</script>");

        }

        protected void ListView1_ItemDeleting(object sender, ListViewDeleteEventArgs e)
        {
            int Custid = (int)e.Keys["Custid"];
            if (obj.Customer_Delete(Custid) > 0)
                LoadData();
            else
                Response.Write("<script>alert('Failed deleting record from the table.')</script>");

        }
    }
}