<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Rezervasyon.aspx.cs" Inherits="Default7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">


        <style type="text/css">
        .newStyle2 {
            color: #000000;
        }
 .div2 {
	float: left;
	height: 200px;
	width: 300px;
	
}
        #6
         {
            clear:both;
        }
           
 
        

            
            #Submit1 {
                width: 230px;
            }
        
  
 
        

            .auto-style1 {
                width: 100%;
            }
        
  
 
        

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString8 %>" ProviderName="<%$ ConnectionStrings:ConnectionString8.ProviderName %>" SelectCommand="SELECT [ana_resim] FROM [rezervasyon]"></asp:SqlDataSource>

       <div id="0" >
        <div class="div2" id="2" style="background-color:#f7d3d3;  width: 428px; height: 300px; top: -41px; float: left; margin:auto;" >
        
             <asp:DataList ID="DataList5" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="3"  >
                       <ItemTemplate>
                           <asp:ImageMap ID="ImageMap1" runat="server" ImageUrl="~/res/00.jpg" Width="428" Height="300" >
                            <asp:CircleHotSpot NavigateUrl="detay.aspx" Radius="650" X="50" Y="150" />
               </asp:ImageMap>
                       </ItemTemplate>
                    </asp:DataList>
              

        
             </div>
     </div>
  
      <div class="div2"  id="4" style="background-color:#368994; opacity:0.7; padding:10px; width: 294px;  height: 620px; margin-top: 0px;">
          <table align="center" cellpadding="4" class="auto-style1">
              <tr>
                  <td style="text-align: left; font-size: medium; color: #FFFFFF;">İsim *</td>
              </tr>
              <tr>
                  <td>
                      <asp:TextBox ID="TextBox1" runat="server" Width="271px"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td style="text-align: left; font-size: medium; color: #FFFFFF;">E-Posta *</td>
              </tr>
              <tr>
                  <td>
                      <asp:TextBox ID="TextBox2" runat="server" Width="271px"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td style="text-align: left; font-size: medium; color: #FFFFFF;">Telefon Numaranız *</td>
              </tr>
              <tr>
                  <td>
                      <asp:TextBox ID="TextBox3" runat="server" Width="271px"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td style="text-align: left; font-size: medium; color: #FFFFFF;">Katılımcı Sayısı </td>
              </tr>
              <tr>
                  <td>
                      <asp:TextBox ID="TextBox4" runat="server" Width="271px"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td style="text-align: left; font-size: medium; color: #FFFFFF;">Rezervasyon Tarihi *</td>
              </tr>
              <tr>
                  <td>
                      <asp:TextBox ID="TextBox6" runat="server" Width="271px"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td style="text-align: left; font-size: medium; color: #FFFFFF;">Rezervasyon Saati *</td>
              </tr>
              <tr>
                  <td>
                      <asp:TextBox ID="TextBox7" runat="server" Width="271px"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td style="text-align: left; font-size: medium; color: #FFFFFF;">Not Ekleyin</td>
              </tr>
              <tr>
                  <td>
                      <asp:TextBox ID="TextBox5" runat="server" Width="268px" Height="95px" TextMode="MultiLine"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td style="text-align: left">
                      <asp:Button ID="Button2" runat="server" Text="Gönder" OnClick="Button2_Click1" />
                      <asp:Label ID="Label1" runat="server"></asp:Label>
                  </td>
              </tr>
          </table>
      </div>

           
      <div id="5" style="background-color: #808080; opacity:0.0; width: 493px;  height: 437px;  float: left;"> 
        
                                                                                     
       
    </div>
</asp:Content>

