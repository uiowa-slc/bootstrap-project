<!doctype html>
<html lang="en" class="no-js">
    <head>
        $GlobalAnalytics
        <% base_tag %>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        $MetaTags(false)
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>$Title | The University of Iowa</title>
        <!-- Disable tap highlight on IE -->
        <meta name="msapplication-tap-highlight" content="no">
        <% include Favicons %>
        $GoogleFonts
        $TypeKitScript

        <% require css("themes/bootstrap/dist/styles/main.css") %>
    </head>
    <body class="{$ClassName}">

    <div class="d-flex justify-content-center align-items-center vh-100">
        <div>
            $Content
        </div>
    </div>
    $Analytics
  </body>
</html>
