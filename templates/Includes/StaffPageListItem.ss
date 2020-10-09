<li class="stafflist__item card rounded-0">
    <% if not $Parent.HideLinksToStaffPages && not $HidePageLink %>

        <% if $Photo %>
            <% if $Parent.PhotoOrientation == "Portrait" %>
                <a href="$Link">
                    <img src="$Photo.Fill(234,350).URL" alt="Photograph of $FirstName $LastName" class="card-img-top" loading="lazy" />
                </a>
            <% else %>
                <a href="$Link">
                    <img src="$Photo.Fill(350,234).URL" alt="Photograph of $FirstName $LastName" class="card-img-top" loading="lazy" />
                </a>
            <% end_if %>
        <% else %>
            <% if $Parent.PhotoOrientation == "Portrait" %>
                <a href="$Link">
                    <img src="$resourceURL('vendor/md/bootstrap-project/client/images/staff-placeholder-portrait.png')" alt="Placeholder photo for $FirstName $LastName" class="card-img-top" loading="lazy" />
                </a>
            <% else %>
                <a href="$Link">
                    <img src="$resourceURL('vendor/md/bootstrap-project/client/images/staff-placeholder.png')" alt="Placeholder photo for $FirstName $LastName" class="card-img-top" loading="lazy" />
                </a>
            <% end_if %>
        <% end_if %>
        <div class="card-body">
            <h5 class="card-title">
                <a href="$Link">$FirstName $LastName</a>
            </h5>
            <% if $Position %>
                <p class="card-text small m-0">
                    <em>$Position</em>
                </p>
            <% end_if %>
        </div>
    <% else %>
        <div class="stafflist__link">
            <% if $Photo %>
                <div class="stafflist__img">
                    <% if $Parent.PhotoOrientation == "Portrait" %>
                        <img src="$Photo.FocusFill(234,350).URL" alt="Photograph of $FirstName $LastName" class="card-img-top" loading="lazy" />
                    <% else %>
                        <img src="$Photo.FocusFill(350,234).URL" alt="Photograph of $FirstName $LastName" class="card-img-top" loading="lazy" />
                    <% end_if %>
                </div>
            <% else %>
                <div href="$Link" class="stafflist__img">
                    <% if $Parent.PhotoOrientation == "Portrait" %>
                        <img src="$resourceURL('vendor/md/bootstrap-project/client/images/staff-placeholder-portrait.png')" alt="Placeholder photo for $FirstName $LastName" class="card-img-top" loading="lazy" />
                    <% else %>
                        <img src="$resourceURL('vendor/md/bootstrap-project/client/favicons-block/staff-placeholder.png')" alt="Placeholder photo for $FirstName $LastName" class="card-img-top" loading="lazy" />
                    <% end_if %>
                </div>
            <% end_if %>
            <div class="card-body">
                <h5 class="card-title">$FirstName $LastName</h5>
                <% if $Position %>
                    <p class="card-text small m-0">
                        <em>$Position</em>
                    </p>
                <% end_if %>
            </div>
        </div>
    <% end_if %>
</li>
