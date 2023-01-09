import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login/src/features/login/login.state_notifier.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final LoginStateNotifier loginStateNotifier =
        ref.watch(loginProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Column(
        children: [
          TextField(
            decoration: const InputDecoration(
              hintText: 'Username',
            ),
            onChanged: loginStateNotifier.changeUsername,
          ),
          TextField(
            decoration: const InputDecoration(
              hintText: 'Password',
            ),
            onChanged: loginStateNotifier.changePassword,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Login'),
          )
        ],
      ),
    );
  }
}
