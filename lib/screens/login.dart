import 'package:e_commerce_app/screens/create_account_screen.dart';
import 'package:e_commerce_app/screens/forgot_password.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
    String username = _emailController.text;
    String password = _passwordController.text;
    print(username);
    print(password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(labelText: 'Email Address'),
            ),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _login,
              style: const ButtonStyle(
                  fixedSize: WidgetStatePropertyAll(Size(200, 50)),
                  backgroundColor: WidgetStatePropertyAll(Colors.black)),
              child: const Text(
                'LOG IN',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CreateAccountScreen()));
              },
              child: const Text(
                'CREATE AN ACCOUNT',
                style: TextStyle(color: Colors.black),
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ForgotPasswordScreen()));
                },
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(fontSize: 12),
                )),
          ],
        ),
      ),
    );
  }
}
