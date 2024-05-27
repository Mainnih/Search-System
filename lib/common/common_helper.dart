import 'package:flutter/material.dart';

getHightScreen(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

getWidthScreen(BuildContext context) {
  return MediaQuery.of(context).size.width;
}
