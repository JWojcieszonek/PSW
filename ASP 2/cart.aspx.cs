using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    String currentSession = "Koszyk jest pusty";
    protected void Page_Load(object sender, EventArgs e)
    {
        double shipping=0.0;
        double sum = 0.0;

        if (Session.Count>0 )
        {

            switch (RadioButtonList1.SelectedValue)
            {
                case "0":
                    shipping = 0.0;
                    break;
                case "7":
                    shipping = 7.0;
                    break;
                case "15":
                    shipping = 15.0;
                    break;
            }

            for (int i = 0; i < Session.Count; i++)
            {
                currentSession += Session.Keys[i] + "<br/>";

                sum += double.Parse((string)Session[i]);

                //sum +=(double) prices[Session.Keys[i]]  ;
            }
            Button2.Enabled = true;
        }
        Label1.Text = currentSession;
        Label2.Text = "Suma: " + sum.ToString() + " PLN";
        Label3.Text = "Całkowity koszt zamówienia: " + (sum + shipping).ToString()+"PLN";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("shop.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("confirm.aspx"); 
    }
}