<%-- Loop is all on one line to prevent whitespace bug in older versions of IE --%>
<nav aria-label="breadcrumb">
    <% if $Pages %>
        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="{$BaseUrl}">Home</a>
            </li>
			<% loop $Pages %>
				<% if $Last %>
					<li class="breadcrumb-item active" aria-current="page">$MenuTitle.XML</li>
				<% else %>
					<li class="breadcrumb-item">
						<% if not Up.Unlinked %><a href="$Link"><% end_if %>
						$MenuTitle.XML
						<% if not Up.Unlinked %></a><% end_if %>
					</li>
				<% end_if %>
			<% end_loop %>
		</ol>
	<% end_if %>
</nav>
