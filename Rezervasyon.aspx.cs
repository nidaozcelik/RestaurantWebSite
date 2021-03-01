using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.IO;
using System.Data;

public partial class Default7 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }


    protected void Button2_Click1(object sender, EventArgs e)
    {
        // srting a = date ın gününde kaç tane kayıt var bunu select ile öğren  // selec count(koltuk) where tarih=burdan gelen tarih
        // eğer o gün + o anda verile sayı 20'yi geçerse üzgünüz o gün dolu ( 15 + 6 ) 


            OleDbConnection baglan = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0; Data Source=" + Server.MapPath("~/App_Data/retaurant.accdb") + "");
            baglan.Open();


            OleDbCommand sorgu = new OleDbCommand("insert into rezervasyon_alma(isim , e_posta , telefon , kisi_sayisi, tarih, saat, notu) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox5.Text + "')", baglan);
            sorgu.ExecuteNonQuery();
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";

        Label1.Text = "Rezervasyon İsteğiniz Alınmıştır";
         baglan.Close();


            //Label1.Text = "olmadı"; Label1.Visible = true;
            //throw;
        }

    
}