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
          SizedBox(height: 8.0,),
          ElevatedButton(
            onPressed: () {
              context.go('/pop');
            },
            child: Text('Go Pop'),
          ),
          SizedBox(height: 8.0,),
          ElevatedButton(
            onPressed: () {
              context.go('/path_param/456');
            },
            child: Text('Go Path Param'),
          ),
          SizedBox(height: 8.0,),
          ElevatedButton(
            onPressed: () {
              context.go('/query_param');
            },
            child: Text('Go Query Param'),
          ),
          SizedBox(height: 8.0,),
          ElevatedButton(
            onPressed: () {
              context.go('/nested/a');
            },
            child: Text('Go Nested'),
          ),
          SizedBox(height: 8.0,),
          ElevatedButton(
            onPressed: () {
              context.go('/login');
            },
            child: Text('Login Screen'),
          ),
          SizedBox(height: 8.0,),
          ElevatedButton(
            onPressed: () {
              context.go('/login2');
            },
            child: Text('Login2 Screen'),
          ),
        ],
      ),
    );
  }
}
