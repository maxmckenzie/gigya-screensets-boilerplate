Really simple node app that you can clone to use for Gigya screenset prototypes.

## Using the Prototype Boilerplate
To use this as a prototype its suggested you clone the repo. Then change the remote to either nothing or your new project. Wherever that may be.

`git remote remove origin`

Then add this url as the remote upstream

`git remote add upstream https://github.com/maxmckenzie/gigya-screensets-boilerplate.git`

You can then fetch any changes to this repo and apply then to your work with

`git fetch upstream`

checkout the branch you wish to merge to

`git merge upstream/master`

## Running the Demo

`npm install`

Append your API key to the gigya accounts.js `<script type="text/javascript" src="https://cdns.gigya.com/js/gigya.js?apikey="></script>` tag in the index.html

`npm run dev`

This will boot the development server and the app will be available on [localhost:3000](http://localhost:3000) or the default port of the system if you have a node instance manager in the mix.

> You can also run `npm build` and `npm start` to compile to ES5 and boot using node rather than babel-node

## A note on the Express server

Gigya's screensets are designed to work client side with minimal setup. As such the only reason there is a node server in this project is just for ease of use. You can just navigate to the `index.html` file and it will work as any other html file would. The node server becomes useful when you need to test some scenarios or if you would prefer to use compilers such as LESS or Babel on the front end

> speaking of which this would likely be better off with webpack outputting static files so one could use LESS, SASS etc, but for the moment thats a bit ott.

## Static assets deployment

It may be that you only have a server with apache or similar available or that you have a sandbox where you use relative paths for each prototype e.g http://example.com/app1, http://example.com/app2, http://example.com/app3

You can bundle the public assets and the index.html by running the command `sh static-bundle.sh` from the root of the project. This will create a static-bundle directory

Once the static-bundle directory has been made it will ask you if you wish to upload it via SSH and what what the relative url will be. You need to enter the whole domain and path if using one other wise your assets will 404. If you are serving the files from the root of the domain i.e example.com then you can leave this as it is.

ooooooorrrrrrrrrr

just click this

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)
