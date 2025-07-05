import 'package:flutter/material.dart';
import 'package:signup/login.dart';
import 'package:signup/signup.dart';

class wlcm extends StatelessWidget {
  const wlcm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Column(
              children: [
                SizedBox(height: 80),
                Text("Welcome", style: TextStyle(fontSize: 50)),
                SizedBox(height: 50),
                Image(
                  image: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjt6kYNwFy4_gStca5N_ZMrGu0SjfwN9IvGQ&s",
                  ),
                  height: 400,
                  width: 400,
                ),
                SizedBox(
                  height: 40,
                  width: 500,
                  child: ElevatedButton(
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => login(),));},
                    child: Text("Login"),
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 40,
                  width: 500,
                  child: ElevatedButton(
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => signup(),));},
                    child: Text("Sign up"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white
                    )
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
