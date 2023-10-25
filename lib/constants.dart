import 'package:flutter/material.dart';

//! Colors
const Color white = Colors.white,
    whitish = Color.fromRGBO(49, 66, 186, 0.03137254901960784),
    black = Colors.black,
    grey = Color(0xFF455A64),
    greyish = Color(0xFF828A89),
    mainClr = Color(0xFF21DDBC);

//! Dimensions
late double screenHeight, screenWidth;
double padding = 10.0, margin = 10.0, radius = 10.0;

//! Paths
const String iconsPath = 'assets/icons', imagesPath = 'assets/images';

String getIcon(String icon) => "assets/icons/$icon.svg";
