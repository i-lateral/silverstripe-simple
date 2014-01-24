<!DOCTYPE html>

<!--[if !IE]><!-->
<html lang="$ContentLocale">
<!--<![endif]-->
<!--[if IE 6 ]><html lang="$ContentLocale" class="ie ie6"><![endif]-->
<!--[if IE 7 ]><html lang="$ContentLocale" class="ie ie7"><![endif]-->
<!--[if IE 8 ]><html lang="$ContentLocale" class="ie ie8"><![endif]-->

    <head>
        <% base_tag %>

        <title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

        $MetaTags(false)

        <link rel="shortcut icon" href="{$ThemeDir}/images/favicon.ico" />
        <link rel="apple-touch-icon" href="{$ThemeDir}/images/touch-icon.png" />

        <!--[if lt IE 9]>
        <script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

        <% require themedCSS('kube') %>
        <% require themedCSS('typography') %>
        <% require themedCSS('layout') %>

        <% with $SiteConfig %>
            <style type="text/css">
                <% if $CustomBodyBackground %>
                    body { background-color: $CustomBodyBackground !important; }
                <% end_if %>
                <% if $CustomHeadBackground %>
                    .header { background-color: $CustomHeadBackground !important; }
                <% end_if %>
                <% if $CustomMainBackground %>
                    .main { background-color: $CustomMainBackground !important; }
                <% end_if %>
                <% if $CustomFootBackground %>
                    .footer { background-color: $CustomFootBackground !important; }
                <% end_if %>
                <% if $CustomMaxWidth %>
                    .wrapper { margin: 0 auto; max-width: {$CustomMaxWidth}px !important; }
                <% end_if %>
            </style>
        <% end_with %>
    </head>

    <body class="$ClassName"<% if $i18nScriptDirection %>dir="$i18nScriptDirection"<% end_if %>>

    <div class="wrapper">
        <% include Header %>

        <div class="main clearfix units-row" data-role="main">
            <div class="inner typography">
                $FlashMessage

                $Layout
            </div>
        </div>

        <% include Footer %>
    </div>

    <% require javascript('framework/thirdparty/jquery/jquery.js') %>
    <%-- Please move: Theme javascript (below) should be moved to mysite/code/page.php  --%>
    <script type="text/javascript" src="{$ThemeDir}/javascript/script.js"></script>

    </body>
</html>
