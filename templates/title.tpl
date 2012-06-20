{*
 * Title
 *
 * Title template
 *
 * @author Christopher Han <xiphux@gmail.com>
 * @copyright Copyright (c) 2010 Christopher Han
 * @package GitPHP
 * @subpackage Template
 *}

<div class="title">
	{if $titlecommit}
		{if $target == 'commitdiff'}
			<a href="{$scripturl}?p={$project->GetProject()|rawurlencode}&amp;a=commitdiff&amp;h={$titlecommit->GetHash()}" class="title">{$titlecommit->GetTitle()|escape}</a>
		{elseif $target == 'tree'}
			<a href="{$scripturl}?p={$project->GetProject()|rawurlencode}&amp;a=tree&amp;h={$titletree->GetHash()}&amp;hb={$titlecommit->GetHash()}" class="title">{$titlecommit->GetTitle()|escape}</a>
		{else}
			<a href="{$scripturl}?p={$project->GetProject()|rawurlencode}&amp;a=commit&amp;h={$titlecommit->GetHash()}" class="title">{$titlecommit->GetTitle()|escape}</a>
		{/if}
		{include file='refbadges.tpl' commit=$titlecommit}
	{else}
		{if $target == 'summary'}
			<a href="{$scripturl}?p={$project->GetProject()|rawurlencode}&amp;a=summary" class="title">&nbsp;</a>
		{elseif $target == 'shortlog'}
			{if $disablelink}
			  {t}shortlog{/t}
			{else}
			  <a href="{$scripturl}?p={$project->GetProject()|rawurlencode}&amp;a=shortlog" class="title">{t}shortlog{/t}</a>
			{/if}
		{elseif $target == 'tags'}
			{if $disablelink}
			  {t}tags{/t}
			{else}
			  <a href="{$scripturl}?p={$project->GetProject()|rawurlencode}&amp;a=tags" class="title">{t}tags{/t}</a>
			{/if}
		{elseif $target == 'heads'}
			{if $disablelink}
			  {t}heads{/t}
			{else}
			  <a href="{$scripturl}?p={$project->GetProject()|rawurlencode}&amp;a=heads" class="title">{t}heads{/t}</a>
			{/if}
		{else}
			&nbsp;
		{/if}
	{/if}
</div>
