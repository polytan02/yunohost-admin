<div class="btn-breadcrumb">
    <a href="#/" ><i class="fa-home"></i><span class="sr-only">{{t 'home'}}</span></a>
    <a href="#/tools">{{t 'tools'}}</a>
    <a href="#/tools/update">{{t 'system_update'}}</a>
</div>

<div class="separator"></div>

<div class="panel panel-default">
    <div class="panel-heading">
        <h2 class="panel-title"> {{t 'system_packages'}}</h2>
    </div>
    {{#if packages}}
    <div class="list-group">
        {{#packages}}
        <div class="list-group-item">
            {{#if delayed}}
            <span class="text-warning pull-right">
                <span class="fa-warning"></span> {{t 'system_delayed_upgrade'}}
            </span>
            {{/if}}
            <h3 class="list-group-item-heading">
                <a data-toggle="collapse" href="#changelog-package-{{@index}}">{{name}}</a> <small>{{fullname}}</small>
            </h3>
            <p id="changelog-package-{{@index}}" class="list-group-item-text collapse">{{{changelog}}}</p>
        </div>
        {{/packages}}
    </div>
    <div class="panel-footer">
        <a href="#/tools/upgrade/packages" class="btn btn-success">{{t 'system_upgrade_btn'}}</a>
    </div>
    {{else}}
    <div class="panel-body">
        {{t 'system_packages_nothing'}}
    </div>
    {{/if}}
</div>

<div class="panel panel-default">
    <div class="panel-heading">
        <h2 class="panel-title"> {{t 'system_apps'}}</h2>
    </div>
    {{#if apps}}
    <div class="list-group">
        {{#apps}}
        <div class="list-group-item">
            <h3 class="list-group-item-heading">{{label}} <small>{{id}}</small></h3>
        </div>
        {{/apps}}
    </div>
    <div class="panel-footer">
        <a href="#/tools/upgrade/apps" class="btn btn-success">{{t 'system_upgrade_btn'}}</a>
    </div>
    {{else}}
    <div class="panel-body">
        {{t 'system_apps_nothing'}}
    </div>
    {{/if}}
</div>
