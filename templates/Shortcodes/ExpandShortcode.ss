

<div class="accordion" id="accordion-{$ID}">
  <div class="card">
    <div class="card-header" id="heading-{$ID}">
      <h2 class="mb-0">
        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapse-{$ID}" aria-expanded="false" aria-controls="collapse-{$ID}">
          <% if $ImageURL %><img class="accordion-img" src="$ImageURL" alt="" role="presentation"/><% end_if %><span>$Title</span>
        </button>
      </h2>
    </div>

    <div id="collapse-{$ID}" class="collapse" aria-labelledby="heading-{$ID}" data-parent="#accordion-{$ID}">
      <div class="card-body">
			$Content.RAW
      </div>
    </div>
  </div>
  
  
</div>