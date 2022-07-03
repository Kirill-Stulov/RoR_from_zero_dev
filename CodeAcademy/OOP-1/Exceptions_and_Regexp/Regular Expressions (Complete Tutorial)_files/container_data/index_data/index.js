(function (cjs, an) {

var p; // shortcut to reference prototypes
var lib={};var ss={};var img={};
lib.ssMetadata = [];


// symbols:



(lib._300bg = function() {
	this.initialize(img._300bg);
}).prototype = p = new cjs.Bitmap();
p.nominalBounds = new cjs.Rectangle(0,0,600,500);// helper functions:

function mc_symbol_clone() {
	var clone = this._cloneProps(new this.constructor(this.mode, this.startPosition, this.loop));
	clone.gotoAndStop(this.currentFrame);
	clone.paused = this.paused;
	clone.framerate = this.framerate;
	return clone;
}

function getMCSymbolPrototype(symbol, nominalBounds, frameBounds) {
	var prototype = cjs.extend(symbol, cjs.MovieClip);
	prototype.clone = mc_symbol_clone;
	prototype.nominalBounds = nominalBounds;
	prototype.frameBounds = frameBounds;
	return prototype;
	}


(lib.Symbol21 = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// Layer_1
	this.shape = new cjs.Shape();
	this.shape.graphics.rf(["#08141D","rgba(8,20,29,0)"],[0,1],0,0,0,0,0,90.3).s().p("Ap1J1QkEkFAAlwQAAlvEEkGQEGkEFvAAQFwAAEFEEQEFEGAAFvQAAFwkFEFQkFEFlwAAQlvAAkGkFg");
	this.shape.setTransform(89,89);

	this.timeline.addTween(cjs.Tween.get(this.shape).wait(1));

}).prototype = getMCSymbolPrototype(lib.Symbol21, new cjs.Rectangle(0,0,178,178), null);


(lib.Symbol13 = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// Layer_2 (mask)
	var mask = new cjs.Shape();
	mask._off = true;
	mask.graphics.p("A2CXcMAAAgu3MAsEAAAMAAAAu3g");
	mask.setTransform(150.05,150);

	// Layer_1
	this.instance = new lib._300bg();
	this.instance.parent = this;
	this.instance.setTransform(0,0,0.5,0.5);

	var maskedShapeInstanceList = [this.instance];

	for(var shapedInstanceItr = 0; shapedInstanceItr < maskedShapeInstanceList.length; shapedInstanceItr++) {
		maskedShapeInstanceList[shapedInstanceItr].mask = mask;
	}

	this.timeline.addTween(cjs.Tween.get(this.instance).wait(1));

}).prototype = getMCSymbolPrototype(lib.Symbol13, new cjs.Rectangle(9,0,282.1,250), null);


(lib.Symbol6 = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// Layer_1
	this.shape = new cjs.Shape();
	this.shape.graphics.f("#FFFFFF").s().p("AgTAbQgFgFAAgIQAAgGAEgEQACgEAGgBIAMgEIAQgCQgBgIgDgEQgFgEgHAAQgFAAgFACQgFADgEAEIAAgJIAJgGQAFgCAFAAQAMAAAGAGQAHAGAAALIAAAmIgIAAIgBgJQgFAFgFADQgGADgFAAQgJAAgFgFgAAGABIgMACQgEACgCACQgCADAAAEQAAAEADADQADADAFAAQAEAAAGgEQAGgEADgGIAAgKg");
	this.shape.setTransform(39.4,8.575);

	this.shape_1 = new cjs.Shape();
	this.shape_1.graphics.f("#FFFFFF").s().p("AAVAmIAAgQIgpAAIAAAQIgKAAIAAgXIAHAAQAEgIADgJQABgLABgPIAAgJIAmAAIAAA0IAGAAIAAAXgAgFgaQABAOgDAKQgCAJgEAIIAbAAIAAgsIgTAAg");
	this.shape_1.setTransform(33.05,9.325);

	this.shape_2 = new cjs.Shape();
	this.shape_2.graphics.f("#FFFFFF").s().p("AgNAcQgHgEgDgHQgEgHAAgJIAAgBQAAgJAEgHQADgHAHgEQAGgEAHAAQAIAAAHAEQAGAEAEAHQADAHAAAJIAAABQAAAJgDAHQgEAHgGAEQgHAEgIAAQgHAAgGgEgAgMgRQgFAHAAAKIAAABQAAAKAFAHQAFAGAHAAQAJAAAEgGQAFgHAAgKIAAgBQAAgKgFgHQgEgGgJAAQgHAAgFAGg");
	this.shape_2.setTransform(26.425,8.575);

	this.shape_3 = new cjs.Shape();
	this.shape_3.graphics.f("#FFFFFF").s().p("AgSAeIAAg7IAlAAIAAAIIgbAAIAAAzg");
	this.shape_3.setTransform(21.15,8.55);

	this.shape_4 = new cjs.Shape();
	this.shape_4.graphics.f("#FFFFFF").s().p("AAZAeIAAg7IAJAAIAAA7gAghAeIAAg7IAJAAIAAAZIAQAAQAKABAFADQAGAEAAAJQAAAIgGAEQgFAFgKAAgAgYAXIAPAAQALAAAAgKQAAgKgLAAIgPAAg");
	this.shape_4.setTransform(14.1,8.55);

	this.shape_5 = new cjs.Shape();
	this.shape_5.graphics.f("#FFFFFF").s().p("AgcAqIAAhTIAcAAQAIAAAGADQAFADAEAFQADAEAAAHIAAABQgBAGgDAEQgEAFgFACQAHABAFAFQAEAFAAAIIAAABQAAAHgDAFQgEAGgGACQgGADgIAAgAgRAiIASAAQAHAAAGgEQAEgEAAgHIAAgBQAAgHgEgEQgGgEgHAAIgSAAgAgRgEIARAAQAGAAAFgEQAEgEAAgGIAAgBQAAgGgEgDQgFgEgGAAIgRAAg");
	this.shape_5.setTransform(6.35,7.375);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[{t:this.shape_5},{t:this.shape_4},{t:this.shape_3},{t:this.shape_2},{t:this.shape_1},{t:this.shape}]}).wait(1));

}).prototype = getMCSymbolPrototype(lib.Symbol6, new cjs.Rectangle(0.5,-0.5,44.5,17.2), null);


(lib.Symbol4 = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// Layer_1
	this.shape = new cjs.Shape();
	this.shape.graphics.f("#08141D").s().p("A41VjMAAAgrGMAxrAAAMAAAArGg");
	this.shape.setTransform(150.05,126.2);

	this.timeline.addTween(cjs.Tween.get(this.shape).wait(1));

}).prototype = getMCSymbolPrototype(lib.Symbol4, new cjs.Rectangle(-8.9,-11.7,318,275.9), null);


(lib.Symbol3 = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// Layer_1
	this.shape = new cjs.Shape();
	this.shape.graphics.f("#FFFFFF").s().p("AghBVQgNgGgHgIIAAgaQAIANAOAIQANAHAPAAQALAAAIgEQAIgEAEgHQAEgHAAgHQAAgLgGgHQgHgIgNgHIgYgMQgPgJgJgKQgJgLAAgPQAAgNAGgKQAHgKALgFQAMgGAPAAQANAAANAFQANAGAJAIIAAAaQgKgNgMgHQgNgIgNAAQgMAAgJAHQgIAIAAALQAAAIAGAHQAGAGANAHIAYANQARAJAJALQAIAMAAARQAAAOgHALQgHAKgNAHQgNAGgRAAQgRAAgNgGg");
	this.shape.setTransform(179.825,7.325);

	this.shape_1 = new cjs.Shape();
	this.shape_1.graphics.f("#FFFFFF").s().p("Ag7BXIAAgNIBdiPIhYAAIAAgRIByAAIAAANIhcCPIBaAAIAAARg");
	this.shape_1.setTransform(165.875,7.3);

	this.shape_2 = new cjs.Shape();
	this.shape_2.graphics.f("#FFFFFF").s().p("AgjBRQgPgJgJgPQgHgPgBgUIAAhuIAWAAIAABtQAAAYAMANQANAOAVAAQAXAAAMgOQAMgNAAgYIAAhtIATAAIAABuQABAUgJAPQgHAPgQAJQgPAIgVAAQgUAAgPgIg");
	this.shape_2.setTransform(150.05,7.475);

	this.shape_3 = new cjs.Shape();
	this.shape_3.graphics.f("#FFFFFF").s().p("AgkBOQgOgLgIgUQgIgSABgaIAAgEQgBgZAIgTQAIgVAOgLQAPgLAVABQAVgBAPALQAQAMAHATQAIATgBAaIAAAEQABAagIASQgHAUgQALQgPALgVAAQgVAAgPgLgAgggzQgMASAAAgIAAAEQAAAfAMATQAMASAUABQAVgBAMgSQALgTAAgfIAAgEQAAgggLgSQgMgTgVAAQgVAAgLATg");
	this.shape_3.setTransform(126.95,7.4);

	this.shape_4 = new cjs.Shape();
	this.shape_4.graphics.f("#FFFFFF").s().p("AgkBOQgOgLgIgUQgHgSAAgaIAAgEQAAgZAHgTQAIgVAOgLQAPgLAVABQAVgBAPALQAPAMAIATQAIATAAAaIAAAEQAAAagIASQgIAUgPALQgPALgVAAQgVAAgPgLgAgggzQgMASAAAgIAAAEQAAAfAMATQALASAVABQAWgBALgSQALgTAAgfIAAgEQAAgggLgSQgLgTgWAAQgVAAgLATg");
	this.shape_4.setTransform(110.95,7.4);

	this.shape_5 = new cjs.Shape();
	this.shape_5.graphics.f("#FFFFFF").s().p("AgkBOQgPgLgHgUQgHgSgBgaIAAgEQABgZAHgTQAHgVAPgLQAQgLAUABQAVgBAQALQAPAMAHATQAHATABAaIAAAEQgBAagHASQgHAUgPALQgQALgVAAQgUAAgQgLgAgggzQgMASABAgIAAAEQgBAfAMATQALASAVABQAWgBALgSQALgTAAgfIAAgEQAAgggLgSQgLgTgWAAQgVAAgLATg");
	this.shape_5.setTransform(94.95,7.4);

	this.shape_6 = new cjs.Shape();
	this.shape_6.graphics.f("#FFFFFF").s().p("AgkBOQgOgLgIgUQgIgSABgaIAAgEQgBgZAIgTQAIgVAOgLQAPgLAVABQAVgBAPALQAQAMAHATQAIATgBAaIAAAEQABAagIASQgHAUgQALQgPALgVAAQgVAAgPgLgAgggzQgMASAAAgIAAAEQAAAfAMATQAMASAUABQAVgBAMgSQALgTAAgfIAAgEQAAgggLgSQgMgTgVAAQgVAAgLATg");
	this.shape_6.setTransform(72.5,7.4);

	this.shape_7 = new cjs.Shape();
	this.shape_7.graphics.f("#FFFFFF").s().p("AgkBOQgOgLgIgUQgHgSAAgaIAAgEQAAgZAHgTQAIgVAOgLQAPgLAVABQAVgBAPALQAQAMAHATQAIATAAAaIAAAEQAAAagIASQgHAUgQALQgPALgVAAQgVAAgPgLgAgggzQgMASAAAgIAAAEQAAAfAMATQALASAVABQAWgBALgSQALgTAAgfIAAgEQAAgggLgSQgLgTgWAAQgVAAgLATg");
	this.shape_7.setTransform(56.5,7.4);

	this.shape_8 = new cjs.Shape();
	this.shape_8.graphics.f("#FFFFFF").s().p("AgkBOQgPgLgHgUQgHgSgBgaIAAgEQABgZAHgTQAHgVAPgLQAQgLAUABQAVgBAQALQAPAMAHATQAHATABAaIAAAEQgBAagHASQgHAUgPALQgQALgVAAQgUAAgQgLgAgggzQgMASABAgIAAAEQgBAfAMATQALASAVABQAWgBALgSQALgTAAgfIAAgEQAAgggLgSQgLgTgWAAQgVAAgLATg");
	this.shape_8.setTransform(40.5,7.4);

	this.shape_9 = new cjs.Shape();
	this.shape_9.graphics.f("#FFFFFF").s().p("AgiBSQgMgFgHgHIAAgaQAIAMAMAHQALAHAOAAQALAAAJgFQAKgFAFgJQAFgJAAgMQAAgKgFgJQgFgIgHgEQgIgEgIAAQgKAAgJAEQgIACgDAGIgQAAIAJhdIBVAAIAAARIhCAAIgFA3QAMgJAPAAQAOAAALAHQAMAHAHALQAHAMAAAQQAAASgIANQgIANgOAHQgPAGgQAAQgPAAgMgFg");
	this.shape_9.setTransform(19.175,7.525);

	this.shape_10 = new cjs.Shape();
	this.shape_10.graphics.f("#FFFFFF").s().p("AAIBWIAAiUIglAZIAAgXIAngZIAUAAIAACrg");
	this.shape_10.setTransform(6.075,7.425);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[{t:this.shape_10},{t:this.shape_9},{t:this.shape_8},{t:this.shape_7},{t:this.shape_6},{t:this.shape_5},{t:this.shape_4},{t:this.shape_3},{t:this.shape_2},{t:this.shape_1},{t:this.shape}]}).wait(1));

}).prototype = getMCSymbolPrototype(lib.Symbol3, new cjs.Rectangle(0,-7,188.7,31.6), null);


(lib.Kia_logo = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// Layer_1
	this.shape = new cjs.Shape();
	this.shape.graphics.f("#FFFFFF").s().p("AJfGRIAAiUIALAAIACATQAFgJAKgGQAJgGALAAQAUAAANAPQAMAPAAAZQAAAZgMAPQgNAQgUAAQgKAAgKgHQgJgFgGgKIAAA9gAJ5EOQgJAIgEANIAAAeQAEAMAJAJQAKAJALAAQAPAAAJgNQAJgMAAgUQAAgUgJgMQgJgNgPAAQgLAAgKAJgAObFdIAAgPQAHAJAIAEQAIAEAKAAQALAAAIgFQAGgFAAgJQAAgGgDgEQgDgFgKgEIgQgHQgNgFgFgHQgHgHAAgJQABgMAIgHQAKgIAQAAQASAAANALIAAAPQgHgHgIgFQgIgEgIAAQgKAAgGAFQgFAFAAAHQAAAFAEAEQAEADAJAFIAQAGQANAFAFAIQAGAHAAALQAAANgLAIQgLAJgRAAQgVAAgMgNgANAFaQgNgOAAgYIAAgFQAAgXANgOQANgPAUAAQAVAAALANQAMAOAAAbIAAAFIhNAAQABASAJALQAJAMAQAAQAUAAARgQIAAAOQgHAFgJAEQgKAEgLAAQgWAAgNgQgANLEPQgKALAAASIA/AAQgBgUgIgKQgIgJgOAAQgNAAgJAKgAIEFdIAAgPQAIAJAHAEQAHAEAKAAQAMAAAHgFQAHgFAAgJQAAgGgDgEQgEgFgJgEIgQgHQgNgFgGgHQgGgHAAgJQAAgMAKgHQAJgIAQAAQARAAAOALIAAAPQgHgHgIgFQgJgEgHAAQgLAAgFAFQgFAFAAAHQAAAFAEAEQAEADAJAFIAQAGQAMAFAGAIQAGAHAAALQAAANgMAIQgKAJgSAAQgTAAgNgNgACXFiQgIgIAAgPQAAgJAFgIQAEgGAJgEQAJgDARgEIAcgFQAAgQgHgHQgHgIgOAAQgUAAgQAQIAAgNQAFgGAKgEQAJgDAMAAQATAAAKAJQAMAKAAATIAABGIgJAAIgEgTQgHAKgLAGQgLAGgLAAQgPAAgJgIgADDEzIgUAEQgLADgFAFQgDAEAAAIQAAAKAGAFQAFAFAKAAQAKAAAKgHQALgHAHgLIAAgYgAlbFaQgNgOAAgYIAAgFQAAgXANgOQAMgPAVAAQAUAAAMANQAMAOAAAbIAAAFIhMAAQAAASAJALQAJAMAPAAQAVAAARgQIAAAOQgHAFgJAEQgKAEgMAAQgVAAgNgQgAlQEPQgJALgBASIA/AAQgBgUgIgKQgJgJgNAAQgNAAgJAKgApvFaQgLgOAAgYIAAgFQAAgXAMgOQANgPAVAAQAUAAALANQANAOAAAbIAAAFIhOAAQABASAJALQAJAMAQAAQAUAAARgQIAAAOQgHAFgJAEQgJAEgMAAQgXAAgNgQgApjEPQgJALgBASIA/AAQAAgUgJgKQgIgJgNAAQgOAAgJAKgAs2FbQgOgPAAgYIAAgDQAAgZAOgPQANgOAVAAQAVAAANAOQAOAPAAAZIAAADQAAAYgOAPQgNAPgVAAQgVAAgNgPgAstERQgJALAAAVIAAADQAAAUAJALQAKAMAPAAQAPAAAKgMQAJgLAAgUIAAgDQAAgVgJgLQgKgMgPAAQgPAAgKAMgAL4FnIAAhqIALAAIABATQALgVAVAAQAGAAAEABIAAAMQgFgCgHAAQgJAAgJAHQgIAHgEAMIAABHgALRFnIAAhqIANAAIAABqgAHjFnIAAhEQAAgPgFgHQgFgIgMAAQgMAAgLALQgLALgEAOIAAA+IgMAAIAAhqIALAAIABAZQAGgMAJgHQAMgIANAAQAQAAAIAKQAJAKAAASIAABGgAF0FnIAAhqIANAAIAABqgAEGFnIAAhfIgXAAIAAgLIAXAAIAAgfIAOAAIAAAfIAXAAIAAALIgXAAIAABfgABwFnIAAhEQAAgPgFgHQgFgIgMAAQgLAAgLALQgMALgDAOIAAA+IgNAAIAAiUIANAAIAABCQAGgLAJgHQALgIANAAQAQAAAJAKQAIAKAAASIAABGgAgLFnIAAhfIgXAAIAAgLIAXAAIAAgfIAMAAIAAAfIAYAAIAAALIgYAAIAABfgAiBFnIAAhfIgYAAIAAgLIAYAAIAAgfIAMAAIAAAfIAYAAIAAALIgYAAIAABfgAiyFnIAAhEQAAgPgEgHQgGgIgMAAQgLAAgMALQgLALgDAOIAAA+IgNAAIAAhqIALAAIACAZQAGgMAJgHQALgIANAAQARAAAIAKQAJAKAAASIAABGgAmIFnIAAhGQAAgOgFgHQgEgHgLAAQgJAAgLAKQgKAKgDAMIAABCIgOAAIAAhGQAAgOgDgHQgFgHgLAAQgJAAgLAKQgKAKgEAMIAABCIgNAAIAAhqIALAAIACAWQAGgLAIgGQAKgHAMAAQAMAAAHAGQAIAHADAMQAGgLAIgHQAKgHAMAAQAQAAAHAJQAIAJAAASIAABIgAq3FnIgphqIAOAAIAjBbIAihbIANAAIgnBqgAtnFnIAAh5Ig0B5IgGAAIgzh5IAAB5IgOAAIAAiTIAQAAIA0B6IA0h6IARAAIAACTgALRDqIAAgTIANAAIAAATgAF0DqIAAgTIANAAIAAATgAMRA8IAAkvQAAgFgEAAIgEABInGEmQgJAGgIACQgIACgKAAIkrAAQgQAAgJgJQgKgKAAgPIAAl3IgBgDQAAgBAAAAQAAgBgBAAQAAAAAAAAQgBAAAAAAQgCAAgDACIkrCzQgDADAAACQAAADACACIDWDUQAEAFAAADQABADgIAAIjBAAQgMAAgHgCQgKgCgGgGIiBiBIgEgCIgEACIjYCBQgKAGgIACQgIACgJAAIjIAAQgPAAgKgJQgKgKAAgPIAAj/QAAgYAHgPQAIgPAUgMICmhkIAFgCQADAAAAAJIAAFVQABAGADAAIAFgCIIylSQAKgHAIgCQAHgCAMAAIEtAAQARAAAJAKQAKAKgBAPIAAF2QABAGADAAIAFgCIJsmSQAIgGAIgCQAJgDALAAICIAAQAQAAAJAKQAKAKAAAPIAAEEQAAAZgHAOQgIAPgUANIilBiIgGACQgEAAAAgHg");
	this.shape.setTransform(-5,203.4,1,1,0,0,0,-102,36.7);

	this.timeline.addTween(cjs.Tween.get(this.shape).wait(1));

}).prototype = getMCSymbolPrototype(lib.Kia_logo, new cjs.Rectangle(-2.5,126.7,199,80.10000000000001), null);


