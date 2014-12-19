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
    'iron:router@1.0.5',
    'alanning:roles@1.2.13'
  ]);
  
  api.addFiles([
  	'lib/client/admin.coffee',
    'lib/client/router.coffee'
  ], 'client');
});

Package.onTest(function(api) {
  api.use('tinytest');
  api.use('yogiben:admin-maintenance-mode');
  api.addFiles('yogiben:admin-maintenance-mode-tests.js');
});
