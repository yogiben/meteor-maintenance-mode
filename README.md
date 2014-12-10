meteor-maintenance-mode
=======================

Depends on meteor-admin-settings, iron router, accounts-entry and roles.

When activated, all routes are blocked to users who are not admins. They are redirected to home page.

The `entrySignIn` and `entryForgotPasword` routes reachable. A user who has `admin` status can view the site as normal.

###Features###
* Can put value in ``settings.json`` that sets the `AdminSettings` key - pair value to `true`, enabling maintenance
* Any admin user can go to `settings -> maintenance mode` and enable, disable maintenance mode
* They can also set a maintenance message

###Config###
* There is a config where the user can set `allowedRoles` (users who have one of these roles can access the site) - defaults to `['admin']`
* `maintenanceTemplate` defaults to a template provided by us
