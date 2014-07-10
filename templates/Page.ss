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

        <link rel="icon" sizes="16x16" href="{$ThemeDir}/images/icon-16.png" />
        <link rel="icon" sizes="32x32" href="{$ThemeDir}/images/icon-32.png" />
        <link rel="icon" sizes="48x48" href="{$ThemeDir}/images/icon-48.png" />
        <link rel="icon" sizes="64x64" href="{$ThemeDir}/images/icon-64.png" />
        <link rel="icon" sizes="128x128" href="{$ThemeDir}/images/icon-128.png" />
        <link rel="icon" sizes="196x196" href="{$ThemeDir}/images/icon-196.png" />

        <link rel="apple-touch-icon" href="{$ThemeDir}/images/icon-60.png" />
        <link rel="apple-touch-icon" sizes="76x76" href="{$ThemeDir}/images/icon-76.png">
        <link rel="apple-touch-icon" sizes="120x120" href="{$ThemeDir}/images/icon-120.png">
        <link rel="apple-touch-icon" sizes="152x152" href="{$ThemeDir}/images/icon-152.png">

        <!--[if lt IE 9]>
        <script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

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

    <body class="$ClassName"<% if $i18nScriptDirection %> dir="$i18nScriptDirection"<% end_if %>>
        $SSCompactNavigator

        <div class="wrapper">

            <% include Header %>

            <div class="main clearfix units-row" data-role="main">
                <div class="inner typography">
                    $SessionMessage

                    $Layout
                </div>
            </div>

            <% include Footer %>

        </div>

        <% require javascript('framework/thirdparty/jquery/jquery.js') %>
        <% require javascript('themes/simple/javascript/script.js') %>

    </body>
</html>
