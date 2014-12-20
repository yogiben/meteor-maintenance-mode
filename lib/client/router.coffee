Meteor.startup ->
	maintenance = AdminSettings.get 'Maintenance mode'
	Router.onBeforeAction ->
		reachable = _.union AdminDashboard.adminRoutes, maintenance?.reachable or []
		isRouteDisabled = not _.contains reachable, Router.current().route.getName()

		if isRouteDisabled and maintenance?.enabled and not Roles.userIsInRole Meteor.user(), maintenance.roles or ['admin']
			@redirect maintenance.redirect or '/'
		@next()