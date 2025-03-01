import 'package:amodh_portfolio/routing/routes.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../ui/home_screen/home_screen.dart';

final goRouterProvider=Provider<GoRouter>((ref){
  return GoRouter(
      initialLocation: Routes.home,
      routes: [
        GoRoute(path: Routes.home,builder:(context, state) {
          return HomeScreen();
        }, )
      ]);
});