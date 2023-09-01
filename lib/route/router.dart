import 'package:go_route_v7/screen/root_screen.dart';
import 'package:go_router/go_router.dart';

// https://blog.codefactory.ai/ -> / = path
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return RootScreen();
      },
    ),
  ],
);
