<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Bruch.aspx.cs" Inherits="Default3" %>

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
        
  
 
        

    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString4 %>" ProviderName="<%$ ConnectionStrings:ConnectionString4.ProviderName %>" SelectCommand="SELECT [baslik] FROM [brunch]"></asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString6 %>" ProviderName="<%$ ConnectionStrings:ConnectionString6.ProviderName %>" SelectCommand="SELECT [aciklama] FROM [brunch]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString7 %>" ProviderName="<%$ ConnectionStrings:ConnectionString7.ProviderName %>" SelectCommand="SELECT [aciklama2] FROM [brunch]"></asp:SqlDataSource>
 <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString7 %>" ProviderName="<%$ ConnectionStrings:ConnectionString7.ProviderName %>" SelectCommand="SELECT [kampanya_resim] FROM [brunch]"></asp:SqlDataSource>
 
    <div id="0" >
        <div class="div2" id="2" style="background-color:#f7d3d3; width: 462px; height: 287px; top: -41px; float: left; margin:auto;" >
            
             <asp:DataList ID="DataList5" runat="server" DataSourceID="SqlDataSource4" RepeatColumns="3">
                       <ItemTemplate>
                      <img src="res/<%#Eval("kampanya_resim") %>" width="300" height="200" style="height: 310px; width: 464px" />
                       </ItemTemplate>
                    </asp:DataList>
              
        </div>
        
       <div class="div2" id="1" style="background-color:#0a1a46;  width: 324px; padding:10px;  height: 54px; " > 
             <asp:DataList ID="DataList6" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="3" style="color: #FFFFFF">
                       <ItemTemplate>
                  <asp:Label ID="baslikLabel" runat="server" Text='<%# Eval("baslik") %>' />
                        
                       </ItemTemplate>
                    </asp:DataList>

         </div>
        <div class="div2" id="3" style="background-color: #368994; opacity:0.7; padding:10px; width: 324px;  height: 243px; " > 
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2" RepeatColumns="3" style="color: #FFFFFF">
                       <ItemTemplate>
                  <asp:Label ID="aciklamaLabel" runat="server" Text='<%# Eval("aciklama") %>' />
                           
                       </ItemTemplate>
                    </asp:DataList>
        </div>

      <div id="5" style="background-color: #808080; opacity:0.0; width: 463px;  height: 437px;  float: left;"> </div>
  
      <div class="div2"  id="4" style="background-color:#368994; opacity:0.7; padding:10px; width: 324px;  height: 721px;  ">

          <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource3" RepeatColumns="3" style="color: #FFFFFF">
                       <ItemTemplate>
                  <asp:Label ID="aciklamaLabel" runat="server" Text='<%# Eval("aciklama2") %>' />
                           
                       </ItemTemplate>
                    </asp:DataList>


      </div>

                                                                                          
       
    </div>

</asp:Content>