(lib.btn_text = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// Layer_1 - копия
	this.shape = new cjs.Shape();
	this.shape.graphics.f("#FFFFFF").s().p("AhRA2IAAhTIAJAAIABAKQADgGAFgDQAFgDAGAAQAIAAAGAEQAGAEADAHQAEAHAAAJQAAAJgEAIQgDAHgGAEQgGAEgIAAQgGAAgFgDQgFgDgDgFIAAAhgAhAgTQgFAEgCAGIAAASQACAHAFAEQAFAEAGAAQAFAAAEgDQAEgDACgGQADgFAAgHQAAgHgDgFQgCgFgEgDQgEgDgFAAQgGAAgFAEgAhnAtIAAgPIgqAAIAAAPIgJAAIAAgXIAHAAQAEgHACgLQACgJAAgQIAAgIIAnAAIAAAzIAHAAIAAAXgAiBgSQAAANgDAKQgCAKgDAHIAcAAIAAgrIgUAAgAECAcQgGgEgDgHQgEgHAAgJIAAgCQAAgIAEgHQADgHAGgEQAGgEAIAAQAMAAAHAIQAHAIAAAPIAAADIgrAAQABAJAEAGQAFAGAJAAQAMAAAJgJIAAAJQgEAEgFACQgFACgHAAQgJAAgHgEgAEIgVQgEADgCAEQgDAFAAAFIAhAAQAAgJgEgFQgEgFgIAAQgEAAgEACgADEAcQgGgEgEgHQgDgHAAgJIAAgCQAAgIADgHQAEgHAGgEQAGgEAIAAQAMAAAHAIQAHAIAAAPIAAADIgrAAQAAAJAFAGQAFAGAIAAQANAAAIgJIAAAJQgEAEgFACQgFACgHAAQgJAAgGgEgADKgVQgEADgDAEQgCAFAAAFIAhAAQAAgJgFgFQgEgFgHAAQgFAAgDACgAA/AcQgHgEgDgIQgEgHAAgJIAAgBQAAgNACgIQADgJAFgFQAFgFAIgEIAHgCIAEgBIADgCQAAAAABAAQAAgBAAAAQABgBAAAAQAAgBAAAAIAJAAQAAAGgEADIgGAEIgJACQgHADgFADQgEADgCAGQAGgIALAAQAIAAAHAEQAGAEADAHQAEAHAAAJIAAABQAAAJgEAHQgDAHgGAEQgHAEgIAAQgIAAgGgEgABAgRQgFAGAAALIAAABQAAALAFAGQAEAGAJAAQAIAAAFgGQAFgHAAgKIAAgBQAAgLgFgGQgFgGgIAAQgJAAgEAGgAgCAcQgHgEgDgHQgEgHAAgJIAAgBQAAgJAEgHQADgHAHgEQAFgEAIAAQAIAAAHAEQAGAEAEAHQADAHAAAJIAAABQAAAJgDAHQgEAHgGAEQgHAEgIAAQgIAAgFgEgAgBgRQgFAHAAAKIAAABQAAAKAFAHQAEAGAIAAQAJAAAEgGQAFgHAAgKIAAgBQAAgKgFgHQgEgGgJAAQgIAAgEAGgAjMAcQgHgEgDgHQgEgHAAgJIAAgBQAAgJAEgHQADgHAHgEQAGgEAIAAQAIAAAHAEQAGAEAEAHQADAHAAAJIAAABQAAAJgDAHQgEAHgGAEQgHAEgIAAQgIAAgGgEgAjLgRQgFAHAAAKIAAABQAAAKAFAHQAFAGAIAAQAJAAAEgGQAFgHAAgKIAAgBQAAgKgFgHQgEgGgJAAQgIAAgFAGgACfAeIAAgbIgfAAIAAAbIgJAAIAAg7IAJAAIAAAZIAfAAIAAgZIAKAAIAAA7gAjzAeIAAhKIgsAAIAABKIgKAAIAAhTIBBAAIAABTg");
	this.shape.setTransform(32.775,8.075);

	this.timeline.addTween(cjs.Tween.get(this.shape).wait(1));

}).prototype = getMCSymbolPrototype(lib.btn_text, new cjs.Rectangle(0,-1,65.3,17.2), null);


(lib.btn_line2 = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// Layer_1
	this.shape = new cjs.Shape();
	this.shape.graphics.f().s("#FFFFFF").ss(1,1,1).p("AAABkIAAjH");
	this.shape.setTransform(0,10);

	this.timeline.addTween(cjs.Tween.get(this.shape).wait(1));

}).prototype = getMCSymbolPrototype(lib.btn_line2, new cjs.Rectangle(-1,-1,2,22), null);


(lib.btn_line1 = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// Layer_1
	this.shape = new cjs.Shape();
	this.shape.graphics.f().s("#FFFFFF").ss(1,1,1).p("AGzAAItlAA");
	this.shape.setTransform(46.525,0);

	this.timeline.addTween(cjs.Tween.get(this.shape).wait(1));

}).prototype = getMCSymbolPrototype(lib.btn_line1, new cjs.Rectangle(2.1,-1,88.9,2), null);


(lib.Arrow = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// Layer_10 (mask)
	var mask = new cjs.Shape();
	mask._off = true;
	mask.graphics.p("AgxAsIAAhXIBjAAIAABXg");
	mask.setTransform(4.1752,3.5724);

	// btn_arrow
	this.shape = new cjs.Shape();
	this.shape.graphics.f().s("#FFFFFF").ss(1,1,1).p("AgRAoIAjgoIgjgn");
	this.shape.setTransform(4.6174,3.6276,1.1056,1.1056);

	var maskedShapeInstanceList = [this.shape];

	for(var shapedInstanceItr = 0; shapedInstanceItr < maskedShapeInstanceList.length; shapedInstanceItr++) {
		maskedShapeInstanceList[shapedInstanceItr].mask = mask;
	}

	this.timeline.addTween(cjs.Tween.get(this.shape).wait(1));

}).prototype = getMCSymbolPrototype(lib.Arrow, new cjs.Rectangle(1.7,-0.8,5.8999999999999995,8.8), null);


(lib.Symbol20 = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// Layer_1
	this.instance = new lib.Kia_logo();
	this.instance.parent = this;
	this.instance.setTransform(85.4,-53.95,0.7036,0.7036,0,0,0,118.9,48);

	this.timeline.addTween(cjs.Tween.get(this.instance).wait(1));

	// Layer_2
	this.instance_1 = new lib.Symbol21();
	this.instance_1.parent = this;
	this.instance_1.setTransform(72.3,28.25,1.8477,1.2796,0,0,0,88.8,88.8);
	this.instance_1.alpha = 0.7109;

	this.timeline.addTween(cjs.Tween.get(this.instance_1).wait(1));

}).prototype = getMCSymbolPrototype(lib.Symbol20, new cjs.Rectangle(-91.8,-85.4,328.9,227.8), null);


