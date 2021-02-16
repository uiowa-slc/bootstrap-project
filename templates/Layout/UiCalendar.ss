<% include Header %>

<main class="container-xl my-5">
	<div class="row justify-content-center">
		<div class="col-lg-7">
            <%-- $Breadcrumbs --%>
			<article id="content">
            <% if $action != "index" %>
                <h1>$FilterHeader</h1>
            <% else %>
                <h1>$Title</h1>
            <% end_if %>

		       $Content

                <% if $action == "index" %>
                    <% if $EventList %>
                        <% loop $EventList %>
                            <% include EventCard %>
                        <% end_loop %>
                    <% else %>
                          <p>No events are currently listed. Please check back soon.</p>
                    <% end_if %><!-- end upcoming shows if statement -->
                <% else_if $FilterEventList.Count > 0 %>
                    <% loop $FilterEventList %>
                        <% include EventCard %>
                    <% end_loop %> <%-- end loop Upcoming Events --%>

                <% else %>
                    <p class="text-center">There are currently no events listed in this category.</p>
                <% end_if %>

			</article>
			$Form
			$PageComments

		</div>
		<% if $Menu(2) %>
            <% include SideBar %>
		<% end_if %>
	</div>
</main>

