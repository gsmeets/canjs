publish-docs:
	npm install
	git checkout -b gh-pages
	./node_modules/.bin/bit-docs -fd
	rm -rf test/builders/
	git add -f test/
	git add -f doc/
	git add -f index.html
	git add -f node_modules/can-*
	git add -f node_modules/es6-promise
	git add -f node_modules/steal
	git add -f node_modules/steal-*
	git add -f node_modules/jquery
	git add -f node_modules/jquery-ui
	git add -f node_modules/funcunit
	git add -f node_modules/syn
	# React Deps Start
	git add -f node_modules/react
	git add -f node_modules/react-dom
	git add -f node_modules/react-view-model
	git add -f node_modules/create-react-class
	git add -f node_modules/fbjs
	git add -f node_modules/loose-envify
	git add -f node_modules/object-assign
	git add -f node_modules/prop-types
	# React Deps End
	git add -f node_modules/socket.io-client
	git add -f node_modules/feathers/package.json
	git add -f node_modules/feathers-authentication-client/package.json
	git add -f node_modules/feathers-hooks/package.json
	git add -f node_modules/feathers-rest/package.json
	git add -f node_modules/feathers-socketio/package.json
	git add -f node_modules/validate.js/package.json
	git checkout origin/gh-pages -- CNAME
	git checkout origin/gh-pages -- release/
	git commit -m "Publish docs"
	git push -f origin gh-pages
	git rm -q -r --cached node_modules
	git checkout -
	git branch -D gh-pages
