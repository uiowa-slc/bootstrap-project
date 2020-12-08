<article class="post-summary p-4 p-lg-5 mb-3 border rounded overflow-auto" aria-label="$Title">
    <% if $FeaturedImage %>
        <div class="post-summary__media ml-md-5 mb-3 mb-lg-0 ml-sm-3 ">
            <a href="$Link">
                <img src="$FeaturedImage.Fill(400,300).URL" class="post-summary__img img-fluid img-thumbnail" alt="$Title" loading="lazy" />
            </a>
        </div>
    <% end_if %>
    <div class="post-summary__content">
        <h3 class="border-bottom pb-2 mb-3">
            <a href="$Link" title="<%t SilverStripe\\Blog\\Model\\Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>">$Title</a>
        </h3>
        <% if $Summary %>
            $Summary
        <% else %>
            <p>$Excerpt</p>
        <% end_if %>
        <% include SilverStripe\\Blog\\EntryMeta %>
    </div>
</article>
