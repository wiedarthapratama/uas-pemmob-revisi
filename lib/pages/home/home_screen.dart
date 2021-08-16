import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/controller/auth_controller.dart';
import 'package:hello_world/widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  final User user;
  HomeScreen(this.user);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/ueu.png",
              width: 200,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  'UID',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(user.uid),
              ],
            ),
            Row(
              children: [
                Text(
                  'Email',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(user.email),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            CustomButton(
              tulisan: 'Logout',
              fungsi: () async {
                await AuthController.signOut();
              },
            )
          ],
        ),
      ),
    );
  }
}