(lib.Symbol19 = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// Layer_1
	this.shape = new cjs.Shape();
	this.shape.graphics.f("#FFFFFF").s().p("A+0KSQgcAAgRgWQgSgWAHgbIDzwHIWGAAQGyAACwjVIcAAAQi5J8pzFZQpdFOt+AAg");
	this.shape.setTransform(133.9442,51.1532,0.1313,0.1313);

	this.shape_1 = new cjs.Shape();
	this.shape_1.graphics.f("#FFFFFF").s().p("AzaOjQg5gHhzAAQkYAAhjiqQg+hpARiUIFH1qQAEgTAQgNQAPgMAUAAMAypAAEQAcAAARAXQARAVgHAbIjYNMQgFATgQALQgPAMgUABI6ugDQgUAAgPANQgQALgEAUIhWFeQgHAcATAWQASAWAdgCQG2gZGJA6QKPBgEDE0g");
	this.shape_1.setTransform(139.4766,18.3427,0.1313,0.1313);

	this.shape_2 = new cjs.Shape();
	this.shape_2.graphics.f("#FFFFFF").s().p("ACGEYIAAmgIj5GgIh1AAIAAovIBiAAIAAGhID6mhIB1AAIAAIvg");
	this.shape_2.setTransform(171.382,36.5869,0.1313,0.1313);

	this.shape_3 = new cjs.Shape();
	this.shape_3.graphics.f("#FFFFFF").s().p("ACGEYIAAmgIj5GgIh1AAIAAovIBiAAIAAGhID6mhIB1AAIAAIvg");
	this.shape_3.setTransform(163.6653,36.5869,0.1313,0.1313);

	this.shape_4 = new cjs.Shape();
	this.shape_4.graphics.f("#FFFFFF").s().p("AgwEYIAAneIisAAIAAhRIG4AAIAABRIiqAAIAAHeg");
	this.shape_4.setTransform(156.6678,36.5869,0.1313,0.1313);

	this.shape_5 = new cjs.Shape();
	this.shape_5.graphics.f("#FFFFFF").s().p("ACOEYIAAj5IkbAAIAAD5IhjAAIAAovIBjAAIAADmIEbAAIAAjmIBjAAIAAIvg");
	this.shape_5.setTransform(149.5717,36.5869,0.1313,0.1313);

	this.shape_6 = new cjs.Shape();
	this.shape_6.graphics.f("#FFFFFF").s().p("AChEYIg4iZIjbAAIg4CZIhiAAIDWovIBtAAIDWIvgAhUAvICfAAIhPjXg");
	this.shape_6.setTransform(141.9338,36.5869,0.1313,0.1313);

	this.shape_7 = new cjs.Shape();
	this.shape_7.graphics.f("#FFFFFF").s().p("AjMEYIAAovIDfAAQBRABAzAqQA2AsAABNIAAAMQAABNg2ArQgzArhRAAIh7AAIAADcgAhogTIBtAAQAqAAAagXQAbgXAAgnIAAgLQAAgngbgWQgagYgqAAIhtAAg");
	this.shape_7.setTransform(135.8097,36.5869,0.1313,0.1313);

	this.shape_8 = new cjs.Shape();
	this.shape_8.graphics.f("#FFFFFF").s().p("AChEYIg4iZIjbAAIg4CZIhiAAIDWovIBtAAIDWIvgAhUAvICfAAIhPjXg");
	this.shape_8.setTransform(128.648,36.5869,0.1313,0.1313);

	this.shape_9 = new cjs.Shape();
	this.shape_9.graphics.f("#FFFFFF").s().p("AikEYIAAovIFJAAIAABRIjmAAIAAHeg");
	this.shape_9.setTransform(123.2365,36.5869,0.1313,0.1313);

	this.shape_10 = new cjs.Shape();
	this.shape_10.graphics.f("#FFFFFF").s().p("AgwEYIAAneIirAAIAAhRIG4AAIAABRIiqAAIAAHeg");
	this.shape_10.setTransform(113.2639,36.5869,0.1313,0.1313);

	this.shape_11 = new cjs.Shape();
	this.shape_11.graphics.f("#FFFFFF").s().p("AiyEYIAAovIFhAAIAABRIj9AAIAACWIDUAAIAABQIjUAAIAACmIEBAAIAABSg");
	this.shape_11.setTransform(107.2679,36.5869,0.1313,0.1313);

	this.shape_12 = new cjs.Shape();
	this.shape_12.graphics.f("#FFFFFF").s().p("Aj2EVIAAhRQAQAHAWAAQAoAAAQgeQAUgkAEhiIALlDIFsAAIAAIuIhjAAIAAndIipAAIgJEPQgFB+g4A0QgpAnhMAAQgYAAgOgIg");
	this.shape_12.setTransform(100.0963,36.6591,0.1313,0.1313);

	this.shape_13 = new cjs.Shape();
	this.shape_13.graphics.f("#FFFFFF").s().p("Eg8AAAgIAAg/MB4BAAAIAAA/g");
	this.shape_13.setTransform(136.171,65.4276,0.1313,0.1313);

	this.shape_14 = new cjs.Shape();
	this.shape_14.graphics.f("#FFFFFF").s().p("EgxtAv+QkdAAjMjKQjKjLAAkdMAAAhKXQAAkdDKjLQBghfB8g1QCAg2CNAAMBjbAAAQEeAADLDKQDKDLAAEdMAAABKXQAAEdjKDLQjLDKkeAAgEg4ogsGQi4C4AAEDMAAABKXQAAEDC4C4QC4C3EDAAMBjbAAAQEEAAC4i3QC3i4AAkDMAAAhKXQAAkDi3i4Qi4i3kEAAMhjbAAAQkDAAi4C3g");
	this.shape_14.setTransform(136.171,40.327,0.1313,0.1313);

	this.shape_15 = new cjs.Shape();
	this.shape_15.graphics.f("#FFFFFF").s().p("AhtB7QgqgvAAhIIAAgIQAAhJAqguQAqguBDAAQBEAAAqAuQApAuABBJIAAAIQgBBJgpAuQgqAvhEAAQhDAAgqgvgAhPhlQgdAlAAA8IAAAIQAAA8AdAlQAfAlAwAAQAyAAAeglQAdglAAg8IAAgIQAAg8gdglQgeglgyAAQgwAAgfAlg");
	this.shape_15.setTransform(177.6768,72.76,0.1313,0.1313);

	this.shape_16 = new cjs.Shape();
	this.shape_16.graphics.f("#FFFFFF").s().p("ABcCkIAAiYIi3AAIAACYIgnAAIAAlHIAnAAIAACPIC3AAIAAiPIAnAAIAAFHg");
	this.shape_16.setTransform(172.8958,72.76,0.1313,0.1313);

	this.shape_17 = new cjs.Shape();
	this.shape_17.graphics.f("#FFFFFF").s().p("AhiCkIAAlHIDDAAIAAAhIibAAIAABuICDAAIAAAgIiDAAIAAB3ICdAAIAAAhg");
	this.shape_17.setTransform(168.7879,72.76,0.1313,0.1313);

	this.shape_18 = new cjs.Shape();
	this.shape_18.graphics.f("#FFFFFF").s().p("AByDHIAAhGIjjAAIAABGIglAAIAAhmIAZAAQAyhUAAiwIAAgiIDAAAIAAEmIAiAAIAABmgAgvgGQgNA8gYArIChAAIAAkGIhwAAQgBBfgLBAg");
	this.shape_18.setTransform(164.6274,73.2132,0.1313,0.1313);

	this.shape_19 = new cjs.Shape();
	this.shape_19.graphics.f("#FFFFFF").s().p("ACYCkIiEiZIAACZIgnAAIAAiZIiECZIg1AAICUinIiOigIAwAAICDCVIAAiVIAnAAIAACVICDiVIAwAAIiOCgICUCng");
	this.shape_19.setTransform(159.4819,72.76,0.1313,0.1313);

	this.shape_20 = new cjs.Shape();
	this.shape_20.graphics.f("#FFFFFF").s().p("AhxCkIAAlHIB2AAQAxAAAeAaQAeAZAAAqIAAAGQAAApgeAaQgeAagxAAIhOAAIAACHgAhJgEIBJAAQAiAAATgQQATgRAAgbIAAgGQAAgcgTgQQgTgRgiAAIhJAAg");
	this.shape_20.setTransform(154.7008,72.76,0.1313,0.1313);

	this.shape_21 = new cjs.Shape();
	this.shape_21.graphics.f("#FFFFFF").s().p("AhiCkIAAlHIDDAAIAAAhIibAAIAABuICDAAIAAAgIiDAAIAAB3ICdAAIAAAhg");
	this.shape_21.setTransform(150.8261,72.76,0.1313,0.1313);

	this.shape_22 = new cjs.Shape();
	this.shape_22.graphics.f("#FFFFFF").s().p("AhxCkIAAlHIB0AAQArAAAcAYQAbAXAAAlIAAAEQAAAYgPATQgNAQgXAJQAcAHARAUQATAUAAAdIAAAHQAAApgeAYQgdAXgvAAgAhJCDIBMAAQAdAAAUgOQAUgPAAgbIAAgGQAAgagUgRQgUgPgdABIhMAAgAhJgUIBHAAQAbAAARgQQARgOAAgXIAAgEQAAgYgRgOQgRgPgbAAIhHAAg");
	this.shape_22.setTransform(146.994,72.76,0.1313,0.1313);

	this.shape_23 = new cjs.Shape();
	this.shape_23.graphics.f("#FFFFFF").s().p("AgTCkIAAkmIhlAAIAAghIDxAAIAAAhIhlAAIAAEmg");
	this.shape_23.setTransform(142.9846,72.76,0.1313,0.1313);

	this.shape_24 = new cjs.Shape();
	this.shape_24.graphics.f("#FFFFFF").s().p("AByDHIAAhGIjjAAIAABGIglAAIAAhmIAaAAQAyhUAAiwIAAgiIC/AAIAAEmIAiAAIAABmgAgvgGQgMA8gZArICiAAIAAkGIhwAAQgBBfgMBAg");
	this.shape_24.setTransform(138.8439,73.2132,0.1313,0.1313);

	this.shape_25 = new cjs.Shape();
	this.shape_25.graphics.f("#FFFFFF").s().p("AhtB7QgpgvAAhIIAAgIQAAhJApguQAqguBDAAQBEAAAqAuQApAuAABJIAAAIQAABJgpAuQgqAvhEAAQhDAAgqgvgAhPhlQgeAlAAA8IAAAIQAAA8AeAlQAeAlAxAAQAyAAAeglQAdglAAg8IAAgIQAAg8gdglQgeglgyAAQgxAAgeAlg");
	this.shape_25.setTransform(134.1778,72.76,0.1313,0.1313);

	this.shape_26 = new cjs.Shape();
	this.shape_26.graphics.f("#FFFFFF").s().p("ABYCkIAAkmIiuAAIAAEmIgoAAIAAlHID9AAIAAFHg");
	this.shape_26.setTransform(129.4492,72.76,0.1313,0.1313);

	this.shape_27 = new cjs.Shape();
	this.shape_27.graphics.f("#FFFFFF").s().p("AhtB7QgpgvAAhIIAAgIQAAhJApguQAqguBDAAQBEAAAqAuQApAuAABJIAAAIQAABJgpAuQgqAvhEAAQhDAAgqgvgAhPhlQgeAlAAA8IAAAIQAAA8AeAlQAeAlAxAAQAyAAAeglQAdglAAg8IAAgIQAAg8gdglQgeglgyAAQgxAAgeAlg");
	this.shape_27.setTransform(122.895,72.76,0.1313,0.1313);

	this.shape_28 = new cjs.Shape();
	this.shape_28.graphics.f("#FFFFFF").s().p("AhxCkIAAlHIBzAAQAsAAAbAYQAbAXAAAlIAAAEQAAAYgOATQgNAQgXAJQAcAHARAUQATAUAAAdIAAAHQAAApgfAYQgcAXgvAAgAhJCDIBLAAQAeAAAUgOQAUgPABgbIAAgGQgBgagUgRQgUgPgeABIhLAAgAhJgUIBGAAQAcAAARgQQARgOAAgXIAAgEQAAgYgRgOQgRgPgcAAIhGAAg");
	this.shape_28.setTransform(118.5572,72.76,0.1313,0.1313);

	this.shape_29 = new cjs.Shape();
	this.shape_29.graphics.f("#FFFFFF").s().p("AgSCkIAAkmIhmAAIAAghIDxAAIAAAhIhlAAIAAEmg");
	this.shape_29.setTransform(114.5413,72.76,0.1313,0.1313);

	this.shape_30 = new cjs.Shape();
	this.shape_30.graphics.f("#FFFFFF").s().p("AhVB8QgrgvAAhJIAAgIQAAhJArguQArguBDAAQAfgBAdAMQAaALASARIAAAuQgpg1g+gBQgvAAggAlQggAnAAA6IAAAIQAAA7AgAmQAgAlAuAAQAhAAAcgPQAZgOASgYIAAAuQgSARgaALQgdALgfAAQhDAAgrgug");
	this.shape_30.setTransform(110.5023,72.76,0.1313,0.1313);

	this.shape_31 = new cjs.Shape();
	this.shape_31.graphics.f("#FFFFFF").s().p("AhiCkIAAlHIDCAAIAAAhIiaAAIAABuICDAAIAAAgIiDAAIAAB3ICdAAIAAAhg");
	this.shape_31.setTransform(106.6539,72.76,0.1313,0.1313);

	this.shape_32 = new cjs.Shape();
	this.shape_32.graphics.f("#FFFFFF").s().p("ABXCkIAAiVQgmAsg4AAQg2ABghgkQggghAAg2IAAhkIAoAAIAABiQAAAsAXAZQAWAYAlAAQA6AAAhg4IAAiHIAoAAIAAFHg");
	this.shape_32.setTransform(102.4409,72.76,0.1313,0.1313);

	this.shape_33 = new cjs.Shape();
	this.shape_33.graphics.f("#FFFFFF").s().p("ABlCkIgjhfIiGAAIgjBfIgoAAIB8lHIAnAAIB8FHgAg3AkIBtAAIg2iUg");
	this.shape_33.setTransform(98.1951,72.76,0.1313,0.1313);

	this.shape_34 = new cjs.Shape();
	this.shape_34.graphics.f("#FFFFFF").s().p("ABECkIiYiZIAACZIgoAAIAAlHIAoAAIAACVICXiVIA0AAIikCgICqCng");
	this.shape_34.setTransform(94.2415,72.76,0.1313,0.1313);

	this.shape_35 = new cjs.Shape();
	this.shape_35.graphics.f("#CCCCCC").s().p("AgFAGIAAgLIALAAIAAALg");
	this.shape_35.setTransform(60.55,181.35);

	this.shape_36 = new cjs.Shape();
	this.shape_36.graphics.f("#CCCCCC").s().p("AgUAYQgIgJAAgOQAAgQAIgIQAIgJAMAAQANAAAIAJQAIAIAAAPIgBACIgtAAQABALAFAGQAFAEAHAAQAGAAAEgDQAEgCACgHIALABQgCAKgHAFQgHAGgLgBQgNABgIgJgAgLgSQgFAFAAAIIAhAAQAAgIgEgEQgFgGgIAAQgGAAgFAFg");
	this.shape_36.setTransform(55.525,178.85);

	this.shape_37 = new cjs.Shape();
	this.shape_37.graphics.f("#CCCCCC").s().p("AAXAfIAAgxIgTAxIgIAAIgSg0IAAA0IgKAAIAAg9IAQAAIAQAxIASgxIAPAAIAAA9g");
	this.shape_37.setTransform(48.075,178.85);

	this.shape_38 = new cjs.Shape();
	this.shape_38.graphics.f("#CCCCCC").s().p("AgWAcQgGgGAAgIQABgEACgEQACgEADgCIAHgDIAKgBQAMgBAFgCIAAgDQAAgGgCgEQgEgDgIAAQgGAAgFACQgDAEgBAGIgLgCQABgGAEgEQADgEAGgDQAGgCAHAAQAIABAFABQAFACACADQADADABAEIAAAKIAAANIABASQABAEACAEIgLAAIgDgIQgGAGgFABQgEACgGAAQgLAAgFgEgAgCAEQgGABgDABQgDABgBADQgBABAAADQgBAFAEACQADADAGAAQAFAAAFgDQAEgCADgFQACgDgBgIIAAgDIgQAEg");
	this.shape_38.setTransform(40.6,178.85);

	this.shape_39 = new cjs.Shape();
	this.shape_39.graphics.f("#CCCCCC").s().p("AgdAfIAAgJIAEAAIAFgBIACgCIAAgJIAAgoIAwAAIAAA9IgKAAIAAg1IgbAAIAAAeIgBAPQgBADgDADQgDACgGAAIgIAAg");
	this.shape_39.setTransform(33.475,178.875);

	this.shape_40 = new cjs.Shape();
	this.shape_40.graphics.f("#CCCCCC").s().p("AALAfIgLgTIgFgIQgDgCgDAAIAAAdIgLAAIAAg9IALAAIAAAaQAFAAACgCQACgBADgJQADgIACgCIAEgEIAIAAIACAAIAAAIIgDAAQgEAAgBABIgEAIIgEAJIgFAEQAGABAGALIAMATg");
	this.shape_40.setTransform(28.125,178.85);

	this.shape_41 = new cjs.Shape();
	this.shape_41.graphics.f("#CCCCCC").s().p("AgUAYQgIgJAAgOQAAgQAIgIQAIgJAMAAQANAAAIAJQAIAIAAAPIgBACIgtAAQABALAFAGQAFAEAHAAQAGAAAEgDQAEgCACgHIALABQgCAKgHAFQgHAGgLgBQgNABgIgJgAgLgSQgFAFAAAIIAhAAQAAgIgEgEQgFgGgIAAQgGAAgFAFg");
	this.shape_41.setTransform(21.725,178.85);

	this.shape_42 = new cjs.Shape();
	this.shape_42.graphics.f("#CCCCCC").s().p("AgaAsIAAhVIAJAAIAAAIQAEgFAEgCQAFgDAFAAQAIAAAGAEQAGAEADAIQADAHAAAJQAAAKgDAGQgEAIgHAEQgGAEgHAAQgFAAgDgCQgFgCgDgEIAAAfgAgLgcQgGAGAAAMQAAALAGAGQAEAFAHAAQAGAAAFgFQAFgGAAgMQAAgMgFgGQgFgGgGAAQgGAAgFAHg");
	this.shape_42.setTransform(15.25,179.975);

	this.shape_43 = new cjs.Shape();
	this.shape_43.graphics.f("#CCCCCC").s().p("AgZAfIAAg9IAZAAQAIAAAEABQAEACADADQAEAFAAAFQAAAFgCADQgCADgDADQAEAAACAEQAEAEAAAFQgBAJgGAFQgGAEgLAAgAgOAWIAOAAQAIAAADgCQAEgCAAgFQAAgDgCgCQgCgDgDgBIgJgBIgNAAgAgOgEIAMAAIAIgBIAEgCQACgDAAgDQAAgEgDgDQgEgCgHAAIgMAAg");
	this.shape_43.setTransform(5.35,178.85);

	this.shape_44 = new cjs.Shape();
	this.shape_44.graphics.f("#CCCCCC").s().p("AgUAYQgIgJAAgPQAAgRAJgHQAIgIALABQANAAAIAIQAIAIAAAPQAAALgEAHQgDAHgHAEQgHADgIAAQgMAAgIgIgAgMgRQgFAGAAALQAAAMAFAGQAFAFAHAAQAIAAAFgFQAFgGAAgMQAAgLgFgGQgFgGgIAAQgHAAgFAGg");
	this.shape_44.setTransform(214.875,166.5);

	this.shape_45 = new cjs.Shape();
	this.shape_45.graphics.f("#CCCCCC").s().p("AgRAfIAAg9IAjAAIAAAIIgZAAIAAA1g");
	this.shape_45.setTransform(209.75,166.5);

	this.shape_46 = new cjs.Shape();
	this.shape_46.graphics.f("#CCCCCC").s().p("AgUAYQgIgJAAgPQAAgRAJgHQAIgIALABQANAAAIAIQAIAIAAAPQAAALgEAHQgDAHgHAEQgHADgIAAQgMAAgIgIgAgMgRQgFAGAAALQAAAMAFAGQAFAFAHAAQAIAAAFgFQAFgGAAgMQAAgLgFgGQgFgGgIAAQgHAAgFAGg");
	this.shape_46.setTransform(203.825,166.5);

	this.shape_47 = new cjs.Shape();
	this.shape_47.graphics.f("#CCCCCC").s().p("AAPAfIAAgbIgdAAIAAAbIgKAAIAAg9IAKAAIAAAaIAdAAIAAgaIAKAAIAAA9g");
	this.shape_47.setTransform(197.175,166.5);

	this.shape_48 = new cjs.Shape();
	this.shape_48.graphics.f("#CCCCCC").s().p("AAPAfIAAgbIgdAAIAAAbIgKAAIAAg9IAKAAIAAAaIAdAAIAAgaIAKAAIAAA9g");
	this.shape_48.setTransform(190.525,166.5);

	this.shape_49 = new cjs.Shape();
	this.shape_49.graphics.f("#CCCCCC").s().p("AgUAYQgIgIAAgPQAAgQAIgIQAIgIAMAAQANAAAIAIQAIAJAAAOIgBADIgtAAQABAKAFAGQAFAEAHAAQAGAAAEgCQAEgDACgHIALACQgCAJgHAFQgHAFgLAAQgNAAgIgIgAgLgSQgFAFAAAIIAhAAQAAgIgEgEQgFgGgIAAQgGAAgFAFg");
	this.shape_49.setTransform(183.875,166.5);

	this.shape_50 = new cjs.Shape();
	this.shape_50.graphics.f("#CCCCCC").s().p("AgdAfIAAgJIAEAAIAFgBIACgCIAAgJIAAgoIAwAAIAAA9IgKAAIAAg1IgbAAIAAAeIgBAPQgBADgDADQgDACgGAAIgIAAg");
	this.shape_50.setTransform(176.725,166.525);

	this.shape_51 = new cjs.Shape();
	this.shape_51.graphics.f("#CCCCCC").s().p("AgZAfIAAg9IAZAAQAIAAAEABQAEACADAEQAEADAAAHQAAAEgCADQgCADgDACQAEABACAEQAEAEAAAFQgBAKgGADQgGAFgLAAgAgOAXIAOAAQAIgBADgBQAEgDAAgFQAAgDgCgDQgCgCgDgBIgJAAIgNAAgAgOgEIAMAAIAIAAIAEgDQACgDAAgDQAAgEgDgDQgEgCgHAAIgMAAg");
	this.shape_51.setTransform(170.5,166.5);

	this.shape_52 = new cjs.Shape();
	this.shape_52.graphics.f("#CCCCCC").s().p("AgWAcQgGgFAAgJQAAgEADgEQABgEAEgCIAHgDIAKgBQALgCAGgBIAAgDQAAgHgCgDQgFgDgHAAQgGAAgFACQgDADgBAHIgLgCQABgGAEgEQADgEAGgDQAGgBAHAAQAIgBAFACQAFACADADQACADABAEIAAAKIAAANIABASQABAEACAEIgMAAIgCgIQgGAFgFADQgEABgGAAQgKAAgGgEgAgCAEQgGAAgDACQgDABgBADQgBACAAACQAAAEADAEQADACAGAAQAFAAAFgCQAEgDADgFQACgEgBgGIAAgEIgQAEg");
	this.shape_52.setTransform(163.8,166.5);

	this.shape_53 = new cjs.Shape();
	this.shape_53.graphics.f("#CCCCCC").s().p("AgEAfIAAg1IgVAAIAAgIIAyAAIAAAIIgTAAIAAA1g");
	this.shape_53.setTransform(157.75,166.5);

	this.shape_54 = new cjs.Shape();
	this.shape_54.graphics.f("#CCCCCC").s().p("AgSAYQgIgJAAgPQAAgJADgHQAEgIAGgEQAHgDAHAAQAKAAAHAEQAGAGACAJIgKABQgCgFgDgEQgEgDgFAAQgHAAgFAGQgFAFAAAMQAAANAFAFQAEAFAHAAQAGAAAEgDQAFgEABgIIAKACQgCAKgHAGQgHAHgKgBQgMAAgHgIg");
	this.shape_54.setTransform(152.175,166.5);

	this.shape_55 = new cjs.Shape();
	this.shape_55.graphics.f("#CCCCCC").s().p("AAYAoIAAgSIgwAAIAAASIgIAAIAAgaIAFAAQALgPAAgmIAqAAIAAA1IAHAAIAAAagAgRAOIAhAAIAAgsIgXAAQgBAegJAOg");
	this.shape_55.setTransform(145.325,167.375);

	this.shape_56 = new cjs.Shape();
	this.shape_56.graphics.f("#CCCCCC").s().p("AgUAYQgIgIAAgPQAAgQAIgIQAIgIAMAAQANAAAIAIQAIAJAAAOIgBADIgtAAQABAKAFAGQAFAEAHAAQAGAAAEgCQAEgDACgHIALACQgCAJgHAFQgHAFgLAAQgNAAgIgIgAgLgSQgFAFAAAIIAhAAQAAgIgEgEQgFgGgIAAQgGAAgFAFg");
	this.shape_56.setTransform(138.675,166.5);

	this.shape_57 = new cjs.Shape();
	this.shape_57.graphics.f("#CCCCCC").s().p("AgaAsIAAhVIAJAAIAAAIQAEgFAEgCQAEgDAFAAQAJAAAFAEQAGAEAEAIQADAHAAAJQAAAKgDAGQgEAIgGAEQgHAEgHAAQgFAAgEgCQgEgCgCgEIAAAfgAgMgcQgEAGgBAMQABALAEAGQAFAFAHAAQAGAAAFgFQAFgGAAgMQAAgMgEgGQgGgGgGAAQgGAAgGAHg");
	this.shape_57.setTransform(132.2,167.625);

	this.shape_58 = new cjs.Shape();
	this.shape_58.graphics.f("#CCCCCC").s().p("AAOAfIAAg1IgbAAIAAA1IgKAAIAAg9IAvAAIAAA9g");
	this.shape_58.setTransform(125.45,166.5);

	this.shape_59 = new cjs.Shape();
	this.shape_59.graphics.f("#CCCCCC").s().p("AgEAfIAAg1IgUAAIAAgIIAxAAIAAAIIgUAAIAAA1g");
	this.shape_59.setTransform(116.1,166.5);

	this.shape_60 = new cjs.Shape();
	this.shape_60.graphics.f("#CCCCCC").s().p("AgUAYQgIgJAAgPQAAgRAJgHQAIgIALABQANAAAIAIQAIAIAAAPQAAALgEAHQgDAHgHAEQgHADgIAAQgMAAgIgIgAgMgRQgFAGAAALQAAAMAFAGQAFAFAHAAQAIAAAFgFQAFgGAAgMQAAgLgFgGQgFgGgIAAQgHAAgFAGg");
	this.shape_60.setTransform(110.025,166.5);

	this.shape_61 = new cjs.Shape();
	this.shape_61.graphics.f("#CCCCCC").s().p("AARAfIAAgZIgGAAQgGABgCABQgDACgEAHIgJAOIgOAAIAMgRQAFgIAFgBQgJgBgFgEQgDgFAAgHQgBgIAGgFQAFgFALAAIAcAAIAAA9gAgJgTQgDAEAAADQAAAGAEADQAEACAJAAIAMAAIAAgVIgPAAQgJAAgCADg");
	this.shape_61.setTransform(99.8,166.5);

	this.shape_62 = new cjs.Shape();
	this.shape_62.graphics.f("#CCCCCC").s().p("AgSAYQgIgJAAgPQAAgJADgHQAEgIAGgEQAHgDAHAAQAKAAAHAEQAGAGACAJIgKABQgCgFgDgEQgEgDgFAAQgHAAgFAGQgFAFAAAMQAAANAFAFQAEAFAHAAQAGAAAEgDQAFgEABgIIAKACQgCAKgHAGQgHAHgKgBQgMAAgHgIg");
	this.shape_62.setTransform(94.025,166.5);

	this.shape_63 = new cjs.Shape();
	this.shape_63.graphics.f("#CCCCCC").s().p("AgZAfIAAg9IALAAIAAAYIANAAQAMAAAIAFQAHAEAAAJQAAAIgGAFQgGAGgNAAgAgOAXIALAAQAJgBAEgCQAFgCAAgGQAAgEgDgDQgEgDgJAAIgNAAg");
	this.shape_63.setTransform(87.975,166.5);

	this.shape_64 = new cjs.Shape();
	this.shape_64.graphics.f("#CCCCCC").s().p("AgEAfIAAg1IgUAAIAAgIIAxAAIAAAIIgUAAIAAA1g");
	this.shape_64.setTransform(81.9,166.5);

	this.shape_65 = new cjs.Shape();
	this.shape_65.graphics.f("#CCCCCC").s().p("AgWAcQgGgFABgJQAAgEACgEQACgEADgCIAHgDIAKgBQAMgCAFgBIAAgDQAAgHgDgDQgEgDgHAAQgGAAgFACQgDADgBAHIgLgCQACgGADgEQADgEAGgDQAGgBAHAAQAIgBAFACQAFACACADQADADABAEIABAKIAAANIAAASQABAEACAEIgLAAIgDgIQgFAFgGADQgEABgGAAQgLAAgFgEgAgCAEQgGAAgDACQgCABgCADQgCACABACQgBAEAEAEQADACAGAAQAFAAAFgCQAEgDADgFQABgEAAgGIAAgEIgQAEg");
	this.shape_65.setTransform(75.8,166.5);

	this.shape_66 = new cjs.Shape();
	this.shape_66.graphics.f("#CCCCCC").s().p("AAPAfIAAgZQgKADgHAAQgHAAgGgEQgFgDgCgFQgCgEAAgHIAAgQIAKAAIAAALIABAMQABADAEACQADACAFAAQAFAAAKgCIAAgcIAKAAIAAA9g");
	this.shape_66.setTransform(69.225,166.5);

	this.shape_67 = new cjs.Shape();
	this.shape_67.graphics.f("#CCCCCC").s().p("AAPAfIAAguIgcAuIgMAAIAAg9IALAAIAAAuIAcguIAMAAIAAA9g");
	this.shape_67.setTransform(62.95,166.5);

	this.shape_68 = new cjs.Shape();
	this.shape_68.graphics.f("#CCCCCC").s().p("AgdAfIAAgJIAEAAIAFgBIACgCIAAgJIAAgoIAwAAIAAA9IgKAAIAAg1IgbAAIAAAeIgBAPQgBADgDADQgDACgGAAIgIAAg");
	this.shape_68.setTransform(55.775,166.525);

	this.shape_69 = new cjs.Shape();
	this.shape_69.graphics.f("#CCCCCC").s().p("AgEAfIAAg1IgUAAIAAgIIAxAAIAAAIIgUAAIAAA1g");
	this.shape_69.setTransform(49.85,166.5);

	this.shape_70 = new cjs.Shape();
	this.shape_70.graphics.f("#CCCCCC").s().p("AgUAYQgIgJAAgPQAAgRAJgHQAIgIALABQANAAAIAIQAIAIAAAPQAAALgEAHQgDAHgHAEQgHADgIAAQgMAAgIgIgAgMgRQgFAGAAALQAAAMAFAGQAFAFAHAAQAIAAAFgFQAFgGAAgMQAAgLgFgGQgFgGgIAAQgHAAgFAGg");
	this.shape_70.setTransform(43.775,166.5);

	this.shape_71 = new cjs.Shape();
	this.shape_71.graphics.f("#CCCCCC").s().p("AgEAfIAAg1IgVAAIAAgIIAyAAIAAAIIgTAAIAAA1g");
	this.shape_71.setTransform(34.35,166.5);

	this.shape_72 = new cjs.Shape();
	this.shape_72.graphics.f("#CCCCCC").s().p("AgUAYQgIgIAAgPQAAgQAIgIQAIgIAMAAQANAAAIAIQAIAJAAAOIgBADIgtAAQABAKAFAGQAFAEAHAAQAGAAAEgCQAEgDACgHIALACQgCAJgHAFQgHAFgLAAQgNAAgIgIgAgLgSQgFAFAAAIIAhAAQAAgIgEgEQgFgGgIAAQgGAAgFAFg");
	this.shape_72.setTransform(28.275,166.5);

	this.shape_73 = new cjs.Shape();
	this.shape_73.graphics.f("#CCCCCC").s().p("AAdAfIgLgTQgEgGgDgCQgCgCgEAAIAAAdIgKAAIAAgdQgDAAgDACIgFAIIgLATIgNAAIANgTQAGgLAHgBQgFgCgCgCQgCgDgDgKIgEgEIgEgBIgDAAIAAgIIACAAIAIAAQACABACACIAGALQADAIACADQACACAFAAIAAgbIAKAAIAAAbQAGAAABgCQACgCAFgJQAEgKACgCQADgCAHAAIADAAIAAAIIgCAAQgFAAgBABIgEAIIgEAJIgHAEQAIABAGALIALATg");
	this.shape_73.setTransform(20.9,166.5);

	this.shape_74 = new cjs.Shape();
	this.shape_74.graphics.f("#CCCCCC").s().p("AgUAYQgIgJAAgPQAAgRAJgHQAIgIALABQANAAAIAIQAIAIAAAPQAAALgEAHQgDAHgHAEQgHADgIAAQgMAAgIgIgAgMgRQgFAGAAALQAAAMAFAGQAFAFAHAAQAIAAAFgFQAFgGAAgMQAAgLgFgGQgFgGgIAAQgHAAgFAGg");
	this.shape_74.setTransform(13.575,166.5);

	this.shape_75 = new cjs.Shape();
	this.shape_75.graphics.f("#CCCCCC").s().p("AAXAfIAAgxIgTAxIgIAAIgSg0IAAA0IgKAAIAAg9IAQAAIAQAxIASgxIAPAAIAAA9g");
	this.shape_75.setTransform(6.125,166.5);

	this.shape_76 = new cjs.Shape();
	this.shape_76.graphics.f("#CCCCCC").s().p("AARAfIAAgYIgGAAQgGAAgDABQgCACgFAHIgJAOIgMAAIAKgRQAGgHAFgBQgJgCgEgEQgFgFAAgHQABgIAFgFQAGgFALAAIAcAAIAAA9gAgJgTQgDAEAAAEQAAAFAEADQAEACAJAAIAMAAIAAgUIgPAAQgJAAgCACg");
	this.shape_76.setTransform(233.85,154.15);

	this.shape_77 = new cjs.Shape();
	this.shape_77.graphics.f("#CCCCCC").s().p("AgdAfIAAgJIAEAAIAFgBIACgCIAAgJIAAgoIAwAAIAAA9IgKAAIAAg1IgbAAIAAAeIgBAPQgBADgDADQgDACgGAAIgIAAg");
	this.shape_77.setTransform(227.075,154.175);

	this.shape_78 = new cjs.Shape();
	this.shape_78.graphics.f("#CCCCCC").s().p("AAPAfIAAguIgcAuIgMAAIAAg9IALAAIAAAuIAcguIAMAAIAAA9g");
	this.shape_78.setTransform(220.55,154.15);

	this.shape_79 = new cjs.Shape();
	this.shape_79.graphics.f("#CCCCCC").s().p("AgQAoQgGgFgDgIQgDgIAAgTQAAgZAIgIQAIgJARAAIAMAAQAAAAAAAAQABAAAAgBQAAAAAAAAQABAAAAgBIAJAAQgBAHgCACQgCADgDAAIgNABQgNAAgEADQgFACgCAGQgCAFAAAJQAEgGAFgDQAFgDAGAAQAMAAAIAIQAIAJAAANQAAALgEAHQgEAHgFAEQgGAEgJAAQgLAAgGgFgAgMgDQgFAGAAALQAAALAGAFQAFAGAHAAQAHAAAFgGQAFgHAAgLQAAgKgEgFQgFgGgIAAQgIAAgFAGg");
	this.shape_79.setTransform(213.825,152.925);

	this.shape_80 = new cjs.Shape();
	this.shape_80.graphics.f("#CCCCCC").s().p("AgUAYQgIgIAAgQQAAgRAJgIQAIgGALAAQANgBAIAJQAIAIAAAPQAAALgEAHQgDAHgHADQgHAFgIAAQgMAAgIgJgAgMgRQgFAGAAALQAAAMAFAGQAFAFAHABQAIgBAFgFQAFgGAAgMQAAgLgFgGQgFgGgIAAQgHAAgFAGg");
	this.shape_80.setTransform(207.025,154.15);

	this.shape_81 = new cjs.Shape();
	this.shape_81.graphics.f("#CCCCCC").s().p("AAXAfIAAgxIgTAxIgIAAIgSgzIAAAzIgKAAIAAg9IAQAAIAQAwIASgwIAPAAIAAA9g");
	this.shape_81.setTransform(199.575,154.15);

	this.shape_82 = new cjs.Shape();
	this.shape_82.graphics.f("#CCCCCC").s().p("AgUAYQgIgIAAgQQAAgRAJgIQAIgGALAAQANgBAIAJQAIAIAAAPQAAALgEAHQgDAHgHADQgHAFgIAAQgMAAgIgJgAgMgRQgFAGAAALQAAAMAFAGQAFAFAHABQAIgBAFgFQAFgGAAgMQAAgLgFgGQgFgGgIAAQgHAAgFAGg");
	this.shape_82.setTransform(192.125,154.15);

	this.shape_83 = new cjs.Shape();
	this.shape_83.graphics.f("#CCCCCC").s().p("AgEAfIAAg0IgUAAIAAgJIAyAAIAAAJIgVAAIAAA0g");
	this.shape_83.setTransform(186.05,154.15);

	this.shape_84 = new cjs.Shape();
	this.shape_84.graphics.f("#CCCCCC").s().p("AgZAfIAAg9IAZAAQAIAAAEABQAEACADAEQAEADAAAHQAAAEgCADQgCADgDACQAEABADAEQACAEAAAGQAAAIgGAEQgGAFgKAAgAgOAXIAOAAQAIAAADgCQADgDABgFQgBgDgBgDQgCgCgDAAIgJgBIgNAAgAgOgEIAMAAIAIAAIAEgEQACgCAAgCQAAgGgEgCQgDgBgHAAIgMAAg");
	this.shape_84.setTransform(180.25,154.15);

	this.shape_85 = new cjs.Shape();
	this.shape_85.graphics.f("#CCCCCC").s().p("AgWAbQgGgFABgHQAAgFACgDQACgEADgDIAHgCIAKgCQAMgCAFgCIAAgCQAAgHgDgDQgEgDgHAAQgHAAgDADQgEADgCAGIgKgBQABgHAEgEQADgEAGgCQAGgCAHAAQAIAAAFABQAFACACADQADADABAEIABAKIAAANIAAATQAAADACAEIgKAAIgCgHQgGAFgGACQgEACgGAAQgLAAgFgGgAgBAEQgHAAgDACQgCABgCACQgCACABAEQAAADADAEQADACAGAAQAFAAAFgCQAEgDADgFQABgEAAgGIAAgEIgPAEg");
	this.shape_85.setTransform(173.55,154.15);

	this.shape_86 = new cjs.Shape();
	this.shape_86.graphics.f("#CCCCCC").s().p("AAYAoIAAgSIgwAAIAAASIgIAAIAAgaIAFAAQALgPAAgmIAqAAIAAA1IAHAAIAAAagAgRAOIAhAAIAAgsIgXAAQgBAegJAOg");
	this.shape_86.setTransform(163.225,155.025);

	this.shape_87 = new cjs.Shape();
	this.shape_87.graphics.f("#CCCCCC").s().p("AAPAfIAAguIgcAuIgMAAIAAg9IALAAIAAAuIAcguIAMAAIAAA9g");
	this.shape_87.setTransform(156.55,154.15);

	this.shape_88 = new cjs.Shape();
	this.shape_88.graphics.f("#CCCCCC").s().p("AgZAfIAAg9IAZAAQAIAAAEABQAFACACAEQAEADAAAHQAAAEgCADQgCADgDACQAEABACAEQAEAEAAAGQgBAIgGAEQgFAFgMAAgAgOAXIAOAAQAIAAADgCQADgDAAgFQAAgDgBgDQgCgCgDAAIgJgBIgNAAgAgOgEIALAAIAIAAIAFgEQACgCAAgCQAAgGgDgCQgEgBgIAAIgLAAg");
	this.shape_88.setTransform(150.15,154.15);

	this.shape_89 = new cjs.Shape();
	this.shape_89.graphics.f("#CCCCCC").s().p("AAPArIAAguIgcAuIgMAAIAAg9IALAAIAAAuIAcguIALAAIAAA9gAgKgfQgFgEgBgHIAIAAQABAEACACQACACADAAQAFAAADgBQACgCABgFIAHAAQgBAHgEAEQgFAFgHAAQgGAAgFgFg");
	this.shape_89.setTransform(140.1,152.95);

	this.shape_90 = new cjs.Shape();
	this.shape_90.graphics.f("#CCCCCC").s().p("AAPAfIAAguIgcAuIgLAAIAAg9IAKAAIAAAuIAcguIAMAAIAAA9g");
	this.shape_90.setTransform(133.4,154.15);

	this.shape_91 = new cjs.Shape();
	this.shape_91.graphics.f("#CCCCCC").s().p("AAPAfIAAgbIgdAAIAAAbIgKAAIAAg9IAKAAIAAAaIAdAAIAAgaIAKAAIAAA9g");
	this.shape_91.setTransform(126.725,154.15);

	this.shape_92 = new cjs.Shape();
	this.shape_92.graphics.f("#CCCCCC").s().p("AgnAfIAAg9IALAAIAAA1IAYAAIAAg1IAJAAIAAA1IAYAAIAAg1IALAAIAAA9g");
	this.shape_92.setTransform(118.575,154.15);

	this.shape_93 = new cjs.Shape();
	this.shape_93.graphics.f("#CCCCCC").s().p("AgUAYQgIgJAAgPQAAgOAIgJQAIgJAMABQANgBAIAJQAIAJAAAOIgBADIgtAAQABAKAFAFQAFAGAHAAQAGAAAEgDQAEgEACgGIALACQgCAJgHAFQgHAFgLABQgNAAgIgJgAgLgSQgFAFAAAIIAhAAQAAgIgEgEQgFgGgIAAQgGAAgFAFg");
	this.shape_93.setTransform(110.425,154.15);

	this.shape_94 = new cjs.Shape();
	this.shape_94.graphics.f("#CCCCCC").s().p("AAPAfIAAgbIgdAAIAAAbIgKAAIAAg9IAKAAIAAAaIAdAAIAAgaIAKAAIAAA9g");
	this.shape_94.setTransform(103.775,154.15);

	this.shape_95 = new cjs.Shape();
	this.shape_95.graphics.f("#CCCCCC").s().p("AgfArIAAhVIAfAAQAKAAAGACQAGADADAGQADAFAAAGQAAAGgDAFQgDAEgGAEQAIABAEAFQAEAFAAAIQAAAGgCAFQgDAGgDACIgKAFQgGABgIAAgAgUAhIAUAAIAIAAQAEgBADgCQACgBACgDQACgEAAgEQAAgEgDgEQgCgEgFgBQgEgCgHAAIgUAAgAgUgGIASAAIAKgBQAFgBACgDQACgDAAgEQAAgFgCgDQgCgDgEgCQgEgBgIAAIgRAAg");
	this.shape_95.setTransform(96.575,152.95);

	this.shape_96 = new cjs.Shape();
	this.shape_96.graphics.f("#CCCCCC").s().p("AgFAGIAAgLIALAAIAAALg");
	this.shape_96.setTransform(87.45,156.65);

	this.shape_97 = new cjs.Shape();
	this.shape_97.graphics.f("#CCCCCC").s().p("AAQAfIgNgTIgDgFIgQAYIgMAAIAWggIgUgdIANAAIAJAOIAEAHIAEgHIALgOIANAAIgWAdIAXAgg");
	this.shape_97.setTransform(82.75,154.15);

	this.shape_98 = new cjs.Shape();
	this.shape_98.graphics.f("#CCCCCC").s().p("AARAfIAAgYIgGAAQgGAAgDABQgCACgEAHIgJAOIgOAAIALgRQAGgHAFgBQgJgCgFgEQgDgFAAgHQgBgIAGgFQAFgFALAAIAcAAIAAA9gAgJgTQgDAEAAAEQAAAFAEADQAEACAJAAIAMAAIAAgUIgPAAQgJAAgCACg");
	this.shape_98.setTransform(76.2,154.15);

	this.shape_99 = new cjs.Shape();
	this.shape_99.graphics.f("#CCCCCC").s().p("AAPAfIAAguIgcAuIgMAAIAAg9IALAAIAAAuIAcguIALAAIAAA9g");
	this.shape_99.setTransform(69.9,154.15);

	this.shape_100 = new cjs.Shape();
	this.shape_100.graphics.f("#CCCCCC").s().p("AAUAoIAAgSIgwAAIAAg9IALAAIAAA1IAdAAIAAg1IAKAAIAAA1IAHAAIAAAag");
	this.shape_100.setTransform(63.35,155.025);

	this.shape_101 = new cjs.Shape();
	this.shape_101.graphics.f("#CCCCCC").s().p("AgWAbQgGgFAAgHQABgFACgDQACgEADgDIAHgCIAKgCQAMgCAFgCIAAgCQAAgHgCgDQgEgDgIAAQgGAAgFADQgDADgBAGIgLgBQABgHAEgEQADgEAGgCQAGgCAHAAQAIAAAFABQAFACACADQADADABAEIAAAKIAAANIABATQABADACAEIgLAAIgDgHQgGAFgFACQgEACgGAAQgLAAgFgGgAgCAEQgGAAgDACQgDABgBACQgBACAAAEQgBADAEAEQADACAGAAQAFAAAFgCQAEgDADgFQACgEgBgGIAAgEIgQAEg");
	this.shape_101.setTransform(56.35,154.15);

	this.shape_102 = new cjs.Shape();
	this.shape_102.graphics.f("#CCCCCC").s().p("AgEAfIAAg0IgUAAIAAgJIAxAAIAAAJIgUAAIAAA0g");
	this.shape_102.setTransform(50.3,154.15);

	this.shape_103 = new cjs.Shape();
	this.shape_103.graphics.f("#CCCCCC").s().p("AALAfIgLgTIgFgIQgDgCgDAAIAAAdIgLAAIAAg9IALAAIAAAbQAFAAACgCQACgCADgKQADgHACgCQACgCACgBIAIgBIACAAIAAAJIgDAAQgEAAgBABIgEAIIgEAIIgFAEQAGABAGALIAMATg");
	this.shape_103.setTransform(45.375,154.15);

	this.shape_104 = new cjs.Shape();
	this.shape_104.graphics.f("#CCCCCC").s().p("AgUAYQgIgJAAgPQAAgOAIgJQAIgJAMABQANgBAIAJQAIAJAAAOIgBADIgtAAQABAKAFAFQAFAGAHAAQAGAAAEgDQAEgEACgGIALACQgCAJgHAFQgHAFgLABQgNAAgIgJgAgLgSQgFAFAAAIIAhAAQAAgIgEgEQgFgGgIAAQgGAAgFAFg");
	this.shape_104.setTransform(38.975,154.15);

	this.shape_105 = new cjs.Shape();
	this.shape_105.graphics.f("#CCCCCC").s().p("AgdAfIAAgJIAEAAIAFgBIACgCIAAgJIAAgoIAwAAIAAA9IgKAAIAAg1IgbAAIAAAeIgBAPQgBADgDADQgDACgGAAIgIAAg");
	this.shape_105.setTransform(31.825,154.175);

	this.shape_106 = new cjs.Shape();
	this.shape_106.graphics.f("#CCCCCC").s().p("AAOAfIAAg0IgbAAIAAA0IgLAAIAAg9IAwAAIAAA9g");
	this.shape_106.setTransform(25.4,154.15);

	this.shape_107 = new cjs.Shape();
	this.shape_107.graphics.f("#CCCCCC").s().p("AAXAfIAAgxIgTAxIgIAAIgSgzIAAAzIgKAAIAAg9IAQAAIAQAwIASgwIAPAAIAAA9g");
	this.shape_107.setTransform(18.025,154.15);

	this.shape_108 = new cjs.Shape();
	this.shape_108.graphics.f("#CCCCCC").s().p("AgUAYQgIgIAAgQQAAgRAJgIQAIgGALAAQANgBAIAJQAIAIAAAPQAAALgEAHQgDAHgHADQgHAFgIAAQgMAAgIgJgAgMgRQgFAGAAALQAAAMAFAGQAFAFAHABQAIgBAFgFQAFgGAAgMQAAgLgFgGQgFgGgIAAQgHAAgFAGg");
	this.shape_108.setTransform(10.575,154.15);

	this.shape_109 = new cjs.Shape();
	this.shape_109.graphics.f("#CCCCCC").s().p("AALAfIgLgTIgFgIQgDgCgDAAIAAAdIgLAAIAAg9IALAAIAAAbQAFAAACgCQACgCADgKQADgHACgCIAEgDIAIgBIACAAIAAAJIgDAAQgEAAgBABIgEAIIgEAIIgFAEQAGABAGALIAMATg");
	this.shape_109.setTransform(5.075,154.15);

	this.shape_110 = new cjs.Shape();
	this.shape_110.graphics.f("#CCCCCC").s().p("AAQAfIgMgUIgEgEIgPAYIgNAAIAXgfIgWgeIAOAAIAKAOIADAHIAEgHIALgOIANAAIgWAdIAXAgg");
	this.shape_110.setTransform(213.75,141.8);

	this.shape_111 = new cjs.Shape();
	this.shape_111.graphics.f("#CCCCCC").s().p("AgUAYQgIgIAAgQQAAgOAIgJQAIgJAMAAQANAAAIAJQAIAIAAAPIgBACIgtAAQABALAFAFQAFAFAHABQAGAAAEgEQAEgDACgGIALABQgCAKgHAFQgHAGgLAAQgNAAgIgJgAgLgSQgFAFAAAIIAhAAQAAgIgEgEQgFgGgIAAQgGAAgFAFg");
	this.shape_111.setTransform(207.425,141.8);

	this.shape_112 = new cjs.Shape();
	this.shape_112.graphics.f("#CCCCCC").s().p("AgSAYQgIgIAAgQQAAgJADgIQAEgHAGgEQAHgEAHAAQAKABAHAFQAGAEACAKIgKACQgCgHgDgDQgEgDgFAAQgHAAgFAGQgFAGAAALQAAAMAFAGQAEAGAHAAQAGAAAEgEQAFgEABgIIAKABQgCAMgHAFQgHAGgKABQgMAAgHgJg");
	this.shape_112.setTransform(201.275,141.8);

	this.shape_113 = new cjs.Shape();
	this.shape_113.graphics.f("#CCCCCC").s().p("AgYAfIAAg9IAYAAQAIAAAEACQAFABADADQADAFAAAFQAAAFgCADQgCAEgEACQAFAAACAEQADAEABAGQgBAIgGAEQgFAFgLAAgAgOAXIAOAAQAIgBADgCQAEgCgBgFQAAgDgBgCQgCgDgDAAIgJgCIgNAAgAgOgEIALAAIAIgBIAFgDQACgBAAgDQAAgGgDgBQgEgCgIAAIgLAAg");
	this.shape_113.setTransform(195.05,141.8);

	this.shape_114 = new cjs.Shape();
	this.shape_114.graphics.f("#CCCCCC").s().p("AgUAYQgIgIAAgQQAAgRAJgIQAIgGALgBQANAAAIAJQAIAIAAAPQAAALgEAHQgDAHgHADQgHAFgIAAQgMAAgIgJgAgMgRQgFAGAAALQAAAMAFAGQAFAGAHAAQAIAAAFgGQAFgGAAgMQAAgLgFgGQgFgGgIAAQgHAAgFAGg");
	this.shape_114.setTransform(185.025,141.8);

	this.shape_115 = new cjs.Shape();
	this.shape_115.graphics.f("#CCCCCC").s().p("AgYAfIAAg9IAYAAQAIAAAEACQAEABAEADQADAFAAAFQAAAFgCADQgCAEgEACQAFAAACAEQADAEAAAGQAAAIgGAEQgFAFgLAAgAgOAXIAOAAQAIgBADgCQADgCAAgFQABgDgCgCQgCgDgDAAIgJgCIgNAAgAgOgEIALAAIAIgBIAFgDQACgBAAgDQAAgGgEgBQgDgCgIAAIgLAAg");
	this.shape_115.setTransform(178.65,141.8);

	this.shape_116 = new cjs.Shape();
	this.shape_116.graphics.f("#CCCCCC").s().p("AgUAYQgIgIAAgQQAAgOAIgJQAIgJAMAAQANAAAIAJQAIAIAAAPIgBACIgtAAQABALAFAFQAFAFAHABQAGAAAEgEQAEgDACgGIALABQgCAKgHAFQgHAGgLAAQgNAAgIgJgAgLgSQgFAFAAAIIAhAAQAAgIgEgEQgFgGgIAAQgGAAgFAFg");
	this.shape_116.setTransform(168.625,141.8);

	this.shape_117 = new cjs.Shape();
	this.shape_117.graphics.f("#CCCCCC").s().p("AAPAfIAAgcIgdAAIAAAcIgKAAIAAg9IAKAAIAAAZIAdAAIAAgZIAKAAIAAA9g");
	this.shape_117.setTransform(161.975,141.8);

	this.shape_118 = new cjs.Shape();
	this.shape_118.graphics.f("#CCCCCC").s().p("AAYAfIAAg9IALAAIAAA9gAgiAfIAAg9IALAAIAAAYIANAAQAMAAAHAFQAHAEAAAJQAAAIgFAGQgGAFgMAAgAgXAXIALAAQAKAAADgDQAFgDAAgFQAAgEgEgDQgCgDgLAAIgMAAg");
	this.shape_118.setTransform(150.925,141.8);

	this.shape_119 = new cjs.Shape();
	this.shape_119.graphics.f("#CCCCCC").s().p("AAPAfIAAgcIgdAAIAAAcIgKAAIAAg9IAKAAIAAAZIAdAAIAAgZIAKAAIAAA9g");
	this.shape_119.setTransform(143.325,141.8);

	this.shape_120 = new cjs.Shape();
	this.shape_120.graphics.f("#CCCCCC").s().p("AAOAfIAAg0IgbAAIAAA0IgLAAIAAg9IAxAAIAAA9g");
	this.shape_120.setTransform(136.75,141.8);

	this.shape_121 = new cjs.Shape();
	this.shape_121.graphics.f("#CCCCCC").s().p("AgWAqIgBgKIAGABIAGgBIADgDIADgIIABgDIgXg9IALAAIANAkIADANIAFgNIANgkIAKAAIgXA+IgFAOQgDAGgEACQgDADgGAAIgGgCg");
	this.shape_121.setTransform(130.55,143.075);

	this.shape_122 = new cjs.Shape();
	this.shape_122.graphics.f("#CCCCCC").s().p("AgEAfIAAg0IgUAAIAAgJIAxAAIAAAJIgUAAIAAA0g");
	this.shape_122.setTransform(124.75,141.8);

	this.shape_123 = new cjs.Shape();
	this.shape_123.graphics.f("#CCCCCC").s().p("AgSAYQgIgIAAgQQAAgJADgIQAEgHAGgEQAHgEAHAAQAKABAHAFQAGAEACAKIgKACQgCgHgDgDQgEgDgFAAQgHAAgFAGQgFAGAAALQAAAMAFAGQAEAGAHAAQAGAAAEgEQAFgEABgIIAKABQgCAMgHAFQgHAGgKABQgMAAgHgJg");
	this.shape_123.setTransform(119.175,141.8);

	this.shape_124 = new cjs.Shape();
	this.shape_124.graphics.f("#CCCCCC").s().p("AgUAYQgIgIAAgQQAAgRAJgIQAIgGALgBQANAAAIAJQAIAIAAAPQAAALgEAHQgDAHgHADQgHAFgIAAQgMAAgIgJgAgMgRQgFAGAAALQAAAMAFAGQAFAGAHAAQAIAAAFgGQAFgGAAgMQAAgLgFgGQgFgGgIAAQgHAAgFAGg");
	this.shape_124.setTransform(112.675,141.8);

	this.shape_125 = new cjs.Shape();
	this.shape_125.graphics.f("#CCCCCC").s().p("AAYAoIAAgSIgwAAIAAASIgIAAIAAgaIAFAAQALgPAAgmIAqAAIAAA1IAHAAIAAAagAgRAOIAhAAIAAgsIgXAAQgBAegJAOg");
	this.shape_125.setTransform(105.675,142.675);

	this.shape_126 = new cjs.Shape();
	this.shape_126.graphics.f("#CCCCCC").s().p("AAPAfIAAguIgcAuIgMAAIAAg9IALAAIAAAuIAcguIALAAIAAA9g");
	this.shape_126.setTransform(95.65,141.8);

	this.shape_127 = new cjs.Shape();
	this.shape_127.graphics.f("#CCCCCC").s().p("AAPAfIAAguIgcAuIgLAAIAAg9IAKAAIAAAuIAcguIAMAAIAAA9g");
	this.shape_127.setTransform(88.95,141.8);

	this.shape_128 = new cjs.Shape();
	this.shape_128.graphics.f("#CCCCCC").s().p("AAUAoIAAgSIgvAAIAAg9IAKAAIAAA1IAcAAIAAg1IALAAIAAA1IAGAAIAAAag");
	this.shape_128.setTransform(82.4,142.675);

	this.shape_129 = new cjs.Shape();
	this.shape_129.graphics.f("#CCCCCC").s().p("AAOAfIAAg0IgbAAIAAA0IgKAAIAAg9IAvAAIAAA9g");
	this.shape_129.setTransform(75.5,141.8);

	this.shape_130 = new cjs.Shape();
	this.shape_130.graphics.f("#CCCCCC").s().p("AgUAYQgIgIAAgQQAAgRAJgIQAIgGALgBQANAAAIAJQAIAIAAAPQAAALgEAHQgDAHgHADQgHAFgIAAQgMAAgIgJgAgMgRQgFAGAAALQAAAMAFAGQAFAGAHAAQAIAAAFgGQAFgGAAgMQAAgLgFgGQgFgGgIAAQgHAAgFAGg");
	this.shape_130.setTransform(68.925,141.8);

	this.shape_131 = new cjs.Shape();
	this.shape_131.graphics.f("#CCCCCC").s().p("AgUAYQgIgIAAgQQAAgOAIgJQAIgJAMAAQANAAAIAJQAIAIAAAPIgBACIgtAAQABALAFAFQAFAFAHABQAGAAAEgEQAEgDACgGIALABQgCAKgHAFQgHAGgLAAQgNAAgIgJgAgLgSQgFAFAAAIIAhAAQAAgIgEgEQgFgGgIAAQgGAAgFAFg");
	this.shape_131.setTransform(58.925,141.8);

	this.shape_132 = new cjs.Shape();
	this.shape_132.graphics.f("#CCCCCC").s().p("AAYAfIAAg9IALAAIAAA9gAgiAfIAAg9IALAAIAAAYIANAAQAMAAAHAFQAHAEAAAJQAAAIgFAGQgGAFgMAAgAgXAXIALAAQAKAAADgDQAFgDAAgFQAAgEgEgDQgCgDgLAAIgMAAg");
	this.shape_132.setTransform(51.225,141.8);

	this.shape_133 = new cjs.Shape();
	this.shape_133.graphics.f("#CCCCCC").s().p("AAPAfIAAgcIgdAAIAAAcIgKAAIAAg9IAKAAIAAAZIAdAAIAAgZIAKAAIAAA9g");
	this.shape_133.setTransform(43.625,141.8);

	this.shape_134 = new cjs.Shape();
	this.shape_134.graphics.f("#CCCCCC").s().p("AAPAfIAAgcIgdAAIAAAcIgKAAIAAg9IAKAAIAAAZIAdAAIAAgZIAKAAIAAA9g");
	this.shape_134.setTransform(36.975,141.8);

	this.shape_135 = new cjs.Shape();
	this.shape_135.graphics.f("#CCCCCC").s().p("AgWAbQgFgFgBgHQAAgFACgDQACgFAEgCIAIgCIAJgCQALgCAHgCIAAgCQAAgGgEgDQgDgEgIAAQgGAAgEADQgEADgCAGIgKgBQACgHADgEQADgEAGgCQAGgCAHgBQAIAAAFACQAFACADADQACADABAEIAAAKIAAANIABATQABAEABADIgLAAIgBgHQgHAEgEACQgFADgHAAQgJgBgGgFgAgBAEQgHAAgDACQgDABgBACQgBACgBAEQABADADADQADADAGAAQAFAAAFgDQAFgCACgFQABgDABgIIAAgDIgQAEg");
	this.shape_135.setTransform(30.3,141.8);

	this.shape_136 = new cjs.Shape();
	this.shape_136.graphics.f("#CCCCCC").s().p("AgXAOIAKgDQABAHAFACQAEAEAEAAQAFAAAEgDQADgDAAgFQAAgDgCgDQgCgDgDgBIgIAAIgCAAIAAgIIAIAAIAFgDQACgCAAgEQAAgEgDgCQgDgDgEAAQgIAAgEALIgKgCQAFgRARgBQAKAAAFAGQAGAFAAAIQAAAIgHAEQAEACADAEQACADAAAGQAAAIgGAFQgGAGgLAAQgUAAgEgTg");
	this.shape_136.setTransform(24.175,141.8);

	this.shape_137 = new cjs.Shape();
	this.shape_137.graphics.f("#CCCCCC").s().p("AgWAbQgFgFAAgHQAAgFABgDQACgFAEgCIAIgCIAJgCQALgCAHgCIAAgCQAAgGgEgDQgDgEgIAAQgGAAgEADQgEADgCAGIgKgBQACgHADgEQADgEAGgCQAGgCAHgBQAIAAAFACQAFACADADQACADABAEIAAAKIAAANIABATQABAEABADIgLAAIgBgHQgHAEgEACQgFADgHAAQgJgBgGgFgAgBAEQgHAAgDACQgDABgBACQgBACgBAEQABADADADQADADAGAAQAFAAAFgDQAFgCACgFQABgDABgIIAAgDIgQAEg");
	this.shape_137.setTransform(18.15,141.8);

	this.shape_138 = new cjs.Shape();
	this.shape_138.graphics.f("#CCCCCC").s().p("AALAfIgLgUIgFgHQgDgCgDAAIAAAdIgLAAIAAg9IALAAIAAAbQAFgBACgCQACgBADgKQADgHACgCQACgDACAAIAIgBIACAAIAAAJIgDAAQgEAAgBABIgEAIIgEAIIgFAEQAGABAGAKIAMAUg");
	this.shape_138.setTransform(12.675,141.8);

	this.shape_139 = new cjs.Shape();
	this.shape_139.graphics.f("#CCCCCC").s().p("AgZAqIAAgKQAEADAFgBQAEABAEgDQADgDADgKIgjg+IAMAAIAbA0IAYg0IAMAAIghBDQgFAMgDAEQgEADgIAAIgKgBg");
	this.shape_139.setTransform(5.825,140.65);

	this.shape_140 = new cjs.Shape();
	this.shape_140.graphics.f("#CCCCCC").s().p("AgFAGIAAgLIALAAIAAALg");
	this.shape_140.setTransform(251.75,131.95);

	this.shape_141 = new cjs.Shape();
	this.shape_141.graphics.f("#CCCCCC").s().p("AgbAfIAAgJIAngsIgMAAIgYAAIAAgIIAxAAIAAAGIggAnIgGAHIAMAAIAdAAIAAAJg");
	this.shape_141.setTransform(247.05,129.45);

	this.shape_142 = new cjs.Shape();
	this.shape_142.graphics.f("#CCCCCC").s().p("AgNAeQgFgDgCgDQgCgDgBgFIgBgJIAAgmIAKAAIAAAiIABALQABAEADACQAEADAEAAQAEAAAEgDQAEgCACgEQACgFAAgIIAAggIAKAAIAAA9IgJAAIAAgJQgHALgMAAQgFAAgFgCg");
	this.shape_142.setTransform(240.675,129.525);

	this.shape_143 = new cjs.Shape();
	this.shape_143.graphics.f("#CCCCCC").s().p("AgFAGIAAgLIALAAIAAALg");
	this.shape_143.setTransform(235.75,131.95);

	this.shape_144 = new cjs.Shape();
	this.shape_144.graphics.f("#CCCCCC").s().p("AgWAcQgGgFABgJQAAgEACgDQACgEADgDIAHgDIAKgBQAMgBAFgCIAAgDQAAgGgDgDQgEgEgHAAQgHAAgDACQgEAEgBAGIgLgCQABgGAEgEQADgEAGgDQAGgCAHAAQAIABAFABQAFACACADQADADABAEIABAKIAAANIAAASQAAAFADADIgLAAIgCgIQgGAGgGABQgEACgHAAQgKAAgFgEgAgBAEQgHABgDABQgCABgCADQgCABABADQAAAFADACQADADAGAAQAFAAAFgDQAEgCADgFQABgDAAgIIAAgDIgPAEg");
	this.shape_144.setTransform(230.7,129.45);

	this.shape_145 = new cjs.Shape();
	this.shape_145.graphics.f("#CCCCCC").s().p("AgEArIAAg9IAJAAIAAA9gAgEgeIAAgMIAJAAIAAAMg");
	this.shape_145.setTransform(226.075,128.25);

	this.shape_146 = new cjs.Shape();
	this.shape_146.graphics.f("#CCCCCC").s().p("AANArIgUggIgHAIIAAAYIgLAAIAAhVIALAAIAAAwIAYgYIANAAIgXAWIAaAng");
	this.shape_146.setTransform(222.125,128.25);

	this.shape_147 = new cjs.Shape();
	this.shape_147.graphics.f("#CCCCCC").s().p("AgFAGIAAgLIALAAIAAALg");
	this.shape_147.setTransform(217.1,131.95);

	this.shape_148 = new cjs.Shape();
	this.shape_148.graphics.f("#CCCCCC").s().p("AANAfIgKglIgDgKIgMAvIgKAAIgTg9IAKAAIAKAiIAEAOIADgNIAKgjIAKAAIAJAjIADAMIAEgMIAKgjIAKAAIgTA9g");
	this.shape_148.setTransform(211.05,129.45);

	this.shape_149 = new cjs.Shape();
	this.shape_149.graphics.f("#CCCCCC").s().p("AANAfIgKglIgDgKIgMAvIgKAAIgTg9IALAAIAJAiIAEAOIADgNIAKgjIAKAAIAJAjIADAMIAEgMIAKgjIAKAAIgTA9g");
	this.shape_149.setTransform(202.4,129.45);

	this.shape_150 = new cjs.Shape();
	this.shape_150.graphics.f("#CCCCCC").s().p("AANAfIgKglIgDgKIgLAvIgLAAIgTg9IALAAIAJAiIAEAOIADgNIAKgjIAKAAIAJAjIADAMIAEgMIALgjIAKAAIgTA9g");
	this.shape_150.setTransform(193.75,129.45);

	this.shape_151 = new cjs.Shape();
	this.shape_151.graphics.f("#CCCCCC").s().p("AgUAYQgIgJAAgOQAAgQAIgIQAIgJAMAAQANAAAIAJQAIAIAAAPIgBACIgtAAQABALAFAGQAFAEAHAAQAGAAAEgDQAEgDACgGIALABQgCAKgHAFQgHAGgLgBQgNABgIgJgAgLgSQgFAFAAAIIAhAAQAAgIgEgEQgFgGgIAAQgGAAgFAFg");
	this.shape_151.setTransform(182.775,129.45);

	this.shape_152 = new cjs.Shape();
	this.shape_152.graphics.f("#CCCCCC").s().p("AgEAfIAAg1IgVAAIAAgIIAzAAIAAAIIgVAAIAAA1g");
	this.shape_152.setTransform(176.7,129.45);

	this.shape_153 = new cjs.Shape();
	this.shape_153.graphics.f("#CCCCCC").s().p("AAPArIAAguIgcAuIgMAAIAAg9IALAAIAAAuIAcguIAMAAIAAA9gAgKgfQgFgDgBgIIAIAAQABAEACACQADACACAAQAFAAADgCQACgBABgFIAHAAQgBAIgEADQgFAEgHAAQgGAAgFgEg");
	this.shape_153.setTransform(170.6,128.25);

	this.shape_154 = new cjs.Shape();
	this.shape_154.graphics.f("#CCCCCC").s().p("AgWAcQgGgFAAgJQABgEACgDQACgEADgDIAHgDIAKgBQAMgBAFgCIAAgDQAAgGgCgDQgEgEgIAAQgGAAgFACQgDAEgBAGIgLgCQABgGAEgEQADgEAGgDQAGgCAHAAQAIABAFABQAFACADADQACADABAEIAAAKIAAANIABASQABAFACADIgLAAIgDgIQgGAGgFABQgEACgGAAQgLAAgFgEgAgCAEQgGABgDABQgDABgBADQgBABAAADQgBAFAEACQADADAGAAQAFAAAFgDQAEgCADgFQACgDgBgIIAAgDIgQAEg");
	this.shape_154.setTransform(163.9,129.45);

	this.shape_155 = new cjs.Shape();
	this.shape_155.graphics.f("#CCCCCC").s().p("AgSAYQgIgJAAgPQAAgJADgHQAEgIAGgEQAHgDAHgBQAKAAAHAGQAGAEACAKIgKACQgCgHgDgDQgEgDgFAAQgHAAgFAGQgFAGAAALQAAANAFAFQAEAGAHgBQAGAAAEgDQAFgEABgIIAKACQgCAKgHAHQgHAFgKAAQgMABgHgJg");
	this.shape_155.setTransform(157.775,129.45);

	this.shape_156 = new cjs.Shape();
	this.shape_156.graphics.f("#CCCCCC").s().p("AgWAcQgGgFABgJQAAgEACgDQACgEADgDIAHgDIAKgBQAMgBAFgCIAAgDQAAgGgDgDQgEgEgHAAQgHAAgDACQgEAEgCAGIgKgCQABgGAEgEQADgEAGgDQAGgCAHAAQAIABAFABQAFACACADQADADABAEIABAKIAAANIAAASQAAAFACADIgKAAIgCgIQgGAGgGABQgEACgHAAQgKAAgFgEgAgBAEQgHABgDABQgCABgCADQgCABABADQAAAFADACQADADAGAAQAFAAAFgDQAEgCADgFQABgDAAgIIAAgDIgPAEg");
	this.shape_156.setTransform(147.9,129.45);

	this.shape_157 = new cjs.Shape();
	this.shape_157.graphics.f("#CCCCCC").s().p("AAPAfIAAgcIgdAAIAAAcIgKAAIAAg9IAKAAIAAAZIAdAAIAAgZIAKAAIAAA9g");
	this.shape_157.setTransform(141.275,129.45);

	this.shape_158 = new cjs.Shape();
	this.shape_158.graphics.f("#CCCCCC").s().p("AAQAfIgNgUIgDgEIgPAYIgNAAIAWgfIgUgeIANAAIAJAPIAEAHIAEgHIALgPIANAAIgWAdIAXAgg");
	this.shape_158.setTransform(131.6,129.45);

	this.shape_159 = new cjs.Shape();
	this.shape_159.graphics.f("#CCCCCC").s().p("AAYAfIAAg9IALAAIAAA9gAgiAfIAAg9IALAAIAAAYIANAAQAMAAAHAFQAHAEAAAJQAAAIgFAGQgGAFgMAAgAgXAWIALAAQAKAAADgCQAFgDAAgFQAAgEgEgDQgCgDgLAAIgMAAg");
	this.shape_159.setTransform(124.225,129.45);

	this.shape_160 = new cjs.Shape();
	this.shape_160.graphics.f("#CCCCCC").s().p("AAPAfIAAgcIgdAAIAAAcIgKAAIAAg9IAKAAIAAAZIAdAAIAAgZIAKAAIAAA9g");
	this.shape_160.setTransform(116.625,129.45);

	this.shape_161 = new cjs.Shape();
	this.shape_161.graphics.f("#CCCCCC").s().p("AAPAfIAAgcIgdAAIAAAcIgKAAIAAg9IAKAAIAAAZIAdAAIAAgZIAKAAIAAA9g");
	this.shape_161.setTransform(109.975,129.45);

	this.shape_162 = new cjs.Shape();
	this.shape_162.graphics.f("#CCCCCC").s().p("AgWAcQgFgFgBgJQAAgEACgDQACgEAEgDIAIgDIAJgBQALgBAHgCIAAgDQAAgGgDgDQgFgEgHAAQgGAAgEACQgEAEgCAGIgKgCQACgGADgEQADgEAGgDQAGgCAHAAQAIABAFABQAFACADADQACADABAEIAAAKIAAANIABASQABAFABADIgLAAIgCgIQgFAGgFABQgFACgHAAQgJAAgGgEgAgCAEQgGABgDABQgDABgBADQgCABAAADQAAAFAEACQADADAGAAQAFAAAFgDQAFgCACgFQABgDABgIIAAgDIgRAEg");
	this.shape_162.setTransform(103.3,129.45);

	this.shape_163 = new cjs.Shape();
	this.shape_163.graphics.f("#CCCCCC").s().p("AgXANIAKgCQABAHAFACQAEAEAEAAQAFAAAEgDQADgDAAgFQAAgDgCgDQgCgDgDgBIgIAAIgCAAIAAgIIAIAAIAFgCQACgDAAgEQAAgEgDgDQgDgCgEAAQgIAAgEAKIgKgBQAFgSARAAQAKABAFAFQAGAGAAAHQAAAHgHAFQAEABADAEQACAFAAAEQAAAJgGAFQgGAGgLgBQgUABgEgUg");
	this.shape_163.setTransform(97.175,129.45);

	this.shape_164 = new cjs.Shape();
	this.shape_164.graphics.f("#CCCCCC").s().p("AgWAcQgFgFgBgJQAAgEACgDQACgEAEgDIAIgDIAJgBQALgBAHgCIAAgDQAAgGgDgDQgFgEgHAAQgGAAgFACQgDAEgCAGIgKgCQACgGADgEQADgEAGgDQAGgCAHAAQAIABAFABQAFACADADQACADABAEIAAAKIAAANIABASQABAFABADIgLAAIgCgIQgFAGgFABQgFACgHAAQgJAAgGgEgAgBAEQgHABgDABQgDABgBADQgCABAAADQAAAFAEACQADADAGAAQAFAAAFgDQAFgCACgFQABgDABgIIAAgDIgQAEg");
	this.shape_164.setTransform(91.15,129.45);

	this.shape_165 = new cjs.Shape();
	this.shape_165.graphics.f("#CCCCCC").s().p("AALAfIgLgUIgFgHQgDgCgDAAIAAAdIgLAAIAAg9IALAAIAAAaQAFAAACgCQACgBADgJQADgIACgCIAEgEIAIAAIACAAIAAAIIgDAAQgEAAgBABIgEAIIgEAJIgFAEQAGABAGAKIAMAUg");
	this.shape_165.setTransform(85.675,129.45);

	this.shape_166 = new cjs.Shape();
	this.shape_166.graphics.f("#CCCCCC").s().p("AgWAqIgBgKIAGABIAFgBIAEgDIADgIIABgDIgYg9IAMAAIANAkIAEANIADgNIAOgkIALAAIgYA+IgFAOQgDAGgDACQgEADgFAAIgHgCg");
	this.shape_166.setTransform(79.65,130.725);

	this.shape_167 = new cjs.Shape();
	this.shape_167.graphics.f("#CCCCCC").s().p("AgFAKQADgBACgDQAAgDAAgEIgFAAIAAgNIALAAIAAANQAAAFgCAEQgCAFgEACg");
	this.shape_167.setTransform(71.525,132.8);

	this.shape_168 = new cjs.Shape();
	this.shape_168.graphics.f("#CCCCCC").s().p("AAQAfIgNgUIgDgEIgQAYIgMAAIAWgfIgUgeIANAAIAJAPIAEAHIAEgHIALgPIANAAIgWAdIAXAgg");
	this.shape_168.setTransform(66.9,129.45);

	this.shape_169 = new cjs.Shape();
	this.shape_169.graphics.f("#CCCCCC").s().p("AARAfIAAgYIgGAAQgGAAgDABQgCABgFAJIgJANIgNAAIALgRQAGgHAFgCQgJAAgEgFQgEgFgBgHQAAgIAGgFQAFgFAMAAIAbAAIAAA9gAgJgSQgDACAAAEQAAAGAEACQAEADAJAAIAMAAIAAgVIgPAAQgIAAgDAEg");
	this.shape_169.setTransform(60.35,129.45);

	this.shape_170 = new cjs.Shape();
	this.shape_170.graphics.f("#CCCCCC").s().p("AAPAfIAAguIgcAuIgMAAIAAg9IALAAIAAAuIAcguIAMAAIAAA9g");
	this.shape_170.setTransform(54.05,129.45);

	this.shape_171 = new cjs.Shape();
	this.shape_171.graphics.f("#CCCCCC").s().p("AgZAfIAAg9IAZAAQAIAAAEACQAEABADADQAEAEAAAGQAAAFgCADQgCAEgDACQAEAAACAEQAEAEAAAFQgBAJgGAFQgGAEgLAAgAgOAWIAOAAQAIAAADgCQAEgCAAgFQAAgDgCgCQgCgDgDgBIgJgBIgNAAgAgOgEIAMAAIAIgBIAEgCQACgCAAgEQAAgEgDgCQgEgDgHAAIgMAAg");
	this.shape_171.setTransform(47.65,129.45);

	this.shape_172 = new cjs.Shape();
	this.shape_172.graphics.f("#CCCCCC").s().p("AgUAYQgIgJAAgPQAAgQAJgIQAIgIALAAQANAAAIAJQAIAIAAAPQAAALgEAHQgDAHgHAEQgHADgIAAQgMABgIgJgAgMgRQgFAGAAALQAAAMAFAGQAFAGAHgBQAIABAFgGQAFgGAAgMQAAgLgFgGQgFgGgIAAQgHAAgFAGg");
	this.shape_172.setTransform(40.975,129.45);

	this.shape_173 = new cjs.Shape();
	this.shape_173.graphics.f("#CCCCCC").s().p("AgdAfIAAgJIAEAAIAFgBIACgCIAAgJIAAgoIAwAAIAAA9IgKAAIAAg1IgbAAIAAAeIgBAPQgBADgDADQgDACgGAAIgIAAg");
	this.shape_173.setTransform(33.825,129.475);

	this.shape_174 = new cjs.Shape();
	this.shape_174.graphics.f("#CCCCCC").s().p("AgSAYQgIgJAAgPQAAgJADgHQAEgIAGgEQAHgDAHgBQAKAAAHAGQAGAEACAKIgKACQgCgHgDgDQgEgDgFAAQgHAAgFAGQgFAGAAALQAAANAFAFQAEAGAHgBQAGAAAEgDQAFgEABgIIAKACQgCAKgHAHQgHAFgKAAQgMABgHgJg");
	this.shape_174.setTransform(27.825,129.45);

	this.shape_175 = new cjs.Shape();
	this.shape_175.graphics.f("#CCCCCC").s().p("AgWAqIgBgKIAGABIAFgBIAEgDIADgIIABgDIgYg9IAMAAIANAkIAEANIADgNIAOgkIALAAIgYA+IgFAOQgDAGgDACQgEADgFAAIgHgCg");
	this.shape_175.setTransform(21.7,130.725);

	this.shape_176 = new cjs.Shape();
	this.shape_176.graphics.f("#CCCCCC").s().p("AgWAcQgFgFgBgJQAAgEACgDQACgEAEgDIAIgDIAJgBQALgBAHgCIAAgDQAAgGgDgDQgFgEgHAAQgGAAgEACQgEAEgCAGIgKgCQACgGADgEQADgEAGgDQAGgCAHAAQAIABAFABQAFACADADQACADABAEIAAAKIAAANIABASQABAFABADIgLAAIgBgIQgGAGgFABQgFACgHAAQgJAAgGgEgAgCAEQgGABgDABQgDABgBADQgCABAAADQAAAFAEACQADADAGAAQAFAAAFgDQAFgCACgFQABgDABgIIAAgDIgRAEg");
	this.shape_176.setTransform(11.95,129.45);

	this.shape_177 = new cjs.Shape();
	this.shape_177.graphics.f("#CCCCCC").s().p("AAPAfIAAgcIgdAAIAAAcIgKAAIAAg9IAKAAIAAAZIAdAAIAAgZIAKAAIAAA9g");
	this.shape_177.setTransform(5.325,129.45);

	this.shape_178 = new cjs.Shape();
	this.shape_178.graphics.f("#CCCCCC").s().p("AgWAcQgFgGgBgIQABgEABgEQACgEAEgCIAIgDIAJgBQALgCAHgBIAAgDQAAgGgEgEQgDgDgIAAQgGAAgEACQgEADgCAHIgKgCQACgGADgEQADgEAGgDQAGgCAHAAQAIABAFABQAFACADADQACADABAEIAAAKIAAANIABASQABAFABADIgLAAIgBgIQgHAGgEACQgFABgHAAQgJAAgGgEgAgBAEQgHABgDABQgDABgBADQgBACgBACQABAFADADQADACAGAAQAFAAAFgCQAFgDACgFQABgEABgHIAAgDIgQAEg");
	this.shape_178.setTransform(257.1,117.1);

	this.shape_179 = new cjs.Shape();
	this.shape_179.graphics.f("#CCCCCC").s().p("AAPAfIAAgcIgdAAIAAAcIgKAAIAAg9IAKAAIAAAZIAdAAIAAgZIAKAAIAAA9g");
	this.shape_179.setTransform(250.475,117.1);

	this.shape_180 = new cjs.Shape();
	this.shape_180.graphics.f("#CCCCCC").s().p("AgZAfIAAg9IALAAIAAAYIANAAQAMAAAIAFQAHAEAAAJQAAAIgGAFQgGAGgNAAgAgOAWIALAAQAJABAEgDQAFgCAAgGQAAgEgDgDQgEgDgJAAIgNAAg");
	this.shape_180.setTransform(244.275,117.1);

	this.shape_181 = new cjs.Shape();
	this.shape_181.graphics.f("#CCCCCC").s().p("AgdAfIAAgJIAEAAIAFgBIACgCIAAgJIAAgoIAwAAIAAA9IgKAAIAAg1IgbAAIAAAeIgBAPQgBADgDADQgDACgGAAIgIAAg");
	this.shape_181.setTransform(237.125,117.125);

	this.shape_182 = new cjs.Shape();
	this.shape_182.graphics.f("#CCCCCC").s().p("AgUAYQgIgJAAgOQAAgQAIgIQAIgIAMgBQANABAIAIQAIAJAAAOIgBADIgtAAQABAKAFAGQAFAEAHAAQAGAAAEgCQAEgDACgHIALABQgCAKgHAFQgHAGgLgBQgNAAgIgIgAgLgSQgFAFAAAIIAhAAQAAgIgEgEQgFgGgIAAQgGAAgFAFg");
	this.shape_182.setTransform(230.625,117.1);

	this.shape_183 = new cjs.Shape();
	this.shape_183.graphics.f("#CCCCCC").s().p("AgEAfIAAg1IgUAAIAAgIIAxAAIAAAIIgUAAIAAA1g");
	this.shape_183.setTransform(224.55,117.1);

	this.shape_184 = new cjs.Shape();
	this.shape_184.graphics.f("#CCCCCC").s().p("AAPAfIAAguIgcAuIgLAAIAAg9IAKAAIAAAuIAcguIAMAAIAAA9g");
	this.shape_184.setTransform(218.45,117.1);

	this.shape_185 = new cjs.Shape();
	this.shape_185.graphics.f("#CCCCCC").s().p("AgYAfIAAg9IAYAAQAIAAAEABQAFACADAEQADAEAAAGQAAAEgCADQgCAEgEABQAFABACAEQADAEAAAFQAAAJgGAFQgFAEgLAAgAgOAWIAOAAQAIAAADgBQAEgDgBgFQABgDgCgDQgCgCgDgBIgJgBIgNAAgAgOgEIALAAIAIgBIAFgCQACgCAAgEQAAgFgDgCQgEgCgIAAIgLAAg");
	this.shape_185.setTransform(212.05,117.1);

	this.shape_186 = new cjs.Shape();
	this.shape_186.graphics.f("#CCCCCC").s().p("AgEAfIAAg1IgVAAIAAgIIAzAAIAAAIIgVAAIAAA1g");
	this.shape_186.setTransform(205.95,117.1);

	this.shape_187 = new cjs.Shape();
	this.shape_187.graphics.f("#CCCCCC").s().p("AgSAYQgIgJAAgPQAAgJADgHQAEgIAGgEQAHgDAHgBQAKAAAHAGQAGAEACAKIgKABQgCgFgDgEQgEgDgFAAQgHAAgFAGQgFAGAAALQAAANAFAFQAEAGAHgBQAGABAEgEQAFgEABgIIAKACQgCAKgHAHQgHAFgKAAQgMAAgHgIg");
	this.shape_187.setTransform(200.375,117.1);

	this.shape_188 = new cjs.Shape();
	this.shape_188.graphics.f("#CCCCCC").s().p("AAPArIAAguIgcAuIgLAAIAAg9IAKAAIAAAuIAcguIALAAIAAA9gAgKgeQgFgFAAgHIAHAAQABAEACACQACACADAAQAGAAACgCQACgCABgEIAHAAQAAAHgFAFQgEADgIAAQgHAAgEgDg");
	this.shape_188.setTransform(193.85,115.9);

	this.shape_189 = new cjs.Shape();
	this.shape_189.graphics.f("#CCCCCC").s().p("AgUAYQgIgJAAgOQAAgQAIgIQAIgIAMgBQANABAIAIQAIAJAAAOIgBADIgtAAQABAKAFAGQAFAEAHAAQAGAAAEgCQAEgDACgHIALABQgCAKgHAFQgHAGgLgBQgNAAgIgIgAgLgSQgFAFAAAIIAhAAQAAgIgEgEQgFgGgIAAQgGAAgFAFg");
	this.shape_189.setTransform(187.175,117.1);

	this.shape_190 = new cjs.Shape();
	this.shape_190.graphics.f("#CCCCCC").s().p("AAYAoIAAgSIgwAAIAAASIgIAAIAAgaIAFAAQALgPAAgmIAqAAIAAA1IAHAAIAAAagAgRAOIAhAAIAAgsIgXAAQgBAegJAOg");
	this.shape_190.setTransform(180.175,117.975);

	this.shape_191 = new cjs.Shape();
	this.shape_191.graphics.f("#CCCCCC").s().p("AAXAfIAAgxIgTAxIgIAAIgSg0IAAA0IgKAAIAAg9IAQAAIAQAxIASgxIAPAAIAAA9g");
	this.shape_191.setTransform(169.375,117.1);

	this.shape_192 = new cjs.Shape();
	this.shape_192.graphics.f("#CCCCCC").s().p("AALAfIgLgTIgFgIQgDgCgDAAIAAAdIgLAAIAAg9IALAAIAAAaQAFAAACgBQACgCADgJQADgIACgCIAEgEIAIAAIACAAIAAAIIgDAAQgEAAgBABIgEAIIgEAJIgFAEQAGABAGALIAMATg");
	this.shape_192.setTransform(163.075,117.1);

	this.shape_193 = new cjs.Shape();
	this.shape_193.graphics.f("#CCCCCC").s().p("AgSAjQgJgLAAgYQAAgOADgKQAEgJAFgFQAHgFAIAAQAHAAAFADQAFADADAFQAEAFACAIQACAHAAAMQAAAPgDAJQgDAKgGAFQgHAFgJAAQgMAAgGgJgAgKgcQgGAIAAAUQAAAVAFAHQAEAHAHAAQAHAAAFgHQAFgHAAgVQAAgUgFgHQgFgHgHAAQgGAAgEAGg");
	this.shape_193.setTransform(153.3,115.975);

	this.shape_194 = new cjs.Shape();
	this.shape_194.graphics.f("#CCCCCC").s().p("AgSAjQgJgLAAgYQAAgOADgKQAEgJAFgFQAHgFAIAAQAHAAAFADQAFADADAFQAEAFACAIQACAHAAAMQAAAPgDAJQgDAKgGAFQgHAFgJAAQgLAAgHgJgAgKgcQgGAIAAAUQAAAVAFAHQAEAHAHAAQAHAAAFgHQAFgHAAgVQAAgUgFgHQgFgHgHAAQgGAAgEAGg");
	this.shape_194.setTransform(146.65,115.975);

	this.shape_195 = new cjs.Shape();
	this.shape_195.graphics.f("#CCCCCC").s().p("AgSAjQgJgLAAgYQAAgOADgKQAEgJAFgFQAHgFAIAAQAHAAAFADQAFADADAFQAEAFACAIQACAHAAAMQAAAPgDAJQgDAKgGAFQgHAFgJAAQgMAAgGgJgAgKgcQgGAIAAAUQAAAVAFAHQAFAHAGAAQAIAAAEgHQAFgHAAgVQAAgUgFgHQgEgHgIAAQgHAAgDAGg");
	this.shape_195.setTransform(140,115.975);

	this.shape_196 = new cjs.Shape();
	this.shape_196.graphics.f("#CCCCCC").s().p("AgSAjQgJgLAAgYQAAgOADgKQAEgJAFgFQAHgFAIAAQAHAAAFADQAFADADAFQAEAFACAIQACAHAAAMQAAAPgDAJQgDAKgGAFQgHAFgJAAQgLAAgHgJgAgKgcQgGAIAAAUQAAAVAFAHQAEAHAHAAQAHAAAFgHQAFgHAAgVQAAgUgFgHQgFgHgHAAQgGAAgEAGg");
	this.shape_196.setTransform(130,115.975);

	this.shape_197 = new cjs.Shape();
	this.shape_197.graphics.f("#CCCCCC").s().p("AgTAkQgHgGgCgLIAMgBQABAIAEAEQAFAFAGAAQAHAAAFgHQAFgFAAgKQAAgIgFgFQgFgFgHAAQgFAAgFACQgEACgBADIgKgBIAIgrIApAAIAAAKIghAAIgFAXQAIgFAIgBQALABAIAHQAHAHABAMQAAAMgHAJQgJAKgNAAQgMAAgHgHg");
	this.shape_197.setTransform(123.4,116.05);

	this.shape_198 = new cjs.Shape();
	this.shape_198.graphics.f("#CCCCCC").s().p("AAFArIAAhCQgDADgGAEIgLAFIAAgJQAJgFAGgGQAGgGADgFIAHAAIAABVg");
	this.shape_198.setTransform(116.275,115.9);

	this.shape_199 = new cjs.Shape();
	this.shape_199.graphics.f("#CCCCCC").s().p("AAPAfIAAguIgcAuIgMAAIAAg9IALAAIAAAuIAcguIAMAAIAAA9g");
	this.shape_199.setTransform(106.7,117.1);

	this.shape_200 = new cjs.Shape();
	this.shape_200.graphics.f("#CCCCCC").s().p("AgdAfIAAgJIAEAAIAFgBIACgCIAAgJIAAgoIAwAAIAAA9IgKAAIAAg1IgbAAIAAAeIgBAPQgBADgDADQgDACgGAAIgIAAg");
	this.shape_200.setTransform(99.525,117.125);

	this.shape_201 = new cjs.Shape();
	this.shape_201.graphics.f("#CCCCCC").s().p("AAPAfIAAguIgcAuIgMAAIAAg9IALAAIAAAuIAcguIAMAAIAAA9g");
	this.shape_201.setTransform(93,117.1);

	this.shape_202 = new cjs.Shape();
	this.shape_202.graphics.f("#CCCCCC").s().p("AgEAfIAAg1IgUAAIAAgIIAyAAIAAAIIgVAAIAAA1g");
	this.shape_202.setTransform(83.55,117.1);

	this.shape_203 = new cjs.Shape();
	this.shape_203.graphics.f("#CCCCCC").s().p("AgUAYQgIgJAAgOQAAgQAIgIQAIgIAMgBQANABAIAIQAIAJAAAOIgBADIgtAAQABAKAFAGQAFAEAHAAQAGAAAEgCQAEgDACgHIALABQgCAKgHAFQgHAGgLgBQgNAAgIgIgAgLgSQgFAFAAAIIAhAAQAAgIgEgEQgFgGgIAAQgGAAgFAFg");
	this.shape_203.setTransform(77.475,117.1);

	this.shape_204 = new cjs.Shape();
	this.shape_204.graphics.f("#CCCCCC").s().p("AgdAfIAAgJIAEAAIAFgBIACgCIAAgJIAAgoIAwAAIAAA9IgKAAIAAg1IgbAAIAAAeIgBAPQgBADgDADQgDACgGAAIgIAAg");
	this.shape_204.setTransform(70.325,117.125);

	this.shape_205 = new cjs.Shape();
	this.shape_205.graphics.f("#CCCCCC").s().p("AgTAkQgIgGAAgLIALgBQABAIAEAEQAFAFAGAAQAHAAAFgHQAFgFAAgKQAAgIgFgFQgFgFgHAAQgFAAgEACQgFACgBADIgKgBIAIgrIApAAIAAAKIghAAIgFAXQAIgFAIgBQALABAHAHQAJAHAAAMQAAAMgIAJQgHAKgOAAQgLAAgIgHg");
	this.shape_205.setTransform(60.5,116.05);

	this.shape_206 = new cjs.Shape();
	this.shape_206.graphics.f("#CCCCCC").s().p("AARAfIAAgZIgGAAQgGAAgDACQgCABgFAJIgJANIgMAAIAKgRQAGgIAFgBQgJgBgEgEQgFgFAAgHQABgIAFgFQAGgFALAAIAcAAIAAA9gAgJgTQgDAEAAADQAAAGAEACQAEADAJAAIAMAAIAAgVIgPAAQgJAAgCADg");
	this.shape_206.setTransform(50.25,117.1);

	this.shape_207 = new cjs.Shape();
	this.shape_207.graphics.f("#CCCCCC").s().p("AAPAfIAAguIgcAuIgMAAIAAg9IALAAIAAAuIAcguIAMAAIAAA9g");
	this.shape_207.setTransform(43.95,117.1);

	this.shape_208 = new cjs.Shape();
	this.shape_208.graphics.f("#CCCCCC").s().p("AgEAfIAAg1IgVAAIAAgIIAzAAIAAAIIgUAAIAAA1g");
	this.shape_208.setTransform(37.85,117.1);

	this.shape_209 = new cjs.Shape();
	this.shape_209.graphics.f("#CCCCCC").s().p("AAPAfIAAgcIgdAAIAAAcIgKAAIAAg9IAKAAIAAAZIAdAAIAAgZIAKAAIAAA9g");
	this.shape_209.setTransform(31.775,117.1);

	this.shape_210 = new cjs.Shape();
	this.shape_210.graphics.f("#CCCCCC").s().p("AgWAcQgFgGgBgIQAAgEACgEQADgEADgCIAIgDIAJgBQAMgCAFgBIAAgDQAAgGgCgEQgFgDgHAAQgHAAgEACQgDADgBAHIgLgCQABgGAEgEQADgEAGgDQAGgCAHAAQAIABAFABQAFACADADQACADABAEIAAAKIAAANIABASQAAAFADADIgMAAIgCgIQgFAGgFACQgFABgGAAQgKAAgGgEgAgCAEQgGABgDABQgDABgBADQgCACAAACQAAAFAEADQADACAGAAQAFAAAFgCQAEgDADgFQABgEAAgHIAAgDIgQAEg");
	this.shape_210.setTransform(25.1,117.1);

	this.shape_211 = new cjs.Shape();
	this.shape_211.graphics.f("#CCCCCC").s().p("AgaAsIAAhVIAKAAIAAAIQADgFAEgCQAEgDAGAAQAHAAAGAEQAHAEADAIQADAHAAAJQAAAKgEAGQgDAIgHAEQgGAEgHAAQgEAAgEgCQgFgCgCgEIAAAfgAgMgcQgEAGAAAMQAAALAEAGQAFAFAHAAQAGAAAFgFQAFgGAAgMQAAgMgFgGQgEgGgHAAQgGAAgGAHg");
	this.shape_211.setTransform(18.65,118.225);

	this.shape_212 = new cjs.Shape();
	this.shape_212.graphics.f("#CCCCCC").s().p("AgWAcQgGgGAAgIQABgEACgEQACgEADgCIAHgDIAKgBQAMgCAFgBIAAgDQAAgGgCgEQgEgDgIAAQgGAAgFACQgDADgBAHIgLgCQABgGAEgEQADgEAGgDQAGgCAHAAQAIABAFABQAFACACADQADADABAEIAAAKIAAANIABASQABAFACADIgLAAIgDgIQgGAGgFACQgEABgGAAQgLAAgFgEgAgCAEQgGABgDABQgDABgBADQgBACAAACQgBAFAEADQADACAGAAQAFAAAFgCQAEgDADgFQACgEgBgHIAAgDIgQAEg");
	this.shape_212.setTransform(11.8,117.1);

	this.shape_213 = new cjs.Shape();
	this.shape_213.graphics.f("#CCCCCC").s().p("AgbArIAAhVIA3AAIAAAKIgrAAIAABLg");
	this.shape_213.setTransform(5.725,115.9);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[{t:this.shape_213},{t:this.shape_212},{t:this.shape_211},{t:this.shape_210},{t:this.shape_209},{t:this.shape_208},{t:this.shape_207},{t:this.shape_206},{t:this.shape_205},{t:this.shape_204},{t:this.shape_203},{t:this.shape_202},{t:this.shape_201},{t:this.shape_200},{t:this.shape_199},{t:this.shape_198},{t:this.shape_197},{t:this.shape_196},{t:this.shape_195},{t:this.shape_194},{t:this.shape_193},{t:this.shape_192},{t:this.shape_191},{t:this.shape_190},{t:this.shape_189},{t:this.shape_188},{t:this.shape_187},{t:this.shape_186},{t:this.shape_185},{t:this.shape_184},{t:this.shape_183},{t:this.shape_182},{t:this.shape_181},{t:this.shape_180},{t:this.shape_179},{t:this.shape_178},{t:this.shape_177},{t:this.shape_176},{t:this.shape_175},{t:this.shape_174},{t:this.shape_173},{t:this.shape_172},{t:this.shape_171},{t:this.shape_170},{t:this.shape_169},{t:this.shape_168},{t:this.shape_167},{t:this.shape_166},{t:this.shape_165},{t:this.shape_164},{t:this.shape_163},{t:this.shape_162},{t:this.shape_161},{t:this.shape_160},{t:this.shape_159},{t:this.shape_158},{t:this.shape_157},{t:this.shape_156},{t:this.shape_155},{t:this.shape_154},{t:this.shape_153},{t:this.shape_152},{t:this.shape_151},{t:this.shape_150},{t:this.shape_149},{t:this.shape_148},{t:this.shape_147},{t:this.shape_146},{t:this.shape_145},{t:this.shape_144},{t:this.shape_143},{t:this.shape_142},{t:this.shape_141},{t:this.shape_140},{t:this.shape_139},{t:this.shape_138},{t:this.shape_137},{t:this.shape_136},{t:this.shape_135},{t:this.shape_134},{t:this.shape_133},{t:this.shape_132},{t:this.shape_131},{t:this.shape_130},{t:this.shape_129},{t:this.shape_128},{t:this.shape_127},{t:this.shape_126},{t:this.shape_125},{t:this.shape_124},{t:this.shape_123},{t:this.shape_122},{t:this.shape_121},{t:this.shape_120},{t:this.shape_119},{t:this.shape_118},{t:this.shape_117},{t:this.shape_116},{t:this.shape_115},{t:this.shape_114},{t:this.shape_113},{t:this.shape_112},{t:this.shape_111},{t:this.shape_110},{t:this.shape_109},{t:this.shape_108},{t:this.shape_107},{t:this.shape_106},{t:this.shape_105},{t:this.shape_104},{t:this.shape_103},{t:this.shape_102},{t:this.shape_101},{t:this.shape_100},{t:this.shape_99},{t:this.shape_98},{t:this.shape_97},{t:this.shape_96},{t:this.shape_95},{t:this.shape_94},{t:this.shape_93},{t:this.shape_92},{t:this.shape_91},{t:this.shape_90},{t:this.shape_89},{t:this.shape_88},{t:this.shape_87},{t:this.shape_86},{t:this.shape_85},{t:this.shape_84},{t:this.shape_83},{t:this.shape_82},{t:this.shape_81},{t:this.shape_80},{t:this.shape_79},{t:this.shape_78},{t:this.shape_77},{t:this.shape_76},{t:this.shape_75},{t:this.shape_74},{t:this.shape_73},{t:this.shape_72},{t:this.shape_71},{t:this.shape_70},{t:this.shape_69},{t:this.shape_68},{t:this.shape_67},{t:this.shape_66},{t:this.shape_65},{t:this.shape_64},{t:this.shape_63},{t:this.shape_62},{t:this.shape_61},{t:this.shape_60},{t:this.shape_59},{t:this.shape_58},{t:this.shape_57},{t:this.shape_56},{t:this.shape_55},{t:this.shape_54},{t:this.shape_53},{t:this.shape_52},{t:this.shape_51},{t:this.shape_50},{t:this.shape_49},{t:this.shape_48},{t:this.shape_47},{t:this.shape_46},{t:this.shape_45},{t:this.shape_44},{t:this.shape_43},{t:this.shape_42},{t:this.shape_41},{t:this.shape_40},{t:this.shape_39},{t:this.shape_38},{t:this.shape_37},{t:this.shape_36},{t:this.shape_35},{t:this.shape_34},{t:this.shape_33},{t:this.shape_32},{t:this.shape_31},{t:this.shape_30},{t:this.shape_29},{t:this.shape_28},{t:this.shape_27},{t:this.shape_26},{t:this.shape_25},{t:this.shape_24},{t:this.shape_23},{t:this.shape_22},{t:this.shape_21},{t:this.shape_20},{t:this.shape_19},{t:this.shape_18},{t:this.shape_17},{t:this.shape_16},{t:this.shape_15},{t:this.shape_14},{t:this.shape_13},{t:this.shape_12},{t:this.shape_11},{t:this.shape_10},{t:this.shape_9},{t:this.shape_8},{t:this.shape_7},{t:this.shape_6},{t:this.shape_5},{t:this.shape_4},{t:this.shape_3},{t:this.shape_2},{t:this.shape_1},{t:this.shape}]}).wait(1));

	// Layer_2
	this.instance = new lib.Symbol21();
	this.instance.parent = this;
	this.instance.setTransform(137.45,112.25,2.0614,1.2036,0,0,0,88.9,88.8);
	this.instance.alpha = 0.7109;

	this.timeline.addTween(cjs.Tween.get(this.instance).wait(1));

}).prototype = getMCSymbolPrototype(lib.Symbol19, new cjs.Rectangle(-45.8,0,367,219.6), null);


