<% if $IncludeFormTag %>
<form $addExtraClass('forms').AttributesHTML>
<% end_if %>

    <% if $Message %>
    <p id="{$FormName}_error" class="message $MessageType">$Message</p>
    <% else %>
    <p id="{$FormName}_error" class="message $MessageType" style="display: none"></p>
    <% end_if %>

    <fieldset>
        <% if $Legend %><legend>$Legend</legend><% end_if %>

        <div class="Fields">
            <% loop $Fields %>
                $FieldHolder
            <% end_loop %>
        </div>

        <div class="clear"><!-- --></div>

        <% if $Actions %>
            <div class="Actions">
                <% loop $Actions %>
                    $Field
                <% end_loop %>
            </div>
        <% end_if %>
    </fieldset>

<% if $IncludeFormTag %>
</form>
<% end_if %>
