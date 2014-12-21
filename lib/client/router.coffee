Router.onBeforeAction ->
	if Meteor.userId() and not Meteor.user() then return @next()

	maintenance = Meteor.settings?.public?.maintenance_mode or AdminSettings.get 'Maintenance mode'
	isMaintenanceEnabled = maintenance?.enabled

	reachable = _.union AdminDashboard.adminRoutes, maintenance?.reachable or []
	isRouteDisabled = not _.contains reachable, Router.current().route.getName()

	isSuperUser = Meteor.userId() and Roles.userIsInRole Meteor.userId(), maintenance?.roles or 'admin'

	if isRouteDisabled and isMaintenanceEnabled and not isSuperUser
		@redirect maintenance?.redirect or '/'
		@render maintenance?.template or 'adminMaintenanceMode'
	else
		@next()