import 'package:flutter/material.dart';
import '../screens/pages/dashboard_screen.dart';
//event start
import '../screens/pages/event/event_add_new.dart';
import '../screens/pages/event/event_categories.dart';
import '../screens/pages/event/event_list_view.dart';
//event end

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => DashboardScreen());

      //event start
      case 'event_list_view':
        return MaterialPageRoute(builder: (_) => EventListView());
      case 'event_add_new':
        return MaterialPageRoute(builder: (_) => EventAddNew());
      case 'event_categories':
        return MaterialPageRoute(builder: (_) => EventCategories());
      //event end

      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
