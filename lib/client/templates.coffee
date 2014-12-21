Template.adminMaintenanceMode.rendered = ->
	node = @$ '.admin-maintenance-mode'
	node.css
		position: 'absolute'
		top: '50%'
		'margin-top': - node.height() / 2

Template.adminMaintenanceMode.helpers
	message: ->
		maintenance = Meteor.settings?.public?.maintenance_mode or AdminSettings.get 'Maintenance mode'
		maintenance?.message or "We'll back shortly"