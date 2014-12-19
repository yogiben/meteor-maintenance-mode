AdminSettingsTypes.MaintenanceMode =
	value:
		type: Object
		label: 'Maintenance mode'
	'value.enabled':
		type: Boolean
		autoform:
			afFieldInput:
				type: 'boolean-select'
	'value.message':
		type: String
	'value.redirect':
		type: String
		optional: true
		label: 'Redirect route'
	'value.reachable':
		type: [String]
		optional: true
		label: 'Reachable routes'
	'value.roles':
		type: [String]
		optional: true
		label: 'Allowed roles'