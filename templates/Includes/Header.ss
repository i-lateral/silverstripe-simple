<header class="header" role="banner">
	<div class="inner">
		<div class="unit size4of4 lastUnit">
		    <div class="brand">
				<% if $SiteConfig.Logo %>
				    <a href="$BaseHref" rel="home">$SiteConfig.Logo.SetHeight(48)</a>
			    <% else %>
				    <p class="title">
				        <a href="$BaseHref" class="brand" rel="home">$SiteConfig.Title</a>
			        </p>
			    <% end_if %>

				<% if $SiteConfig.Tagline %>
				    <p class="tagline">
				        <a href="$BaseHref" rel="home">$SiteConfig.Tagline</a>
			        </p>
				<% end_if %>
			</div>
			<% if $SearchForm %>
				<span class="search-dropdown-icon">L</span>
				<div class="search-bar">
					$SearchForm
				</div>
			<% end_if %>
			<% include Navigation %>
		</div>
	</div>
</header>
