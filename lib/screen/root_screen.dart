import 'package:flutter/material.dart';
import 'package:go_route_v7/layout/default_layout.dart';
import 'package:go_router/go_router.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      body: ListView(
        children: [
          ElevatedButton(
            onPressed: () {
              context.go('/basic');
            },
            child: Text('Go Basic'),
          ),
          SizedBox(height: 8.0,),
          ElevatedButton(
            onPressed: () {
              context.goNamed('named_screen');
              // go>>> /1234/123/46/1/34/51/2341/73/45/1234/1234/
              // goNamed >> /long_screen
              // 이렇게 간단하게 이름으로 이동할 수 있다.
            },
            child: Text('Go Named'),
          ),
          SizedBox(height: 8.0,),
          ElevatedButton(
            onPressed: () {
              context.go('/push');
            },
            child: Text('Go Push'),
          ),
        ],
      ),
    );
  }
}
