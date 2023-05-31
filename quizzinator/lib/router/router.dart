import 'package:go_router/go_router.dart';
import 'package:quizzinator/ui/ui.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

@riverpod
Raw<GoRouter> goRouter(GoRouterRef ref) {
  return GoRouter(
    initialLocation: SignInPage.path,
    routes: [
      GoRoute(
        path: SignInPage.path,
        name: SignInPage.name,
        builder: (_, __) => const SignInPage(),
      ),
      GoRoute(
        path: SignUpPage.path,
        name: SignUpPage.name,
        builder: (_, __) => const SignUpPage(),
      ),
    ],
  );
}
