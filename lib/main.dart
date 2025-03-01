import 'package:amodh_portfolio/routing/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: const MyPortfolio()));
}


class MyPortfolio extends ConsumerWidget {
  const MyPortfolio({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final router=ref.watch(goRouterProvider);
    return MaterialApp.router(
      routerConfig: router,
      title: 'Amodh Portfolio',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
    );
  }
}
