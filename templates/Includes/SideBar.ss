<div class="col-lg-4 col-xl-3 order-lg-last">
	<% if Menu(2) %>
        <nav class="navbar navbar-expand-lg navbar-light sidenav mb-3 mb-lg-0" aria-label="Section Navigation">
            <a class="navbar-brand d-lg-none" href="#">Explore This Section</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#sidebarNavDropdown" aria-controls="sidebarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse flex-column" id="sidebarNavDropdown">
                <ul class="navbar-nav flex-column ">
                    <% with Level(1) %>
                        <li class="nav-item nav-item--first ">
                            <a href="$Link" class="nav-link nav-link--$LinkingMode">$MenuTitle</a>
                        </li>
                    <% end_with %>
                    <% loop Menu(2) %>
                        <li class="nav-item nav-item--$LinkingMode">
                            <a href="$Link" class="nav-link nav-link--$LinkingMode">$MenuTitle</a>

                            <%-- second level nav --%>
                            <% if $LinkOrSection = "section" && Children %>
                                <ul class="list-unstyled ">
                                    <% loop Children %>
                                        <li class="nav-item nav-item--$LinkingMode">
                                            <a href="$Link" class="nav-link nav-link--$LinkingMode">$MenuTitle</a>

                                            <%-- third level nav --%>
                                            <% if $LinkOrSection = "section" && Children %>
                                                <ul class="list-unstyled ">
                                                    <% loop Children %>
                                                        <li class="nav-item nav-item--$LinkingMode">
                                                            <a href="$Link" class="nav-link nav-link--$LinkingMode">$MenuTitle</a>
                                                        </li>
                                                    <% end_loop %>
                                                </ul>
                                            <% end_if %>
                                            <%-- end third level --%>

                                        </li>
                                    <% end_loop %>
                                </ul>
                            <% end_if %>
                            <%-- end second level --%>

                        </li>
                    <% end_loop %>
                </ul>
            </div>
            
        </nav>
	<% end_if %>
</div>




<%-- <aside class="col-lg-4 col-xl-3 offset-xl-1" role="complementary">
    <% if Menu(2) %>
        <nav class="sidenav my-5">
            <% if Menu(2) %>
                <% with Level(1) %>
                    <h3 class="sidenav__title">
                        <% if $LinkOrCurrent = "current" %>$MenuTitle<% else %><a href="$Link">$MenuTitle</a><% end_if %>
                    </h3>
                <% end_with %>
            <% end_if %>
            <ul class="sidenav__list">
                <% loop Menu(2) %>
                    <li class="$LinkingMode">
                        <a href="$Link" class="sidenav__link sidenav__link--$LinkingMode">$MenuTitle</a>

                        
                        <% if $LinkOrSection = "section" && Children %>
                            <ul class="sidenav__list sidenav__list--sub">
                                <% loop Children %>
                                    <li class="">
                                        <a href="$Link" class="sidenav__link sidenav__link--sub">$MenuTitle</a>
                                    </li>
                                <% end_loop %>
                            </ul>
                        <% end_if %>
                        

                    </li>
                <% end_loop %>

            </ul>
        </nav>
    <% end_if %>
</aside> --%>