(lib.Symbol12 = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// timeline functions:
	this.frame_73 = function() {
		this.stop();
	}

	// actions tween:
	this.timeline.addTween(cjs.Tween.get(this).wait(73).call(this.frame_73).wait(17));

	// Layer_3 (mask)
	var mask = new cjs.Shape();
	mask._off = true;
	mask.graphics.p("AyKmSMAkVAAAIAACdIkfJgI/2Aog");
	mask.setTransform(104.325,31.975);

	// Layer_4
	this.instance = new lib.Symbol3();
	this.instance.parent = this;
	this.instance.setTransform(-75.4,36.2,1,1,0,0,0,60.1,13.4);
	this.instance.alpha = 0;
	this.instance._off = true;

	var maskedShapeInstanceList = [this.instance];

	for(var shapedInstanceItr = 0; shapedInstanceItr < maskedShapeInstanceList.length; shapedInstanceItr++) {
		maskedShapeInstanceList[shapedInstanceItr].mask = mask;
	}

	this.timeline.addTween(cjs.Tween.get(this.instance).wait(5).to({_off:false},0).to({x:59.1,alpha:1},36,cjs.Ease.cubicOut).wait(49));

	// Layer_1
	this.instance_1 = new lib.Symbol6();
	this.instance_1.parent = this;
	this.instance_1.setTransform(-62.6,13.4,1,1,0,0,0,87.8,13.4);
	this.instance_1.alpha = 0;

	var maskedShapeInstanceList = [this.instance_1];

	for(var shapedInstanceItr = 0; shapedInstanceItr < maskedShapeInstanceList.length; shapedInstanceItr++) {
		maskedShapeInstanceList[shapedInstanceItr].mask = mask;
	}

	this.timeline.addTween(cjs.Tween.get(this.instance_1).to({x:87.8,alpha:1},36,cjs.Ease.cubicOut).wait(54));

}).prototype = p = new cjs.MovieClip();
p.nominalBounds = new cjs.Rectangle(-11.9,-0.5,199.6,47.9);


