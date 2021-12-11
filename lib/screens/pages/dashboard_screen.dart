import 'package:f9project/screens/pages/responsive_table.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:f9project/screens/layouts/page_layout.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({
    Key? key,
  }) : super(key: key);

  final _trackingScrollController = TrackingScrollController();

  @override
  Widget build(BuildContext context) {
    return PageLayout(
      child: SafeArea(
        child: SingleChildScrollView(
            padding: EdgeInsets.all(30),
            child: Align(
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Responsive Table",
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.red,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Card(
                    elevation: 7,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Scrollbar(
                            controller: _trackingScrollController,
                            isAlwaysShown: true,
                            child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                controller: _trackingScrollController,
                                dragStartBehavior: DragStartBehavior.start,
                                child: ResponsiveTable())),
                      ],
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
