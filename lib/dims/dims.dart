import 'package:flutter/material.dart';

class Dims {
	/// `[width]` is the current device width
	late double width; 
	/// `[height]` is the current device height
	late double height;

	/// `[_debugDevWidth] is the width of the device that the application is been debugging onto` 
	final double _debugDevWidth =  375.0;
	/// `[_debugDevHeight] is the height of the device that the application is been debugging onto` 
	final double _debugDevHeight =  667.0;


	/// `[_heightRatio]` the ratio of current device height to the debugging device width
	late double _heightRatio;
	/// `[_widthRatio]` the ratio of current device width to the debugging device width
	late double _widthRatio;


	/// `[mq]` the media query of the current context
	late MediaQueryData mq;


	Dims(BuildContext context){
		mq = MediaQuery.of(context);
		width = mq.size.width;
		height = mq.size.height;
		_widthRatio = width / _debugDevWidth;
		_heightRatio = height / _debugDevHeight;
	}


	double configHeight(double x) => x * _heightRatio;

	double configWidth(double x) => x * _widthRatio;
}