(lib.Symbol1 = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// Layer_2
	this.shape = new cjs.Shape();
	this.shape.graphics.lf(["rgba(8,20,29,0)","#08141D"],[0.09,1],0,99.7,0,-99).s().p("A9KPiIAA/CMA6VAAAIAAfCg");
	this.shape.setTransform(125.6,-11.8,1,1,0,0,0,-1.6,-101.6);

	this.shape_1 = new cjs.Shape();
	this.shape_1.graphics.lf(["rgba(8,20,29,0)","#08141D"],[0.09,0.902],-0.1,-43,-0.1,42.6).s().p("A9KGsIAAtXMA6VAAAIAANXg");
	this.shape_1.setTransform(130.95,308.6,1,1,0,0,0,3.8,42.4);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[{t:this.shape_1},{t:this.shape}]}).wait(1));

	// Layer_1 copy
	this.instance = new lib.Symbol13();
	this.instance.parent = this;
	this.instance.setTransform(289.6,0.8,1.177,1.177,0,0,0,289.6,0.8);

	this.timeline.addTween(cjs.Tween.get(this.instance).wait(1));

}).prototype = getMCSymbolPrototype(lib.Symbol1, new cjs.Rectangle(-59.5,-9.5,373.4,362.5), null);


(lib.btn_layers = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// timeline functions:
	this.frame_119 = function() {
		this.gotoAndPlay(0);
	}

	// actions tween:
	this.timeline.addTween(cjs.Tween.get(this).wait(119).call(this.frame_119).wait(1));

	// Arrow_animation
	this.instance = new lib.Arrow();
	this.instance.parent = this;
	this.instance.setTransform(3,4,1,1,0,0,0,4.5,4);

	this.timeline.addTween(cjs.Tween.get(this.instance).to({x:6},14,cjs.Ease.cubicIn).to({x:3},15,cjs.Ease.cubicOut).to({x:6},14,cjs.Ease.cubicIn).to({x:3},15,cjs.Ease.cubicOut).to({x:6},14,cjs.Ease.cubicIn).wait(1).to({regX:4.6,regY:3.6,x:5.5,y:3.6},0).wait(1).to({x:5},0).wait(1).to({x:4.6},0).wait(1).to({x:4.25},0).wait(1).to({x:3.95},0).wait(1).to({x:3.75},0).wait(1).to({regX:4.5,regY:4,x:3.45,y:4},0).wait(41));

}).prototype = p = new cjs.MovieClip();
p.nominalBounds = new cjs.Rectangle(-2.3,-1.3,13,9.9);


