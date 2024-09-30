import 'package:e_commerce_app/screens/login.dart';
import 'package:e_commerce_app/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  bool isLoggedin = false;

  void checkLogin() {
    setState(() {
      isLoggedin = false;
    });

    if (isLoggedin) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const ProfileScreen()));
    } else {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profile'),
            onTap: () {
              checkLogin();
            },
          ),
          ListTile(
            leading: const Icon(Icons.history),
            title: const Text('Order History'),
            onTap: () {
              checkLogin();
            },
          ),
          ListTile(
            leading: const Icon(Icons.list_alt),
            title: const Text('Wishlist'),
            onTap: () {
              checkLogin();
            },
          ),
          ListTile(
            leading: const Icon(Icons.store),
            title: const Text('Store locator'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.chat),
            title: const Text('Customer Support'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
