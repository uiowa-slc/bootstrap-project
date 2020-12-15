
<footer class="footer bg-dark text-light">
    <div class="footer__container container-xl <% if $SiteConfig.FacebookLink || $SiteConfig.TwitterLink || $SiteConfig.VimeoLink || $SiteConfig.YouTubeLink || $SiteConfig.InstagramLink || $SiteConfig.LinkedInLink || $SiteConfig.PinterestLink || $SiteConfig.FlickrLink %>footer__container--with-social<% end_if %>">
        <div class="row py-5">
            <div class="col-12 col-md-6 col-lg-4">
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
                                $Title
                                <% if $Address1 %>
                                    <br /><span itemprop="streetAddress">$Address1</span>
                                <% end_if %>
                                <% if $City %><br /><span itemprop="addressLocality">$City</span><% end_if %><% if $State %>, <span itemprop="addressRegion">$State</span><% end_if %><% if $Zipcode %> <span itemprop="postalCode">$Zipcode</span><% end_if %>
                                <br />
                                <% if $PhoneNumber %>
                                    <br />
                                    <a href="tel:$PhoneNumber">
                                        <i class="fas fa-phone mr-2"></i>$PhoneNumber
                                    </a>
                                <% end_if %>

                                <% if $PhoneNumberAlt %>
                                    <br />
                                    <a href="tel:$PhoneNumberAlt" class="p">
                                        <i class="fas fa-phone mr-2"></i>$PhoneNumberAlt
                                    </a>
                                <% end_if %>

                                <% if $Fax %>
                                    <br /> <i class="fas fa-fax mr-2 "></i>$Fax
                                <% end_if %>

                                <% if $EmailAddress %>
                                    <br />
                                    <a href="mailto:$EmailAddress">
                                        <i class="fas fa-envelope-open mr-2"></i>Contact Us
                                    </a>
                                <% end_if %>
                            <% end_if %>
                        </p>
                        <% end_with %>
                    </div>
                    <% if $SiteConfig.FacebookLink || $SiteConfig.TwitterLink || $SiteConfig.VimeoLink || $SiteConfig.YouTubeLink || $SiteConfig.InstagramLink || $SiteConfig.LinkedInLink || $SiteConfig.PinterestLink || $SiteConfig.FlickrLink %>
                        <nav aria-labelledby="footer-social">
                            <h2 class="sr-only" id="footer-social">Social Media</h2>
                            <ul class="footer__socialmedia">
                                <% if $SiteConfig.FacebookLink %>
                                    <li>
                                        <a href="$SiteConfig.FacebookLink" target="_blank" rel="noopener noreferrer">
                                            <i class="fab fa-facebook-square fa-2x pr-2 align-middle"></i>
                                            <span class="sr-only">Facebook</span>
                                        </a>
                                    </li>
                                <% end_if %>
                                <% if $SiteConfig.TwitterLink %>
                                    <li>
                                        <a href="$SiteConfig.TwitterLink" target="_blank" rel="noopener noreferrer">
                                            <i class="fab fa-twitter-square fa-2x pr-2 align-middle"></i>
                                            <span class="sr-only">Twitter</span>
                                        </a>
                                    </li>
                                <% end_if %>
                                <% if $SiteConfig.VimeoLink %>
                                    <li>
                                        <a href="$SiteConfig.VimeoLink" target="_blank" rel="noopener noreferrer">
                                            <i class="fab fa-vimeo-square fa-2x pr-2 align-middle"></i>
                                            <span class="sr-only">Vimeo</span>
                                        </a>
                                    </li>
                                <% end_if %>
                                <% if $SiteConfig.YouTubeLink %>
                                    <li>
                                        <a href="$SiteConfig.YouTubeLink" target="_blank" rel="noopener noreferrer">
                                            <i class="fab fa-youtube fa-2x pr-2 align-middle"></i>
                                            <span class="sr-only">Youtube</span>
                                        </a>
                                    </li>
                                <% end_if %>
                                <% if $SiteConfig.InstagramLink %>
                                    <li>
                                        <a href="$SiteConfig.InstagramLink" target="_blank" rel="noopener noreferrer">
                                            <i class="fab fa-instagram fa-2x pr-2 align-middle"></i>
                                            <span class="sr-only">Instagram</span>
                                        </a>
                                    </li>
                                <% end_if %>
                                <% if $SiteConfig.LinkedInLink %>
                                    <li>
                                        <a href="$SiteConfig.LinkedInLink" target="_blank" rel="noopener noreferrer">
                                            <i class="fab fa-linkedin-in fa-2x pr-2 align-middle"></i>
                                            <span class="sr-only">LinkedIn</span>
                                        </a>
                                    </li>
                                <% end_if %>
                                <% if $SiteConfig.PinterestLink %>
                                    <li>
                                        <a href="$SiteConfig.PinterestLink" target="_blank" rel="noopener noreferrer">
                                            <i class="fab fa-pinterest fa-2x pr-2 align-middle"></i>
                                            <span class="sr-only">Pinterest</span>
                                        </a>
                                    </li>
                                <% end_if %>
                                <% if $SiteConfig.FlickrLink %>
                                    <li>
                                        <a href="$SiteConfig.FlickrLink" target="_blank" rel="noopener noreferrer">
                                            <i class="fab fa-flickr fa-2x pr-2 align-middle"></i>
                                            <span class="sr-only">Flickr</span>
                                        </a>
                                    </li>
                                <% end_if %>
                                <% if $SiteConfig.Github %>
                                    <li>
                                        <a href="$SiteConfig.Github" target="_blank" rel="noopener noreferrer">
                                            <i class="fab fa-github-square fa-2x pr-2 align-middle"></i>
                                            <span class="sr-only">Github</span>
                                        </a>
                                    </li>
                                <% end_if %>
                                <% if $SiteConfig.Snapchat %>
                                    <li>
                                        <a href="https://www.snapchat.com/add/$SiteConfig.Snapchat" target="_blank"  rel="noopener noreferrer">
                                            <i class="fab fa-snapchat fa-2x pr-2 align-middle"></i>
                                            <span class="sr-only">Snapchat</span>
                                        </a>
                                    </li>
                                <% end_if %>
                                <% if $SiteConfig.TwitchLink %>
                                    <li>
                                        <a href="$SiteConfig.TwitchLink" target="_blank" rel="noopener noreferrer">
                                            <i class="fab fa-twitch fa-2x pr-2 align-middle"></i>
                                            <span class="sr-only">Twitch</span>
                                        </a>
                                    </li>
                                <% end_if %>
                            </ul>
                            
                        </nav>
                    <% end_if %>
                </div><!-- end footer__info -->
            </div><!-- end .col -->
            <div class="col-12 col-md-6 col-lg-8">
                <div class="footer__navigation pb-3">
                    <div class="row">
                        <% if $Menu(1).Count > 1 %>
                            <div class="col">
                                <div class="footer__links">
                                    <h2 class="sr-only">Footer Navigation</h2>
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
                            <div class="col-lg-4">
                                <div class="footer__buttons py-2">
                                    <% if $SiteConfig.ButtonUrlOne %>
                                        <a href="$SiteConfig.ButtonUrlOne" class="btn d-block d-sm-inline-block d-lg-block btn-outline-warning mr-1 mb-1" target="_blank">$SiteConfig.ButtonTextOne <i class="fas fa-arrow-right"></i></a>
                                    <% end_if %>
                                    <% if $SiteConfig.ButtonUrlTwo %>
                                        <a href="$SiteConfig.ButtonUrlTwo" class="btn d-block d-sm-inline-block d-lg-block btn-outline-warning mr-1 mb-1" target="_blank">$SiteConfig.ButtonTextTwo <i class="fas fa-arrow-right"></i></a>
                                    <% end_if %>
                                    <% if $SiteConfig.ButtonUrlThree %>
                                        <a href="$SiteConfig.ButtonUrlThree" class="btn d-block d-sm-inline-block d-lg-block btn-outline-warning mr-1 mb-1" target="_blank">$SiteConfig.ButtonTextThree <i class="fas fa-arrow-right"></i></a>
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

        </div><!-- end row -->
    </div><!-- end container -->
    <% include FooterCopyright %>
</footer>
