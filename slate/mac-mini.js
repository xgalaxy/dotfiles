// General config
slate.configAll({
	"defaultToCurrentScreen": true,
	"checkDefaultsOnLoad": true,
	"windowHintsShowIcons": true,
	"windowHintsIgnoreHiddenWindows": false,
	"windowHintsSpread": true,
	"windowHintsSpreadSearchWidth": 100,
	"windowHintsSpreadSearchHeight": 100
});


// Monitors
var monHome0 = slate.screenForRef("0");
var monHome1 = slate.screenForRef("1");
var monPortable = slate.screenForRef("1440x900");


// Generic positions and sizes
var leftTopTallThin = slate.operation("corner", {
	"direction": "top-left",
	"width": "screenSizeX/8",
	"height": "screenSizeY"
});

var rightBottomWide = slate.operation("corner", {
	"direction": "bottom-right",
	"width": "2*screenSizeX/3",
	"height": "screenSizeY/2"
});

var centerTallWide = slate.operation("move", {
	"x": "(screenSizeX/3)/2",
	"y": "screenOriginY",
	"width": "2*screenSizeX/3",
	"height": "screenSizeY"
});


// Monitor positions and sizes
var monHome0LeftTopTallThin = leftTopTallThin.dup({ "screen": monHome0 });
var monHome0RightBottomWide = rightBottomWide.dup({ "screen": monHome0 });
var monHome1CenterTallWide = centerTallWide.dup({ "screen": monHome1 });


// App specific operations
var focusTerminal = slate.operation("focus", { "app": "iTerm" });


// Grids
var simpleGrid = slate.operation("grid", {
	"grids": {
		"0": {
			"width": 9,
			"height": 7
		},
		"1": {
			"width": 9,
			"height": 7
		}
	},
	"padding": 2
});


// Layouts
var homeLayout = slate.layout("twoMonitor", {
	"_after_": { "operations": focusTerminal},
	"Adium": {
		"operations": monHome0LeftTopTallThin,
		"ignore-fail": true,
		"title-order": ["Contacts"]
	},
	"MacVim": {
		"operations": monHome1CenterTallWide
	},
	"iTerm": {
		"operations": monHome0RightBottomWide
	}
});

var setupForHome = slate.operation("layout", { "name": homeLayout });


// Bindings
slate.bindAll({
	"tab:alt": setupForHome,
	"h:cmd": slate.operation("hint"),
	"g:cmd": simpleGrid
});
