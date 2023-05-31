import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpPage extends ConsumerWidget {
  const SignUpPage({super.key});

  static const path = '/sign-up';
  static const name = 'sign_up';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SignUpForm(),
      ),
    );
  }
}

class SignUpForm extends ConsumerStatefulWidget {
  const SignUpForm({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignUpFormState();
}

class _SignUpFormState extends ConsumerState<SignUpForm> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  Future<void> onSignUpTapped() async {}

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          TextFormField(
            controller: emailController,
            decoration: const InputDecoration(labelText: 'Email'),
          ),
          TextFormField(
            controller: passwordController,
            decoration: const InputDecoration(labelText: 'Password'),
          ),
          TextFormField(
            controller: confirmPasswordController,
            decoration: const InputDecoration(labelText: 'Confirm Password'),
          ),
          ElevatedButton(
            onPressed: onSignUpTapped,
            child: const Text('Sign Up'),
          ),
        ],
      ),
    );
  }
}
