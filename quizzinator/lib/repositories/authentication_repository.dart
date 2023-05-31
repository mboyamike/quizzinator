import 'package:quizzinator/supabase/supabase.dart';
import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'authentication_repository.g.dart';

class AuthenticationRepository {
  AuthenticationRepository({required SupabaseClient supabaseClient})
      : _supabaseClient = supabaseClient;

  final SupabaseClient _supabaseClient;

  Stream<AuthState> onAuthStateChange() =>
      _supabaseClient.auth.onAuthStateChange;

  Session? getCurrentSession() {
    return _supabaseClient.auth.currentSession;
  }

  User? get currentUser => _supabaseClient.auth.currentUser;

  Future<AuthResponse> signIn({
    required String email,
    required String password,
  }) async {
    return _supabaseClient.auth.signInWithPassword(
      password: password,
      email: email,
    );
  }

  Future<AuthResponse> signUp({
    required String email,
    required String password,
  }) async {
    return _supabaseClient.auth.signUp(
      password: password,
      email: email,
    );
  }
}

@Riverpod(keepAlive: true)
AuthenticationRepository authenticationRepository(
    AuthenticationRepositoryRef ref) {
  final supabaseClient = ref.watch(supabaseClientProvider);
  return AuthenticationRepository(supabaseClient: supabaseClient);
}
