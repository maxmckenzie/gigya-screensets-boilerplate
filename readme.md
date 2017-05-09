Really simple node app that you can clone to use for Gigya screenset prototypes.

## Running the Demo

`npm install`

Append your API key to the gigya accounts.js `<script type="text/javascript" src="https://cdns.gigya.com/js/gigya.js?apikey="></script>`

`npm run dev`

This will boot the development server and the app will be available on [localhost:3000](http://localhost:3000) or the default port of the system if you have a node instance manager in the mix.

> You can also run `npm build` and `npm start` to compile to ES5 and boot using node rather than babel-node

## A note on the Express server

Gigya's screensets are designed to work client side with minimal setup. As such the only reason there is a node server in this project is just for ease of use. You can just navigate to the `index.html` file and it will work as any other html file would. The node server becomes useful when you need to test some scenarios or if you would prefer to use compilers such as LESS or Babel on the front end (speaking of which this would likely be better off with webpack outputting static files, but for the moment thats a bit ott).
