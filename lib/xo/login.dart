import 'package:basics_c10_monday/xo/players_model.dart';
import 'package:basics_c10_monday/xo/xo.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = "LOGIN";

  LoginScreen({super.key});

  String player1 = "";
  TextEditingController controller1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              obscureText: false,
              onChanged: (val) {
                player1 = val;
              },
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  label: Text("Player One"),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  prefixIcon: Icon(Icons.email),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  suffixText: "@gmail.com",
                  suffixIconColor: Colors.red,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12))),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              obscureText: false,
              controller: controller1,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  label: Text("Player two"),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  prefixIcon: Icon(Icons.email),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  suffixText: "@gmail.com",
                  suffixIconColor: Colors.red,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12))),
            ),
            ElevatedButton(
                onPressed: () {

                  Navigator.pushNamed(
                    context,
                    XoGame.routeName,
                    arguments: PlayersModel(player1, controller1.text),
                  );

                },
                child: Text("Let's Go"))
          ],
        ),
      ),
    );
  }
}
