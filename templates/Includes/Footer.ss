
<footer class="footer bg-dark text-light">
    <div class="footer__container container-xl <% if $SiteConfig.FacebookLink || $SiteConfig.TwitterLink || $SiteConfig.VimeoLink || $SiteConfig.YouTubeLink || $SiteConfig.InstagramLink || $SiteConfig.LinkedInLink || $SiteConfig.PinterestLink || $SiteConfig.FlickrLink %>footer__container--with-social<% end_if %>">
        <div class="row py-5">
            <div class="col-12 col-sm-6 col-lg-4">
                <div class="footer__info pb-3">
                    <% if $SiteConfig.FooterLogo %>
                        <div class="footer__logo">
                            <img loading="lazy" src="$SiteConfig.FooterLogo.URL" alt="$SiteConfig.Title Logo" class="img-fluid">
                        </div>
                    <% else_if $SiteConfig.DisableDivisionBranding %>
                        <a href="http://uiowa.edu" class="footer__logo">
                            <img loading="lazy" src="$resourceURL('vendor/md/bootstrap-project/client/images/ui-logo-footer.png')" width="150" alt="The University of Iowa" class="img-fluid">
                        </a>
                    <% else %>
                        <a href="http://studentlife.uiowa.edu" class="footer__logo">
                            <img loading="lazy" src="$resourceURL('vendor/md/bootstrap-project/client/images/dosl-uiowa.png')" alt="Division Of Student Life" class="img-fluid">
                        </a>
                    <% end_if %>
                    <% if $SiteConfig.GroupSummary %>
                        <div class="footer__summary my-3">$SiteConfig.GroupSummary</div>
                    <% else_if $SiteConfig.DisableDivisionBranding %>
                        <div class="footer__summary my-3"><p>In pursuing its missions of teaching, research, and service, the University seeks to advance scholarly and creative endeavor through leading-edge research and artistic production; to use this research and creativity to enhance undergraduate, graduate, and professional education, health care, and other services provided to the people of Iowa, the nation, and the world; and to educate students for success and personal fulfillment in a diverse world.</p></div>
                    <% else_if $SiteConfig.Tagline %>
                        <div class="footer__summary my-3"><p>$SiteConfig.Tagline</p></div>
                    <% else %>
                        <div class="footer__summary my-3"><p>The Division of Student Life fosters student success by creating and promoting inclusive educationally purposeful services and activities within and beyond the classroom.</p></div>
                    <% end_if %>

                    <div class="footer__address my-3" itemscope itemtype="http://schema.org/PostalAddress">
                        <% with $SiteConfig %>
                        <p>
                            <% if $Address1 || $PhoneNumber || $PhoneNumberAlt || $Fax || $EmailAddress %>
                                $Title<br />
                                <span itemprop="streetAddress">$Address1</span>
                                <% if $City %><br /><span itemprop="addressLocality">$City</span><% end_if %><% if $State %>, <span itemprop="addressRegion">$State</span><% end_if %><% if $Zipcode %> <span itemprop="postalCode">$Zipcode</span><% end_if %><br />
                                <% if $PhoneNumber %>
                                    <br /><% if $PhoneLabel %>$PhoneLabel <% end_if %><span itemprop="telephone">$PhoneNumber</span>
                                <% end_if %>
                                <% if $PhoneNumberAlt %>
                                    <br /><% if $PhoneLabelAlt %>$PhoneLabelAlt <% end_if %>$PhoneNumberAlt
                                <% end_if %>
                                <% if $Fax %>
                                    <br />Fax: <span itemprop="faxNumber">$Fax</span>
                                <% end_if %>
                                <% if $EmailAddress %>
                                    <br />
                                    <a href="mailto:$EmailAddress" class="text-light">
                                        <span itemprop="email">$EmailAddress</span>
                                    </a>
                                <% end_if %>
                            <% end_if %>
                        </p>
                        <% end_with %>
                    </div>
                </div><!-- end footer__info -->
            </div><!-- end .col -->
            <div class="col-12 col-sm-6 col-lg-6">
                <div class="footer__navigation pb-3 <% if $SiteConfig.ButtonUrlOne || $SiteConfig.ButtonUrlTwo || $SiteConfig.ButtonUrlThree %>footer__navigation--with-buttons <% end_if %>">
                    <%-- <h3 class="footer__heading text-uppercase pb-1 mb-3 border-bottom border-secondary font-weight-normal">Quick Links</h3> --%>
                    <div class="row">
                        <% if $Menu(1).Count > 1 %>
                        <div class="col">
                            <div class="footer__links">
                                <ul class="list-unstyled row">
                                    <% loop Menu(1) %>
                                        <li class="<% if $SiteConfig.ButtonUrlOne %>col-6<% else %>col-6 col-lg-4<% end_if %>">
                                            <a href="$Link" class="text-light d-block py-2">$MenuTitle</a>
                                        </li>
                                    <% end_loop %>
                                </ul>
                            </div>
                        </div>
                        <% end_if %>
                        <% if $SiteConfig.ButtonUrlOne || $SiteConfig.ButtonUrlTwo || $SiteConfig.ButtonUrlThree %>
                            <div class="col-xl-4">
                                <div class="footer__buttons py-2">
                                    <% if $SiteConfig.ButtonUrlOne %>
                                        <a href="$SiteConfig.ButtonUrlOne" class="btn d-block d-sm-inline-block d-xl-block btn-outline-light mr-1 mb-1" target="_blank">$SiteConfig.ButtonTextOne</a>
                                    <% end_if %>
                                    <% if $SiteConfig.ButtonUrlTwo %>
                                        <a href="$SiteConfig.ButtonUrlTwo" class="btn d-block d-sm-inline-block d-xl-block btn-outline-light mr-1 mb-1" target="_blank">$SiteConfig.ButtonTextTwo</a>
                                    <% end_if %>
                                    <% if $SiteConfig.ButtonUrlThree %>
                                        <a href="$SiteConfig.ButtonUrlThree" class="btn d-block d-sm-inline-block d-xl-block btn-outline-light mr-1 mb-1" target="_blank">$SiteConfig.ButtonTextThree</a>
                                    <% end_if %>
                                </div>
                            </div>
                        <% end_if %>
                    </div>
                    <% if $SiteConfig.Disclaimer %>
                        <div class="row">
                            <div class="col">
                                <div class="footer__disclaimer small pt-3 border-top border-secondary">
                                    $SiteConfig.Disclaimer
                                </div>
                            </div>
                        </div>

                    <% end_if %>
                </div>
            </div><!-- end .col -->

            <% if $SiteConfig.FacebookLink || $SiteConfig.TwitterLink || $SiteConfig.VimeoLink || $SiteConfig.YouTubeLink || $SiteConfig.InstagramLink || $SiteConfig.LinkedInLink || $SiteConfig.PinterestLink || $SiteConfig.FlickrLink %>
            <div class="col-12 col-lg-2">
                <div class="footer__socialmedia" itemscope itemtype="http://schema.org/Organization">
                    <link itemprop="url" href="$AbsoluteBaseURL">
                    <%-- <h3 class="footer__heading text-uppercase pb-1 mb-3 border-bottom border-secondary font-weight-normal">Social Media</h3> --%>
                    <ul class="list-unstyled">
                        <% if $SiteConfig.FacebookLink %>
                            <li class="mb-2">
                                <a href="$SiteConfig.FacebookLink" target="_blank" class="py-1" itemprop="sameAs" rel="noopener noreferrer">
                                    <i class="fab fa-facebook-square fa-2x pr-2 align-middle"></i>Facebook
                                </a>
                            </li>
                        <% end_if %>
                        <% if $SiteConfig.TwitterLink %>
                            <li class="mb-2">
                                <a href="$SiteConfig.TwitterLink" target="_blank" class="py-1" itemprop="sameAs" rel="noopener noreferrer">
                                    <i class="fab fa-twitter-square fa-2x pr-2 align-middle"></i>Twitter
                                </a>
                            </li>
                        <% end_if %>
                        <% if $SiteConfig.VimeoLink %>
                            <li class="mb-2">
                                <a href="$SiteConfig.VimeoLink" target="_blank" class="py-1" itemprop="sameAs" rel="noopener noreferrer">
                                    <i class="fab fa-vimeo-square fa-2x pr-2 align-middle"></i>Vimeo
                                </a>
                            </li>
                        <% end_if %>
                        <% if $SiteConfig.YouTubeLink %>
                            <li class="mb-2">
                                <a href="$SiteConfig.YouTubeLink" target="_blank" class="py-1" itemprop="sameAs" rel="noopener noreferrer">
                                    <i class="fab fa-youtube-square fa-2x pr-2 align-middle"></i>YouTube
                                </a>
                            </li>
                        <% end_if %>
                        <% if $SiteConfig.InstagramLink %>
                            <li class="mb-2">
                                <a href="$SiteConfig.InstagramLink" target="_blank" class="py-1" itemprop="sameAs" rel="noopener noreferrer">
                                    <i class="fab fa-instagram-square fa-2x pr-2 align-middle"></i>Instagram
                                </a>
                            </li>
                        <% end_if %>
                        <% if $SiteConfig.LinkedInLink %>
                            <li class="mb-2">
                                <a href="$SiteConfig.LinkedInLink" target="_blank" class="py-1" itemprop="sameAs" rel="noopener noreferrer">
                                    <i class="fab fa-linkedin fa-2x pr-2 align-middle"></i>LinkedIn
                                </a>
                            </li>
                        <% end_if %>
                        <% if $SiteConfig.PinterestLink %>
                            <li class="mb-2">
                                <a href="$SiteConfig.PinterestLink" target="_blank" class="py-1" itemprop="sameAs" rel="noopener noreferrer">
                                    <i class="fab fa-pinterest-square fa-2x pr-2 align-middle"></i>Pinterest
                                </a>
                            </li>
                        <% end_if %>
                        <% if $SiteConfig.FlickrLink %>
                            <li class="mb-2">
                                <a href="$SiteConfig.FlickrLink" target="_blank" class="py-1" itemprop="sameAs" rel="noopener noreferrer">
                                    <i class="fab fa-flickr fa-2x pr-2 align-middle"></i>Flickr
                                </a>
                            </li>
                        <% end_if %>
                        <% if $SiteConfig.Github %>
                            <li class="mb-2">
                                <a href="$SiteConfig.Github" target="_blank" class="py-1" itemprop="sameAs" rel="noopener noreferrer">
                                    <i class="fab fa-github-square fa-2x pr-2 align-middle"></i>Github
                                </a>
                            </li>
                        <% end_if %>
                        <% if $SiteConfig.Snapchat %>
                            <li class="mb-2">
                                <a href="https://www.snapchat.com/add/$SiteConfig.Snapchat" target="_blank" class="py-1" itemprop="sameAs" rel="noopener noreferrer">
                                    <i class="fab fa-snapchat-square fa-2x pr-2 align-middle"></i>Snapchat
                                </a>
                            </li>
                        <% end_if %>
                        <% if $SiteConfig.TwitchLink %>
                            <li class="mb-2">
                                <a href="$SiteConfig.TwitchLink" target="_blank" class="py-1" itemprop="sameAs" rel="noopener noreferrer">
                                    <i class="fab fa-twitch fa-2x pr-2 align-middle"></i>Twitch
                                </a>
                            </li>
                        <% end_if %>
                    </ul>
                </div>
            </div><!-- end col -->
            <% end_if %>
        </div><!-- end row -->
    </div><!-- end container -->
    <% include FooterCopyright %>
</footer>
