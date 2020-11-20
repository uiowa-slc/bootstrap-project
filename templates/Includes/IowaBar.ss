<% include UiowaAlert %>
<div class="iowa-bar iowa-bar--narrow iowa-bar--dark-header" data-uids-header>
    <div class="iowa-bar__container <% if $SiteConfig.UidsContainerType %>$UidsContainerType<% else %>container-xl<% end_if %>">
        <% include IowaBarLayout %>
    </div>
</div>
