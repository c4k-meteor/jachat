var reactVersion = '0.13.3';


Package.describe({
  name: 'react-compiler',
  version: reactVersion,
  summary: 'A React JSX compiler for JS and CoffeeScript.'
});



Package.registerBuildPlugin({
  name: 'compileJSX',
  use: ['coffeescript@1.0.5'],
  sources: [
    'plugin/compile-jsx.coffee'
  ],
  npmDependencies: {
    'react-tools': reactVersion,
    'coffee-react-transform': '3.2.0',
    'coffee-script': '1.9.1'
  }
});

Package.onTest(function(api){
});
