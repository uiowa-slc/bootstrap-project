<div class="card mb-4">
    <% if $Image.URL %>
            <a href="$Link">
                <img class="card-img lazyload" data-src="$Image.ThumbURL" data-aspectratio="$Image.Ratio"  />
            </a>
    <% end_if %>
    <div class="row no-gutters">

        <div class="col-md-12">
            <div class="card-body">
                <h3 class="card-title my-2">
                    <a href="$Link">$Title</a>
                </h3>
                <p class="card-subtitle">
                <!-- Date/Time -->
                <ul class="list-group ">
                    <li class="list-group-item"><strong><% if $Dates.Count > "1" %>Next <% end_if %>Date:</strong>

                        <% if $Dates %>
                            <% loop $Dates.Limit(1) %>
                                <% include DateTimesList %>
                            <% end_loop %>
                        <% end_if %>
                            <% if $Dates.Count > "1" %>
                            <a href="$AbsoluteLink" class="btn btn-sm btn-outline-primary">more dates</a>
                        <% end_if %>
                    </li>
                    <% if $isOnline || $Venue %>
                        <li class="list-group-item">
                        <% if not $isOnline %>
                            <% if $Venue %>
                                <% with $Venue %>
                                     @
                                    <a href="$Link"><span itemprop="location">$Title.LimitCharacters(25)</span></a>
                                <% end_with %>
                            <% else_if $Location %>
                                @ <span itemprop="location">$Location</span>
                            <% end_if %>
                        <% else %>
                            Virtual Event <i aria-hidden="true" class="fas fa-laptop-house"></i>
                        <% end_if %>
                    </li>
                    <% end_if %>

                </ul>
                </p>
                <a href="$Link" class="btn btn-primary d-block d-sm-inline-block mb-2 mb-sm-0">See Details</a>
            </div>
        </div>
    </div>
</div>
