import 'package:flutter/material.dart';
import 'package:signup/services.dart';

class Forpassword extends StatefulWidget {
  const Forpassword({super.key});

  @override
  State<Forpassword> createState() => _ForpasswordState();
}

class _ForpasswordState extends State<Forpassword> {
  TextEditingController emailcontroller= TextEditingController();
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body: Form(key: formkey,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 600, right: 600),
            child: Column(
              children: [
                SizedBox(height: 50),
                Text(
                  "Forgot password",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                SizedBox(height: 25),
                Text("Reset password",style: TextStyle(fontSize: 15,color: Colors.grey),),
                SizedBox(height: 25),
                TextFormField(controller: emailcontroller,validator: (value) {
                  if(value==null||value.isEmpty) {
                    return "Email required";
                  }
                  if(!value.contains('@')){
                    return "Email invalid";
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
              SizedBox(height: 20),
          SizedBox(
              height: 40,
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    if(formkey.currentState!.validate()){
                    forgt(email: emailcontroller.text, context: context);}},
                  child: Text("Send Link"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ))),
                SizedBox(height: 50),
                Image(image: NetworkImage("https://media.istockphoto.com/id/1433931166/vector/3d-illustration-wrong-password-isolated-vector-confused-man-forget-password-businessman.jpg?s=612x612&w=0&k=20&c=97G9zvX5bKo2NAuC9mEyCjvyB8-heXKqHojyG059kD4="))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
