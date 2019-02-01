using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Hashtable books = new Hashtable();
            Hashtable movies = new Hashtable();
            Hashtable CDs = new Hashtable();
            Hashtable others = new Hashtable();

            books.Add("Harry Potter i Kamień Filozoficzny - 24.99", 24.99);
            books.Add("Harry Potter i Komnata Tajemnic - 24.99", 24.99);
            books.Add("Harry Potter i Więzień Azkabanu - 24.99", 24.99);
            books.Add("Harry Potter i Czara Ognia - 24.99", 24.99);
            books.Add("Harry Potter i Zakon Feniksa - 24.99", 24.99);
            books.Add("Harry Potter i Książe Półkrwi - 24.99", 24.99);
            books.Add("Harry Potter i Insygnia Śmierci - 24.99", 24.99);

            movies.Add("Star Wars Episode I The Phantom Menace - 34.99", 34.99);
            movies.Add("Star Wars Episode II Attack of the Clones - 34.99", 34.99);
            movies.Add("Star Wars Episode III Revenge of the Sith - 34.99", 34.99);
            movies.Add("Star Wars Episode IV A New Hope - 34.99", 34.99);
            movies.Add("Star Wars Episode V The Empire Strikes Back - 34.99", 34.99);
            movies.Add("Star Wars Episode VI Return of the Jedi - 34.99", 34.99);
            movies.Add("Star Wars Episode VII The Force Awakens - 34.99", 34.99);
            movies.Add("Star Wars Episode VIII The Last Jedi - 34.99", 34.99);

            CDs.Add("Michael Jackson - Thriller - 40.00", 40.00);
            CDs.Add("Eagles - Their Greatest Hits - 40.00", 40.00);
            CDs.Add("AC/DC - Back in Black - 40.00", 40.00);
            CDs.Add("Pink Floyd - The Dark Side of the Moon - 40.00", 40.00);
            CDs.Add("Whitney Houston - The Bodygourd - 40.00", 40.00);

            others.Add("Zeszyt A5 - 2.49", 2.49);
            others.Add("Zeszyt A4 - 3.99", 3.99);
            others.Add("Długopis - 1.99", 1.99);
            others.Add("Ołówek - 1.49", 1.49);
           
            bookList.DataSource = books;
            bookList.DataValueField = "Value";
            bookList.DataTextField = "Key";
            bookList.DataBind();

            movieList.DataSource = movies;
            movieList.DataValueField = "Value";
            movieList.DataTextField = "Key";
            movieList.DataBind();

            CdList.DataSource = CDs;
            CdList.DataValueField = "Value";
            CdList.DataTextField = "Key";
            CdList.DataBind();

            otherList.DataSource = others;
            otherList.DataValueField = "Value";
            otherList.DataTextField = "Key";
            otherList.DataBind();
            
        }

        switch (RadioButtonList1.SelectedValue)
        {
            case "Książki":
                bookList.Visible = true;
                movieList.Visible = false;
                CdList.Visible = false;
                otherList.Visible = false;
                break;

            case "Filmy":
                movieList.Visible = true;
                bookList.Visible = false;
                CdList.Visible = false;
                otherList.Visible = false;
                break;

            case "Płyty":
                CdList.Visible = true;
                movieList.Visible = false;
                bookList.Visible = false;
                otherList.Visible = false;
                break;

            case "Inne":
                otherList.Visible = true;
                CdList.Visible = false;
                movieList.Visible = false;
                bookList.Visible = false;
                break;
        }

        selectedCategory.Text = RadioButtonList1.SelectedValue +":";

        counter.Text = "Wybranych produktów: " + Session.Count;
    }

    protected void Submit_Click(object sender, EventArgs e)
    {
        
        foreach (ListItem item in bookList.Items)
        {
            if (item.Selected)
                Session.Add(item.Text, item.Value);
        }
        foreach (ListItem item in movieList.Items)
        {
            if (item.Selected)
                Session.Add(item.Text, item.Value);
        }
        foreach (ListItem item in CdList.Items)
        {
            if (item.Selected)
                Session.Add(item.Text, item.Value);
        }
        foreach (ListItem item in otherList.Items)
        {
            if (item.Selected)
                Session.Add(item.Text, item.Value);
            
        }
       
        counter.Text = "Wybranych produktów: " + Session.Count;

    }

    protected void cart_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("cart.aspx"); 
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Clear();
        counter.Text = "Wybranych produktów: " + Session.Count;
    }
}