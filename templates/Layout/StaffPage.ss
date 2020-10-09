<% include Header %>


<div class="container">
    <div class="row">
        <div class="<% if not $HideLinksToStaffPages %>col-lg-7 col-xl-8 <% else %>col-lg-12<% end_if %>" role="main">
                <h1>$Title</h1>
                <% if $Photo %>
                    <!-- 0 equals square, 1 equals portrait, and 2 equals landscape -->
                    <% if $Photo.Orientation == 0 || $Photo.Orientation == 1 %>
                        <img src="$Photo.ScaleMaxWidth(400).URL" alt="$Title" role="presentation" class="float-md-right mb-3 ml-md-3 img-thumbnail img-fluid rounded-0">
                    <% else %>
                        <img src="$Photo.ScaleMaxWidth(900).URL" alt="$Title" role="presentation" class="mb-3 img-thumbnail img-fluid rounded-0">
                    <% end_if %>
                <% end_if %>


                <% if $Position %>
                    <h4>$Position</h4>
                <% end_if %>
                <ul>
                    <% if $EmailAddress %><li><strong>Email:</strong> <a href="mailto:$EmailAddress">$EmailAddress</a></li><% end_if %>
                    <% if $Phone %><li><strong>Phone:</strong> $Phone</li><% end_if %>
                    <% if $DepartmentName %>
                        <li>
                            <% if $DepartmentURL %>
                                <a href="$DepartmentURL" target="_blank">Department website</a>
                            <% else %>
                                $DepartmentName
                            <% end_if %>
                        </li>
                    <% end_if %>
                    <% if $OtherWebsiteLink %>
                        <li><a href="$OtherWebsiteLink" target="_blank">
                            <% if $OtherWebsiteLabel %>
                                $OtherWebsiteLabel
                            <% else %>
                                Website
                            <% end_if %>
                        </a></li>
                    <% end_if %>
                </ul>
                <div class="content">$Content</div>
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


