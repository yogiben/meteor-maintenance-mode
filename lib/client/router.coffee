Meteor.startup ->
	maintenance = AdminSettings.get 'Maintenance mode'
	Router.onBeforeAction ->
		if maintenance?.enabled and not Roles.userIsInRole Meteor.user(), maintenance.roles or ['admin']
			@redirect maintenance.redirect or '/'
		@next()
	, except: _.union AdminDashboard.adminRoutes, maintenance?.reachable or []