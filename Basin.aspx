<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Basin.aspx.cs" Inherits="Default5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">


    
     <title>jQuery accessible accordion</title>
        <meta charset="utf-8">
        <link rel="stylesheet" media="screen" href="ac/gh-pages/css/normalize.css" />
        <link rel="stylesheet" media="screen" href="gh-pages/css/styles.css" />
        <link rel="stylesheet" media="screen" href="ac/gh-pages/css/demo.css" />
        <link rel="stylesheet" media="screen" href="ac/gh-pages/css/rainbow/github.css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT [b0] FROM [basin]"></asp:SqlDataSource>
      <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" SelectCommand="SELECT [b1] FROM [basin]"></asp:SqlDataSource>  
   <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" SelectCommand="SELECT [b2] FROM [basin]"></asp:SqlDataSource>  
     <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" SelectCommand="SELECT [b4] FROM [basin]"></asp:SqlDataSource>  
     <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" SelectCommand="SELECT [b6] FROM [basin]"></asp:SqlDataSource>  
     <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" SelectCommand="SELECT [b7] FROM [basin]"></asp:SqlDataSource>  

           <h2 style="opacity:0.0;">BASIN</h2>
           
            <div class="accordion example-a">
                <h3>Lacivert Yemekleri</h3>
                <div>
                   <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="3" FooterStyle-HorizontalAlign="Center" AlternatingItemStyle-HorizontalAlign="Center">
                       <HeaderStyle HorizontalAlign="Center" />
                       <ItemStyle HorizontalAlign="Center" />
                       <ItemTemplate>
                      <img src="res/<%#Eval("b0") %>" width="300" height="200" style="height: 800px; width: 825px" />
                       </ItemTemplate>
                    </asp:DataList>
                    
                </div>
                <h3>Lacivert'teki Yılbaşı</h3>
                <div>
                    <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2" RepeatColumns="3">
                       <ItemTemplate>
                      <img src="res/<%#Eval("b1") %>" width="300" height="200" style="height: 800px; width: 825px" align="center" />
                       </ItemTemplate>
                    </asp:DataList>
                </div>
                <h3>Yemeğin Adı Lacivert</h3>
                <div>
                 
                      <asp:DataList ID="DataList3" runat="server" DataSourceID="SqlDataSource3" RepeatColumns="3">
                       <ItemTemplate>
                      <img src="res/<%#Eval("b2") %>" width="300" height="200" style="height: 800px; width: 825px" />
                       </ItemTemplate>
                    </asp:DataList>
                </div>


                   <h3>Lacivert 10' uncu Yılını Kutladı</h3>
                <div>
                 
                      <asp:DataList ID="DataList4" runat="server" DataSourceID="SqlDataSource4" RepeatColumns="3">
                       <ItemTemplate>
                      <img src="res/<%#Eval("b4") %>" width="300" height="200" style="height: 800px; width: 825px" />
                       </ItemTemplate>
                    </asp:DataList>
                </div>

                     <h3>Starlar Lacivert' te Buluştu</h3>
                <div>
                 
                      <asp:DataList ID="DataList5" runat="server" DataSourceID="SqlDataSource5" RepeatColumns="3">
                       <ItemTemplate>
                      <img src="res/<%#Eval("b6") %>" width="300" height="200" style="height: 800px; width: 825px" />
                       </ItemTemplate>
                    </asp:DataList>
                </div>

                       <h3>Bu Tariflere Bayılacaksınız !!</h3>
                <div>
                 
                      <asp:DataList ID="DataList6" runat="server" DataSourceID="SqlDataSource6" RepeatColumns="3">
                       <ItemTemplate>
                      <img src="res/<%#Eval("b7") %>" width="300" height="200" style="height: 800px; width: 825px" />
                       </ItemTemplate>
                    </asp:DataList>
                </div>

            </div><!-- .accordion -->

 
        <script src="ac/gh-pages/js/vendor/jquery/1.11.1/jquery.min.js"></script>
        <script src="ac/gh-pages/js/vendor/jquery-smartresize/jquery.debouncedresize.js"></script>
        <script src="ac/gh-pages/js/vendor/rainbow/rainbow.min.js"></script>
        <script src="ac/gh-pages/js/vendor/rainbow/language/generic.js"></script>
        <script src="ac/gh-pages/js/vendor/rainbow/language/javascript.js"></script>
        <script src="ac/jquery.accAccordion.js"></script>

        <script>
            // For demo purpose only
            $(function() {
                $('.example-a').accAccordion();

                $(".example-b").accAccordion({
                    defaultPanel: 0
                });

                $(".example-c").accAccordion({
                    defaultPanel: 0,
                    horizontal: true
                });

                $(".example-d").accAccordion({
                    activeControlHidden: true,
                    defaultPanel: 0,
                    horizontal: true,
                    panelWidth: 50
                });

                (function() {
                    var target = $('.example-e'),
                        buttonContainer = $('<div />'),
                        buttonRebuild = $('<button class="js-btn">Rebuild</button>'),
                        buttonDestroy = $('<button class="js-btn">Destroy</button>')
                        targetInner = $('.example-f'),
                        buttonContainerInner = $('<div />'),
                        buttonRebuildInner = $('<button class="js-btn">Rebuild</button>'),
                        buttonDestroyInner = $('<button class="js-btn">Destroy</button>');

                    target.accAccordion({
                        defaultPanel: 1
                    });

                    buttonRebuild.attr('disabled', 'disabled');

                    buttonRebuild.on('click', function(event) {
                        event.preventDefault();

                        target.data('plugin_accAccordion').rebuild();

                        $(this).attr('disabled', 'disabled');
                        buttonDestroy.removeAttr('disabled');
                    });

                    buttonDestroy.on('click', function(event) {
                        event.preventDefault();

                        target.data('plugin_accAccordion').destroy();

                        $(this).attr('disabled', 'disabled');
                        buttonRebuild.removeAttr('disabled');
                    });

                    buttonContainer.append(buttonDestroy, buttonRebuild);
                    target.after(buttonContainer);

                    // Inner accordion
                    targetInner.accAccordion({
                        activeControlHidden: true,
                        defaultPanel: 0,
                        horizontal: true,
                        panelWidth: 50
                    });

                    buttonRebuildInner.attr('disabled', 'disabled');

                    buttonRebuildInner.on('click', function(event) {
                        event.preventDefault();

                        targetInner.data('plugin_accAccordion').rebuild();

                        $(this).attr('disabled', 'disabled');
                        buttonDestroyInner.removeAttr('disabled');
                    });

                    buttonDestroyInner.on('click', function(event) {
                        event.preventDefault();

                        targetInner.data('plugin_accAccordion').destroy();

                        $(this).attr('disabled', 'disabled');
                        buttonRebuildInner.removeAttr('disabled');
                    });

                    buttonContainerInner.append(buttonDestroyInner, buttonRebuildInner);
                    targetInner.after(buttonContainerInner);

                })();
            });
        </script>

</asp:Content>

