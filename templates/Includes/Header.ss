<header class="header clearfix">
    <div class="inner clearfix">
        <div class="units-row-end">

            <div class="brand unit-33">
                <p class="title units-row-end">
                    <% if $SiteConfig.Logo %>
                        <a href="$BaseHref" rel="home">
                            $SiteConfig.Logo.SetHeight(48)
                        </a>
                    <% else %>
                        <a href="$BaseHref" class="brand" rel="home">
                            $SiteConfig.Title
                        </a>
                    <% end_if %>
                </p>

                <% if $SiteConfig.Tagline %>
                    <p class="tagline units-row-end">
                        <a href="$BaseHref" rel="home">$SiteConfig.Tagline</a>
                    </p>
                <% end_if %>
            </div>

            <div class="nav unit-66">
                <% if $SearchForm %>
                    <span class="search-dropdown-icon">L</span>
                    <div class="search-bar clearfix">
                        $SearchForm
                    </div>
                <% end_if %>

                <% include Navigation %>
            </div>
        </div>
    </div>
</header>