(lib.btn = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// line_mask (mask)
	var mask = new cjs.Shape();
	mask._off = true;
	var mask_graphics_0 = new cjs.Graphics().p("ADqGzIjqAAIAAlAIOoAAIAAFAg");
	var mask_graphics_1 = new cjs.Graphics().p("ADqGxIjqAAIAAlAIOoAAIAAFAg");
	var mask_graphics_2 = new cjs.Graphics().p("ADqGrIjqAAIAAlAIOoAAIAAFAg");
	var mask_graphics_3 = new cjs.Graphics().p("ADqGhIjqAAIAAlAIOoAAIAAFAg");
	var mask_graphics_4 = new cjs.Graphics().p("ADqGTIjqAAIAAlAIOoAAIAAFAg");
	var mask_graphics_5 = new cjs.Graphics().p("ADqGBIjqAAIAAlAIOoAAIAAFAg");
	var mask_graphics_6 = new cjs.Graphics().p("ADqFsIjqAAIAAlBIOoAAIAAFBg");
	var mask_graphics_7 = new cjs.Graphics().p("ADqFSIjqAAIAAlBIOoAAIAAFBg");
	var mask_graphics_8 = new cjs.Graphics().p("ADqE0IjqAAIAAlAIOoAAIAAFAg");

	this.timeline.addTween(cjs.Tween.get(mask).to({graphics:mask_graphics_0,x:93.5944,y:43.5248}).wait(1).to({graphics:mask_graphics_1,x:93.5944,y:43.3256}).wait(1).to({graphics:mask_graphics_2,x:93.5944,y:42.7279}).wait(1).to({graphics:mask_graphics_3,x:93.5944,y:41.7318}).wait(1).to({graphics:mask_graphics_4,x:93.5944,y:40.3373}).wait(1).to({graphics:mask_graphics_5,x:93.5944,y:38.5443}).wait(1).to({graphics:mask_graphics_6,x:93.5944,y:36.3529}).wait(1).to({graphics:mask_graphics_7,x:93.5944,y:33.7631}).wait(1).to({graphics:mask_graphics_8,x:93.5944,y:30.7748}).wait(1).to({graphics:null,x:0,y:0}).wait(706));

	// line_left
	this.instance = new lib.btn_line2();
	this.instance.parent = this;
	this.instance.setTransform(98.65,43.75,1,1,0,0,0,0,10);

	var maskedShapeInstanceList = [this.instance];

	for(var shapedInstanceItr = 0; shapedInstanceItr < maskedShapeInstanceList.length; shapedInstanceItr++) {
		maskedShapeInstanceList[shapedInstanceItr].mask = mask;
	}

	this.timeline.addTween(cjs.Tween.get(this.instance).wait(715));

	// line_mask (mask)
	var mask_1 = new cjs.Shape();
	mask_1._off = true;
	var mask_1_graphics_0 = new cjs.Graphics().p("ADqCgIjqAAIAAk/IOoAAIAAE/g");
	var mask_1_graphics_1 = new cjs.Graphics().p("ADqCjIjqAAIAAlAIOoAAIAAFAg");
	var mask_1_graphics_2 = new cjs.Graphics().p("ADqCpIjqAAIAAk/IOoAAIAAE/g");
	var mask_1_graphics_3 = new cjs.Graphics().p("ADqC1IjqAAIAAlAIOoAAIAAFAg");
	var mask_1_graphics_4 = new cjs.Graphics().p("ADqDFIjqAAIAAk/IOoAAIAAE/g");
	var mask_1_graphics_5 = new cjs.Graphics().p("ADqDaIjqAAIAAlAIOoAAIAAFAg");
	var mask_1_graphics_6 = new cjs.Graphics().p("ADqDzIjqAAIAAk/IOoAAIAAE/g");
	var mask_1_graphics_7 = new cjs.Graphics().p("ADqERIjqAAIAAk/IOoAAIAAE/g");
	var mask_1_graphics_8 = new cjs.Graphics().p("ADqE0IjqAAIAAlAIOoAAIAAFAg");

	this.timeline.addTween(cjs.Tween.get(mask_1).to({graphics:mask_1_graphics_0,x:93.5944,y:16.0248}).wait(1).to({graphics:mask_1_graphics_1,x:93.5944,y:16.2552}).wait(1).to({graphics:mask_1_graphics_2,x:93.5944,y:16.9467}).wait(1).to({graphics:mask_1_graphics_3,x:93.5944,y:18.099}).wait(1).to({graphics:mask_1_graphics_4,x:93.5944,y:19.7123}).wait(1).to({graphics:mask_1_graphics_5,x:93.5944,y:21.7865}).wait(1).to({graphics:mask_1_graphics_6,x:93.5944,y:24.3217}).wait(1).to({graphics:mask_1_graphics_7,x:93.5944,y:27.3177}).wait(1).to({graphics:mask_1_graphics_8,x:93.5944,y:30.7748}).wait(1).to({graphics:null,x:0,y:0}).wait(706));

	// line_right
	this.instance_1 = new lib.btn_line2();
	this.instance_1.parent = this;
	this.instance_1.setTransform(185.6,43.75,1,1,0,0,0,0,10);

	var maskedShapeInstanceList = [this.instance_1];

	for(var shapedInstanceItr = 0; shapedInstanceItr < maskedShapeInstanceList.length; shapedInstanceItr++) {
		maskedShapeInstanceList[shapedInstanceItr].mask = mask_1;
	}

	this.timeline.addTween(cjs.Tween.get(this.instance_1).wait(715));

	// line_mask (mask)
	var mask_2 = new cjs.Shape();
	mask_2._off = true;
	var mask_2_graphics_8 = new cjs.Graphics().p("AjpE0IjqAAIAAlAIOnAAIAAFAg");
	var mask_2_graphics_9 = new cjs.Graphics().p("AioE0IjqAAIAAlAIOmAAIAAFAg");
	var mask_2_graphics_10 = new cjs.Graphics().p("AhsE0IjrAAIAAlAIOnAAIAAFAg");
	var mask_2_graphics_11 = new cjs.Graphics().p("Ag2E0IjqAAIAAlAIOnAAIAAFAg");
	var mask_2_graphics_12 = new cjs.Graphics().p("AgDE0IjrAAIAAlAIOnAAIAAFAg");
	var mask_2_graphics_13 = new cjs.Graphics().p("AApE0IjpAAIAAlAIOnAAIAAFAg");
	var mask_2_graphics_14 = new cjs.Graphics().p("ABSE0IjqAAIAAlAIOnAAIAAFAg");
	var mask_2_graphics_15 = new cjs.Graphics().p("AB1E0IjpAAIAAlAIOnAAIAAFAg");
	var mask_2_graphics_16 = new cjs.Graphics().p("ACUE0IjpAAIAAlAIOnAAIAAFAg");
	var mask_2_graphics_17 = new cjs.Graphics().p("ACvE0IjqAAIAAlAIOnAAIAAFAg");
	var mask_2_graphics_18 = new cjs.Graphics().p("ADEE0IjpAAIAAlAIOnAAIAAFAg");
	var mask_2_graphics_19 = new cjs.Graphics().p("ADVE0IjpAAIAAlAIOmAAIAAFAg");
	var mask_2_graphics_20 = new cjs.Graphics().p("ADhE0IjpAAIAAlAIOmAAIAAFAg");
	var mask_2_graphics_21 = new cjs.Graphics().p("ADoE0IjpAAIAAlAIOnAAIAAFAg");
	var mask_2_graphics_22 = new cjs.Graphics().p("ADqE0IjqAAIAAlAIOoAAIAAFAg");

	this.timeline.addTween(cjs.Tween.get(mask_2).to({graphics:null,x:0,y:0}).wait(8).to({graphics:mask_2_graphics_8,x:46.7944,y:30.7748}).wait(1).to({graphics:mask_2_graphics_9,x:53.2414,y:30.7748}).wait(1).to({graphics:mask_2_graphics_10,x:59.2108,y:30.7748}).wait(1).to({graphics:mask_2_graphics_11,x:64.7026,y:30.7748}).wait(1).to({graphics:mask_2_graphics_12,x:69.7169,y:30.7748}).wait(1).to({graphics:mask_2_graphics_13,x:74.2536,y:30.7748}).wait(1).to({graphics:mask_2_graphics_14,x:78.3128,y:30.7748}).wait(1).to({graphics:mask_2_graphics_15,x:81.8944,y:30.7748}).wait(1).to({graphics:mask_2_graphics_16,x:84.9985,y:30.7748}).wait(1).to({graphics:mask_2_graphics_17,x:87.625,y:30.7748}).wait(1).to({graphics:mask_2_graphics_18,x:89.774,y:30.7748}).wait(1).to({graphics:mask_2_graphics_19,x:91.4455,y:30.7748}).wait(1).to({graphics:mask_2_graphics_20,x:92.6393,y:30.7748}).wait(1).to({graphics:mask_2_graphics_21,x:93.3557,y:30.7748}).wait(1).to({graphics:mask_2_graphics_22,x:93.5944,y:30.7748}).wait(1).to({graphics:null,x:0,y:0}).wait(692));

	// line_top
	this.instance_2 = new lib.btn_line1();
	this.instance_2.parent = this;
	this.instance_2.setTransform(140.6,33.65,1,1,0,0,0,45,0);
	this.instance_2._off = true;

	var maskedShapeInstanceList = [this.instance_2];

	for(var shapedInstanceItr = 0; shapedInstanceItr < maskedShapeInstanceList.length; shapedInstanceItr++) {
		maskedShapeInstanceList[shapedInstanceItr].mask = mask_2;
	}

	this.timeline.addTween(cjs.Tween.get(this.instance_2).wait(8).to({_off:false},0).wait(707));

	// line_mask (mask)
	var mask_3 = new cjs.Shape();
	mask_3._off = true;
	var mask_3_graphics_8 = new cjs.Graphics().p("AK/E0IjqAAIAAlAIOoAAIAAFAg");
	var mask_3_graphics_9 = new cjs.Graphics().p("AJ/E0IjrAAIAAlAIOoAAIAAFAg");
	var mask_3_graphics_10 = new cjs.Graphics().p("AJDE0IjrAAIAAlAIOoAAIAAFAg");
	var mask_3_graphics_11 = new cjs.Graphics().p("AIME0IjrAAIAAlAIOoAAIAAFAg");
	var mask_3_graphics_12 = new cjs.Graphics().p("AHaE0IjrAAIAAlAIOoAAIAAFAg");
	var mask_3_graphics_13 = new cjs.Graphics().p("AGsE0IjqAAIAAlAIOoAAIAAFAg");
	var mask_3_graphics_14 = new cjs.Graphics().p("AGDE0IjqAAIAAlAIOoAAIAAFAg");
	var mask_3_graphics_15 = new cjs.Graphics().p("AFgE0IjrAAIAAlAIOoAAIAAFAg");
	var mask_3_graphics_16 = new cjs.Graphics().p("AFBE0IjrAAIAAlAIOoAAIAAFAg");
	var mask_3_graphics_17 = new cjs.Graphics().p("AEmE0IjqAAIAAlAIOoAAIAAFAg");
	var mask_3_graphics_18 = new cjs.Graphics().p("AERE0IjrAAIAAlAIOoAAIAAFAg");
	var mask_3_graphics_19 = new cjs.Graphics().p("AEAE0IjqAAIAAlAIOnAAIAAFAg");
	var mask_3_graphics_20 = new cjs.Graphics().p("AD0E0IjqAAIAAlAIOoAAIAAFAg");
	var mask_3_graphics_21 = new cjs.Graphics().p("ADtE0IjrAAIAAlAIOoAAIAAFAg");
	var mask_3_graphics_22 = new cjs.Graphics().p("ADqE0IjqAAIAAlAIOoAAIAAFAg");

	this.timeline.addTween(cjs.Tween.get(mask_3).to({graphics:null,x:0,y:0}).wait(8).to({graphics:mask_3_graphics_8,x:140.4694,y:30.7748}).wait(1).to({graphics:mask_3_graphics_9,x:134.0122,y:30.7748}).wait(1).to({graphics:mask_3_graphics_10,x:128.0332,y:30.7748}).wait(1).to({graphics:mask_3_graphics_11,x:122.5326,y:30.7748}).wait(1).to({graphics:mask_3_graphics_12,x:117.5102,y:30.7748}).wait(1).to({graphics:mask_3_graphics_13,x:112.9662,y:30.7748}).wait(1).to({graphics:mask_3_graphics_14,x:108.9006,y:30.7748}).wait(1).to({graphics:mask_3_graphics_15,x:105.3132,y:30.7748}).wait(1).to({graphics:mask_3_graphics_16,x:102.2041,y:30.7748}).wait(1).to({graphics:mask_3_graphics_17,x:99.5734,y:30.7748}).wait(1).to({graphics:mask_3_graphics_18,x:97.421,y:30.7748}).wait(1).to({graphics:mask_3_graphics_19,x:95.7469,y:30.7748}).wait(1).to({graphics:mask_3_graphics_20,x:94.5511,y:30.7748}).wait(1).to({graphics:mask_3_graphics_21,x:93.8336,y:30.7748}).wait(1).to({graphics:mask_3_graphics_22,x:93.5944,y:30.7748}).wait(1).to({graphics:null,x:0,y:0}).wait(692));

	// line_bot
	this.instance_3 = new lib.btn_line1();
	this.instance_3.parent = this;
	this.instance_3.setTransform(140.6,53.75,1,1,0,0,0,45,0);
	this.instance_3._off = true;

	var maskedShapeInstanceList = [this.instance_3];

	for(var shapedInstanceItr = 0; shapedInstanceItr < maskedShapeInstanceList.length; shapedInstanceItr++) {
		maskedShapeInstanceList[shapedInstanceItr].mask = mask_3;
	}

	this.timeline.addTween(cjs.Tween.get(this.instance_3).wait(8).to({_off:false},0).wait(707));

	// btn_arrow
	this.instance_4 = new lib.btn_layers();
	this.instance_4.parent = this;
	this.instance_4.setTransform(153.6,44.25,1,1,0,0,0,4.5,4);
	this.instance_4.alpha = 0;
	this.instance_4._off = true;

	this.timeline.addTween(cjs.Tween.get(this.instance_4).wait(21).to({_off:false},0).to({x:176.5,y:44,alpha:1,mode:"synched",startPosition:0},10,cjs.Ease.cubicOut).wait(684));

	// line_mask_copy (mask)
	var mask_4 = new cjs.Shape();
	mask_4._off = true;
	var mask_4_graphics_13 = new cjs.Graphics().p("AEUENIjZAAIAAjJINlAAIAADJg");

	this.timeline.addTween(cjs.Tween.get(mask_4).to({graphics:null,x:0,y:0}).wait(13).to({graphics:mask_4_graphics_13,x:92.7558,y:26.85}).wait(15).to({graphics:null,x:0,y:0}).wait(687));

	// btn_text
	this.instance_5 = new lib.btn_text();
	this.instance_5.parent = this;
	this.instance_5.setTransform(59.95,45.05,1.1407,1,0,0,0,31.1,8.3);
	this.instance_5._off = true;

	var maskedShapeInstanceList = [this.instance_5];

	for(var shapedInstanceItr = 0; shapedInstanceItr < maskedShapeInstanceList.length; shapedInstanceItr++) {
		maskedShapeInstanceList[shapedInstanceItr].mask = mask_4;
	}

	this.timeline.addTween(cjs.Tween.get(this.instance_5).wait(13).to({_off:false},0).to({scaleX:1,x:134.1,y:45.3},14,cjs.Ease.cubicOut).wait(688));

}).prototype = p = new cjs.MovieClip();
p.nominalBounds = new cjs.Rectangle(0,0,186.1,54.3);


