import 'package:go_route_v7/screen/1_basic_screen.dart';
import 'package:go_route_v7/screen/2_named_screen.dart';
import 'package:go_route_v7/screen/3_push_screen.dart';
import 'package:go_route_v7/screen/4_pop_base_screen.dart';
import 'package:go_route_v7/screen/5_pop_return_screen.dart';
import 'package:go_route_v7/screen/6_path_param_screen.dart';
import 'package:go_route_v7/screen/7_query_parameter_screen.dart';
import 'package:go_route_v7/screen/8_nested_child_screen.dart';
import 'package:go_route_v7/screen/8_nested_screen.dart';
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
      //중첩이 가능하다.
      routes: [
        GoRoute(
          path: 'basic',
          builder: (context, state) {
            return BasicScreen();
          },
        ),
        GoRoute(
          path: 'named',
          name: 'named_screen',
          builder: (context, state) {
            return NamedScreen();
          },
        ),
        GoRoute(
          path: 'push',
          builder: (context, state) {
            return PushScreen();
          },
        ),
        GoRoute(
          path: 'pop',
          builder: (context, state) {
            return PopBaseScreen();
          },
          routes: [
            GoRoute(
              path: 'return',
              builder: (context, state) {
                return PopReturnScreen();
              },
            )
          ],
        ),
        GoRoute(
          path: 'path_param/:id',
          builder: (context, state) {
            return PathParamScreen();
          },
          routes: [
            GoRoute(
              path: ':name',
              builder: (context, state) {
                return PathParamScreen();
              },
            ),
          ],
        ),
        GoRoute(
          path: 'query_param',
          builder: (context, state) {
            return QueryParameterScreen();
          },
        ),
        ShellRoute(
          //하위 child 위젯을 인자로 받음으로써, NestedScreen 안에 body안에서 사용할수 있도록 만들어져 있다.
          //shell처럼 child를 한번 감싸주는 형태를 띄게 된다.
          builder: (context, state, child) {
            return NestedScreen(child: child);
          },
          routes: [
            GoRoute(
              path: 'nested/a',
              builder: (_, state) => NestedChildScreen(
                routeName: '/nested/a',
              ),
            ),
            GoRoute(
              path: 'nested/b',
              builder: (_, state) => NestedChildScreen(
                routeName: '/nested/b',
              ),
            ),
            GoRoute(
              path: 'nested/c',
              builder: (_, state) => NestedChildScreen(
                routeName: '/nested/c',
              ),
            ),
          ],
        )
      ],
    ),
  ],
);
