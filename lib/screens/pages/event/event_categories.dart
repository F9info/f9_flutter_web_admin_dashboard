import 'package:flutter/material.dart';
import 'package:f9project/screens/layouts/page_layout.dart';

class EventCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageLayout(
      child: SafeArea(
        child: SingleChildScrollView(
            padding: EdgeInsets.all(50),
            child: Container(
              child: Text(
                "Categories",
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
            )),
      ),
    );
  }
}
