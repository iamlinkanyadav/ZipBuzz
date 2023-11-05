import 'package:flutter/material.dart';
import 'package:zipbuzzz/presentation/homepage_one_container_screen/homepage_one_container_screen.dart';
import 'package:zipbuzzz/presentation/homepage_two_screen/homepage_two_screen.dart';
import 'package:zipbuzzz/presentation/event_details_screen/event_details_screen.dart';
import 'package:zipbuzzz/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String homepageOnePage = '/homepage_one_page';

  static const String homepageOneContainerScreen =
      '/homepage_one_container_screen';

  static const String homepageTwoScreen = '/homepage_two_screen';

  static const String eventDetailsScreen = '/event_details_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    homepageOneContainerScreen: (context) => HomepageOneContainerScreen(),
    homepageTwoScreen: (context) => HomepageTwoScreen(),
    eventDetailsScreen: (context) => EventDetailsScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
