import 'package:flutter/material.dart';
import 'package:signup/login.dart';

class signup extends StatelessWidget {
  const signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 600, right: 600),
          child: Column(
            children: [
              SizedBox(height: 50),
              Text(
                "Sign up",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              SizedBox(height: 25),
              Text("Create an account, its's free",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 25),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: "Username",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.black)),

                ),
              ),


              SizedBox(height: 25),
              TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              SizedBox(height: 25),
               TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              SizedBox(height: 25),
              TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "Confirm Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              SizedBox(height: 25),

              SizedBox(height: 40, width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Signup"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      foregroundColor: Colors.white,
                      side: BorderSide(color: Colors.black),
                    ),
                  ),
              ),
              SizedBox(height: 50,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?",
                    style: TextStyle(fontSize: 21, color: Colors.grey),),
                  TextButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => login(),));},
                      child: Text("Login", style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),))
                ],)
            ],
          ),
        ),
      ),
    );
  }
}
