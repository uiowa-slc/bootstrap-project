<% include Header %>


<div class="container">
    <div class="row">
        <div class=" <% if not $HideLinksToStaffPages %>col-lg-8<% else %>col-lg-12<% end_if %>" role="main">
            <article>
                <h1>$Title</h1>
                $Content
                <div class="stafflist">
                    <% if $Teams %>
                        <% loop $Teams %>
                            <h3 class="stafflist__title">$Title</h3>
                            <ul class="stafflist__list list-unstyled mb-5">
                                <% if $Up.SortLastName %>
                                    <% loop $SortedStaffPages.Sort(LastName, ASC) %>
                                        <% include StaffPageListItem %>
                                    <% end_loop %>
                                <% else %>
                                    <% loop $SortedStaffPages %>
                                        <% include StaffPageListItem %>
                                    <% end_loop %>
                                <% end_if %>
                            </ul>
                        <% end_loop %>
                    <% else %>
                    <%-- end if teams --%>
                    <ul class="stafflist__list list-unstyled mb-5">
                        <% loop $Children %>
                            <% include StaffPageListItem %>
                        <% end_loop %>
                    </ul>
                    <% end_if %>
                </div>
            </article>
            $Form
            $PageComments

        </div>
        <% if not $HideLinksToStaffPages %>
            <% if $Menu(2) %>
                <% include SideBar %>
            <% end_if %>
        <% end_if %>
    </div>
</div>



