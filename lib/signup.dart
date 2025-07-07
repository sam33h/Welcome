import 'package:flutter/material.dart';
import 'package:signup/login.dart';
import 'package:signup/services.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmcontroller = TextEditingController();
  final formkey = GlobalKey<FormState>();
  bool visible=false;
  bool ivisible=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(key: formkey,
        child: Center(
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
                Text(
                  "Create an account, its's free",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(height: 25),
                TextFormField(
                  controller: namecontroller,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter Username";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "Username",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),

                SizedBox(height: 25),
                TextFormField(
                  controller: emailcontroller,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return " Please Enter an Email";
                    }
                    if (!value.contains("@")) {
                      return "Please enter valid email";
                    }
                    return null;
                  },
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
                TextFormField(
                  controller: passwordcontroller,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Password required";
                    }
                    return null;
                  },
                  obscureText: !ivisible,
                  decoration: InputDecoration(suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        ivisible=!ivisible;
                      });
                    },
                    icon: ivisible
                        ? Icon(Icons.visibility)
                        : Icon(Icons.visibility_off),
                  ),
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
                TextFormField(
                  controller: confirmcontroller,
                  validator: (value) {
                    if (value != passwordcontroller.text) {
                      return "Enter the same password";
                    }
                    return null;
                  },
                  obscureText: !visible,
                  decoration: InputDecoration(
                      suffixIcon: IconButton( onPressed: () {
                    setState(() {
                      visible=!visible;
                    });
                  },
                    icon: visible
                        ? Icon(Icons.visibility)
                        : Icon(Icons.visibility_off),
                  ),
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

                SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if(formkey.currentState!.validate()){
                      signupp(
                        username: namecontroller.text,
                        email: emailcontroller.text,
                        password: passwordcontroller.text,
                        confirm: confirmcontroller.text,
                        context: context,
                      );
                    }},
                    child: Text("Signup"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      foregroundColor: Colors.white,
                      side: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => login()),
                        );
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
