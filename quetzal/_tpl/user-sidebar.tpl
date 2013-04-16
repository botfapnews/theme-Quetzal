<!-- sidebar -->
<div class="span4 community-feed">                                
    <div class="widget-map widget-community-feed">
        <h4 class="widget-wrap">Community Feed</h4>
        <div class="widget-wrap">
            {{ local }}
            {{ set_current_issue }}
            {{ list_articles length="10" order="byLastComment desc" constraints="type is news" }}
            {{ list_article_comments length="1" order="bydate desc"}}
            <div class="comm-entry">
                <p>New comment on:</p>
                <a href="{{ uri options="article" }}" class="red-text">{{ $gimme->article->name }}</a><br>
                <span>{{ $gimme->comment->submit_date|camp_date_format:"%H:%i" }}</span>
            </div>
            {{ /list_article_comments }}
            {{ /list_articles }}
            {{ /local }}
        </div>
    </div>
</div>