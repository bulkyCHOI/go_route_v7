import 'package:flutter/material.dart';
import 'package:go_route_v7/layout/default_layout.dart';
import 'package:go_route_v7/route/router.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      body: ListView(
        children: [
          Text('Login State: $authState'),
          SizedBox(height: 16.0,),
          ElevatedButton(
            onPressed: () {
              setState(() {
                authState = !authState;
              });
            },
            child: Text(authState ? 'logout' : 'login'),
          ),
          SizedBox(height: 16.0,),
          ElevatedButton(
            onPressed: () {
              if(GoRouterState.of(context).location == '/login'){
                context.go('/login/private');
              }else {
                context.go('/login2/private');
              }
            },
            child: Text('Go to Private Button'),
          )
        ],
      ),
    );
  }
}
