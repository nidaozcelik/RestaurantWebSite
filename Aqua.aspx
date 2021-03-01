<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Aqua.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <meta charset="utf-8">
      
      <title>Craftyslide - A tiny jQuery slideshow plugin</title>
      
      <link rel="stylesheet" href="sli/css/craftyslide.css" />


    <style type="text/css">
        .auto-style6 {
            width: 100%;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   	<table align="center" cellpadding="4" class="auto-style6" style="width: 600px;">
     <tr>
         <td style="font-family: Arial; color: #660033; font-weight: bold; font-size: 22px;">&nbsp;</td>
     </tr>
     </table><div id="slideshow" style="width: 566px">
<ul>
 
  <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource1"> 
         <ItemTemplate> 
         
                 
               
                  <li>     
                     <img width="100" height="300" src="res/<%#Eval ("resim") %>" />
</li>
                  
              </a>   
         
</ItemTemplate>
                    </asp:Repeater>
           	   
     </ul> </div>   

  


  
         
   <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
    <script src="sli/js/craftyslide.min.js"></script>
      
      <script>
        $("#slideshow").craftyslide();
      </script> 
  
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString11 %>" ProviderName="<%$ ConnectionStrings:ConnectionString11.ProviderName %>" SelectCommand="SELECT [resim], [aciklama] FROM [sli] where manset=true ORDER BY [Kimlik] DESC"></asp:SqlDataSource>
  

</asp:Content>

