import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey))),
              child: ListTile(
                trailing: const Icon(Icons.keyboard_arrow_right),
                title: const Text('Edit Profile'),
                onTap: () {},
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey))),
              child: ListTile(
                trailing: const Icon(Icons.keyboard_arrow_right),
                title: const Text('Change Password'),
                onTap: () {},
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey))),
              child: ListTile(
                trailing: const Icon(Icons.keyboard_arrow_right),
                title: const Text('My Credit Cards'),
                onTap: () {},
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey))),
              child: ListTile(
                trailing: const Icon(Icons.keyboard_arrow_right),
                title: const Text('See All My Reviews'),
                onTap: () {},
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey))),
              child: ListTile(
                trailing: const Icon(Icons.keyboard_arrow_right),
                title: const Text('Log Out'),
                onTap: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
