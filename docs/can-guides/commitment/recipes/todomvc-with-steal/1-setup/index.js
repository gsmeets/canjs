// index.js
var view = require("./index.stache");
var DefineMap = require("can-define/map/");

var AppViewModel = DefineMap.extend("AppViewModel",{
	appName: "string"
});

var appVM = window.appVM = new AppViewModel({
	appName: "TodoMVC"
});

var frag = view(appVM);
document.body.appendChild(frag);

require("can-todomvc-test")(appVM);
