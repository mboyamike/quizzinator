import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quizzinator/router/router.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://sautaxawazmyacdnjbbh.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNhdXRheGF3YXpteWFjZG5qYmJoIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODIzNDc2NDYsImV4cCI6MTk5NzkyMzY0Nn0.2bI5eEI06wC05nZ6zZzUUtbUVkFDHs5JjaU91EKRB2Q',
  );

  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(goRouterProvider);
    return MaterialApp.router(routerConfig: router);
  }
}
