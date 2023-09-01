import 'package:flutter/material.dart';
import 'package:go_route_v7/layout/default_layout.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      body: ListView(
        children: [],
      ),
    );
  }
}
