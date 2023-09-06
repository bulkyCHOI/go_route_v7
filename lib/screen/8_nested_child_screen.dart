import 'package:flutter/material.dart';


//body 부분에 들어갈 위젯
class NestedChildScreen extends StatelessWidget {
  final String routeName;

  const NestedChildScreen({
    required this.routeName,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(routeName),
    );
  }
}