(lib.Symbol2 = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// timeline functions:
	this.frame_187 = function() {
		this.stop();
	}

	// actions tween:
	this.timeline.addTween(cjs.Tween.get(this).wait(187).call(this.frame_187).wait(38));

	// Layer_1
	this.instance = new lib.Symbol1();
	this.instance.parent = this;
	this.instance.setTransform(249.95,195.9,1.1574,1.1574,0,0,0,234.9,197.1);

	this.timeline.addTween(cjs.Tween.get(this.instance).to({regX:235.1,regY:197.2,scaleX:0.9853,scaleY:0.9853,x:250.2,y:197.15},180,cjs.Ease.cubicOut).wait(45));

}).prototype = p = new cjs.MovieClip();
p.nominalBounds = new cjs.Rectangle(-90.7,-43.2,432.09999999999997,419.59999999999997);


(lib.Symbol351 = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// pl
	this.instance = new lib.Symbol4();
	this.instance.parent = this;
	this.instance.setTransform(120,200,1,1,0,0,0,120,200);
	this.instance._off = true;

	this.timeline.addTween(cjs.Tween.get(this.instance).wait(374).to({_off:false},0).to({alpha:0},19).to({_off:true},1).wait(336));

	// Layer_18
	this.instance_1 = new lib.Symbol20();
	this.instance_1.parent = this;
	this.instance_1.setTransform(148.3,122.05,1,1,0,0,0,69.1,29);
	this.instance_1.alpha = 0;
	this.instance_1._off = true;

	this.timeline.addTween(cjs.Tween.get(this.instance_1).wait(651).to({_off:false},0).to({alpha:1},16).wait(63));

	// pl
	this.instance_2 = new lib.Symbol4();
	this.instance_2.parent = this;
	this.instance_2.setTransform(120,200,1,1,0,0,0,120,200);
	this.instance_2.alpha = 0;
	this.instance_2._off = true;

	this.timeline.addTween(cjs.Tween.get(this.instance_2).wait(511).to({_off:false},0).to({alpha:1},17).to({alpha:0},16).to({_off:true},1).wait(185));

	// Layer_8
	this.instance_3 = new lib.Symbol19();
	this.instance_3.parent = this;
	this.instance_3.setTransform(150.6,132.35,1,1,0,0,0,136.6,93.3);
	this.instance_3._off = true;

	this.timeline.addTween(cjs.Tween.get(this.instance_3).wait(528).to({_off:false},0).wait(106).to({alpha:0},17).to({_off:true},1).wait(78));

	// logo
	this.instance_4 = new lib.Kia_logo();
	this.instance_4.parent = this;
	this.instance_4.setTransform(56.95,167.9,0.3536,0.3536,0,0,0,118.7,47.8);
	this.instance_4.alpha = 0;
	this.instance_4._off = true;

	this.timeline.addTween(cjs.Tween.get(this.instance_4).wait(406).to({_off:false},0).to({y:179.9,alpha:1},34,cjs.Ease.cubicOut).to({_off:true},88).wait(202));

	// t1
	this.instance_5 = new lib.Symbol12();
	this.instance_5.parent = this;
	this.instance_5.setTransform(11,7.8);
	this.instance_5._off = true;

	this.timeline.addTween(cjs.Tween.get(this.instance_5).wait(387).to({_off:false},0).to({_off:true},141).wait(202));

	// kn
	this.instance_6 = new lib.btn("synched",0);
	this.instance_6.parent = this;
	this.instance_6.setTransform(99.2,182);
	this.instance_6._off = true;

	this.timeline.addTween(cjs.Tween.get(this.instance_6).wait(423).to({_off:false},0).to({_off:true},105).wait(202));

	// Layer_2
	this.instance_7 = new lib.Symbol2();
	this.instance_7.parent = this;
	this.instance_7.setTransform(172.25,127.75,0.9238,0.9238,0,0,0,164.1,158.2);
	this.instance_7._off = true;

	this.timeline.addTween(cjs.Tween.get(this.instance_7).wait(375).to({_off:false},0).to({_off:true},153).wait(202));

	// Слой_2
	this.shape = new cjs.Shape();
	this.shape.graphics.f("#000000").s().p("A5EVkMAAAgrHMAyJAAAMAAAArHg");
	this.shape.setTransform(152.5,125.05);
	this.shape._off = true;

	this.timeline.addTween(cjs.Tween.get(this.shape).wait(374).to({_off:false},0).wait(356));

	// pl
	this.instance_8 = new lib.Symbol4();
	this.instance_8.parent = this;
	this.instance_8.setTransform(120,200,1,1,0,0,0,120,200);

	this.timeline.addTween(cjs.Tween.get(this.instance_8).to({alpha:0},19).to({_off:true},1).wait(710));

	// pl
	this.instance_9 = new lib.Symbol4();
	this.instance_9.parent = this;
	this.instance_9.setTransform(120,200,1,1,0,0,0,120,200);
	this.instance_9.alpha = 0;
	this.instance_9._off = true;

	this.timeline.addTween(cjs.Tween.get(this.instance_9).wait(356).to({_off:false},0).to({alpha:1},17).to({_off:true},1).wait(356));

	// Layer_18
	this.instance_10 = new lib.Symbol20();
	this.instance_10.parent = this;
	this.instance_10.setTransform(148.3,122.05,1,1,0,0,0,69.1,29);
	this.instance_10.alpha = 0;
	this.instance_10._off = true;

	this.timeline.addTween(cjs.Tween.get(this.instance_10).wait(277).to({_off:false},0).to({alpha:1},16).to({_off:true},81).wait(356));

	// pl
	this.instance_11 = new lib.Symbol4();
	this.instance_11.parent = this;
	this.instance_11.setTransform(120,200,1,1,0,0,0,120,200);
	this.instance_11.alpha = 0;
	this.instance_11._off = true;

	this.timeline.addTween(cjs.Tween.get(this.instance_11).wait(137).to({_off:false},0).to({alpha:1},17).to({alpha:0},16).to({_off:true},1).wait(559));

	// Layer_8
	this.instance_12 = new lib.Symbol19();
	this.instance_12.parent = this;
	this.instance_12.setTransform(150.6,132.35,1,1,0,0,0,136.6,93.3);
	this.instance_12._off = true;

	this.timeline.addTween(cjs.Tween.get(this.instance_12).wait(154).to({_off:false},0).wait(106).to({alpha:0},17).to({_off:true},1).wait(452));

	// logo
	this.instance_13 = new lib.Kia_logo();
	this.instance_13.parent = this;
	this.instance_13.setTransform(56.95,167.9,0.3536,0.3536,0,0,0,118.7,47.8);
	this.instance_13.alpha = 0;
	this.instance_13._off = true;

	this.timeline.addTween(cjs.Tween.get(this.instance_13).wait(32).to({_off:false},0).to({y:179.9,alpha:1},34,cjs.Ease.cubicOut).to({_off:true},88).wait(576));

	// t1
	this.instance_14 = new lib.Symbol12();
	this.instance_14.parent = this;
	this.instance_14.setTransform(11,7.8);
	this.instance_14._off = true;

	this.timeline.addTween(cjs.Tween.get(this.instance_14).wait(13).to({_off:false},0).to({_off:true},141).wait(576));

	// kn
	this.instance_15 = new lib.btn("synched",0);
	this.instance_15.parent = this;
	this.instance_15.setTransform(99.2,182);
	this.instance_15._off = true;

	this.timeline.addTween(cjs.Tween.get(this.instance_15).wait(49).to({_off:false},0).to({_off:true},105).wait(576));

	// Layer_2
	this.instance_16 = new lib.Symbol2();
	this.instance_16.parent = this;
	this.instance_16.setTransform(172.25,127.75,0.9238,0.9238,0,0,0,164.1,158.2);
	this.instance_16._off = true;

	this.timeline.addTween(cjs.Tween.get(this.instance_16).wait(1).to({_off:false},0).to({_off:true},153).wait(576));

	// Слой_2
	this.shape_1 = new cjs.Shape();
	this.shape_1.graphics.f("#000000").s().p("A5EVkMAAAgrHMAyJAAAMAAAArHg");
	this.shape_1.setTransform(152.5,125.05);

	this.timeline.addTween(cjs.Tween.get(this.shape_1).to({_off:true},374).wait(356));

}).prototype = p = new cjs.MovieClip();
p.nominalBounds = new cjs.Rectangle(-138.9,-58.3,474.9,387.6);


