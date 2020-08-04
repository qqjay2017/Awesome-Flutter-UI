import 'package:flutter/material.dart';
import 'package:zhihu/layout/zhihu_layout.dart';
import 'package:zhihu/screen/answer/answer_screen.dart';
import 'package:zhihu/screen/search/search_screen.dart';

final routes = {
  '/home': (context, {arguments}) => RootWidget(),
  '/search': (context, {arguments}) => SearchScreen(),
  '/question': (context, {arguments}) => AnswerToQuestion(arguments:arguments)
};

var onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name;

  final Function pageContentBuilder = routes[name];


  if (pageContentBuilder != null) {
    final Route route = MaterialPageRoute(
        builder: (context) => pageContentBuilder(context,
            arguments: settings.arguments ?? settings.arguments ));
    return route;
  }
};
