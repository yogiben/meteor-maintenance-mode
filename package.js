Package.describe({
  name: 'yogiben:admin-maintenance-mode',
  summary: ' /* Fill me in! */ ',
  version: '1.0.0',
  git: ' /* Fill me in! */ '
});

Package.onUse(function(api) {
  api.versionsFrom('1.0.1');

  api.use([
  	'coffeescript',
    'underscore',
    'tracker',
    'templating',
    'iron:router@1.0.5',
    'alanning:roles@1.2.13'
  ]);
  
  api.addFiles([
    'lib/client/templates.html',
    'lib/client/styles.css',
    'lib/client/templates.coffee',
  	'lib/client/admin.coffee',
    'lib/client/router.coffee'
  ], 'client');
});
