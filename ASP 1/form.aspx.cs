using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            Validate();
            if (IsValid)
            {
                string name = nameTextBox.Text;
                string lastName = lastNameTextBox.Text;
                string birthDate = TextBox1.Text;
                string email = emailTextBox.Text;
                string phone = phoneTextBox.Text;
                string adress = adressTextBox.Text;
                string postalCode = codeTextBox.Text;
                string city = cityTextBox.Text;

                output.Text = "Otrzymane dane:<br/>";
                output.Text += String.Format("Imię: {0}{1}Nazwisko:{2}{1}Data urodzenia:{3}{1}Email:{4}{1}Telefon:{5}{1}Adres:{6}{1}Kod pocztowy:{7}{1}Misto:{8}{1}",
                    name,"<br/>",lastName,birthDate,email,phone,adress,postalCode,city);
                output.Visible = true;
            }
        }
    }

    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");
    }

  
}