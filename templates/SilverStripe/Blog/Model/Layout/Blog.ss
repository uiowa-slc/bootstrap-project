<% include Header %>

<main class="container my-5" id="content">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="text-center">$Title</h1>
            <br>
            $Content

            <% if $Content %>
                <hr class="my-4" />
            <% end_if %>

            <% if $PaginatedList.Exists %>
                <% loop $PaginatedList %>
                    <% include SilverStripe\\Blog\\PostSummary %>
                <% end_loop %>
            <% else %>
                <p><%t SilverStripe\\Blog\\Model\\Blog.NoPosts 'There are no posts' %></p>
            <% end_if %>


            $Form
            $CommentsForm

            <% with $PaginatedList %>
                <% include SilverStripe\\Blog\\Pagination %>
            <% end_with %>
        </div>
    </div>
</main>