// stage content:
(lib._300x250 = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// timeline functions:
	this.frame_0 = function() {
		var domOverlay = document.getElementById("dom_overlay_container");
		//domOverlay.style.border = '1px solid rgba( 0, 0, 0, 0.5)'; // width solid/dotted/dashed + color 05 = alpha
		domOverlay.style.border = '1px solid #999999'; // width solid/dotted/dashed + color 05 = alpha
		domOverlay.style.boxSizing = 'border-box';
	}

	// actions tween:
	this.timeline.addTween(cjs.Tween.get(this).call(this.frame_0).wait(1));

	// Layer_3
	this.instance = new lib.Symbol351();
	this.instance.parent = this;
	this.instance.setTransform(151,123,1,1,0,0,0,151,123);

	this.timeline.addTween(cjs.Tween.get(this.instance).wait(1));

	// Layer_4
	this.shape = new cjs.Shape();
	this.shape.graphics.f("#08141D").s().p("A3bTiMAAAgnDMAu3AAAMAAAAnDg");
	this.shape.setTransform(150,125);

	this.timeline.addTween(cjs.Tween.get(this.shape).wait(1));

}).prototype = p = new cjs.MovieClip();
p.nominalBounds = new cjs.Rectangle(141.1,112.1,171.9,152.1);
// library properties:
lib.properties = {
	id: '0DA85D765483451782C6CB3230505573',
	width: 300,
	height: 250,
	fps: 25,
	color: "#FFFFFF",
	opacity: 1.00,
	manifest: [
		{src:"images/_300bg.jpg", id:"_300bg"}
	],
	preloads: []
};



// bootstrap callback support:

(lib.Stage = function(canvas) {
	createjs.Stage.call(this, canvas);
}).prototype = p = new createjs.Stage();

p.setAutoPlay = function(autoPlay) {
	this.tickEnabled = autoPlay;
}
p.play = function() { this.tickEnabled = true; this.getChildAt(0).gotoAndPlay(this.getTimelinePosition()) }
p.stop = function(ms) { if(ms) this.seek(ms); this.tickEnabled = false; }
p.seek = function(ms) { this.tickEnabled = true; this.getChildAt(0).gotoAndStop(lib.properties.fps * ms / 1000); }
p.getDuration = function() { return this.getChildAt(0).totalFrames / lib.properties.fps * 1000; }

p.getTimelinePosition = function() { return this.getChildAt(0).currentFrame / lib.properties.fps * 1000; }

an.bootcompsLoaded = an.bootcompsLoaded || [];
if(!an.bootstrapListeners) {
	an.bootstrapListeners=[];
}

an.bootstrapCallback=function(fnCallback) {
	an.bootstrapListeners.push(fnCallback);
	if(an.bootcompsLoaded.length > 0) {
		for(var i=0; i<an.bootcompsLoaded.length; ++i) {
			fnCallback(an.bootcompsLoaded[i]);
		}
	}
};

an.compositions = an.compositions || {};
an.compositions['0DA85D765483451782C6CB3230505573'] = {
	getStage: function() { return exportRoot.getStage(); },
	getLibrary: function() { return lib; },
	getSpriteSheet: function() { return ss; },
	getImages: function() { return img; }
};

an.compositionLoaded = function(id) {
	an.bootcompsLoaded.push(id);
	for(var j=0; j<an.bootstrapListeners.length; j++) {
		an.bootstrapListeners[j](id);
	}
}

an.getComposition = function(id) {
	return an.compositions[id];
}


an.makeResponsive = function(isResp, respDim, isScale, scaleType, domContainers) {		
	var lastW, lastH, lastS=1;		
	window.addEventListener('resize', resizeCanvas);		
	resizeCanvas();		
	function resizeCanvas() {			
		var w = lib.properties.width, h = lib.properties.height;			
		var iw = window.innerWidth, ih=window.innerHeight;			
		var pRatio = window.devicePixelRatio || 1, xRatio=iw/w, yRatio=ih/h, sRatio=1;			
		if(isResp) {                
			if((respDim=='width'&&lastW==iw) || (respDim=='height'&&lastH==ih)) {                    
				sRatio = lastS;                
			}				
			else if(!isScale) {					
				if(iw<w || ih<h)						
					sRatio = Math.min(xRatio, yRatio);				
			}				
			else if(scaleType==1) {					
				sRatio = Math.min(xRatio, yRatio);				
			}				
			else if(scaleType==2) {					
				sRatio = Math.max(xRatio, yRatio);				
			}			
		}			
		domContainers[0].width = w * pRatio * sRatio;			
		domContainers[0].height = h * pRatio * sRatio;			
		domContainers.forEach(function(container) {				
			container.style.width = w * sRatio + 'px';				
			container.style.height = h * sRatio + 'px';			
		});			
		stage.scaleX = pRatio*sRatio;			
		stage.scaleY = pRatio*sRatio;			
		lastW = iw; lastH = ih; lastS = sRatio;            
		stage.tickOnUpdate = false;            
		stage.update();            
		stage.tickOnUpdate = true;		
	}
}


})(createjs = createjs||{}, AdobeAn = AdobeAn||{});
var createjs, AdobeAn;