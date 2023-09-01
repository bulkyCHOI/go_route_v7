import 'package:flutter/material.dart';
import 'package:go_route_v7/layout/default_layout.dart';
import 'package:go_router/go_router.dart';

class PushScreen extends StatelessWidget {
  const PushScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
        body: ListView(
      children: [
        ElevatedButton(
          onPressed: () {
            //stack에 넣는 것처럼 동작하게 된다.
            context.push('/basic');
          },
          child: Text('Push Basic'),
        ),
        SizedBox(height: 8.0,),
        ElevatedButton(
          onPressed: () {
            //router의 트리 구조대로 규칙을 지킨다.
            context.go('/basic');
          },
          child: Text('Go Basic'),
        ),
      ],
    ));
  }
}
