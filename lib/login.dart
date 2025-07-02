import 'package:flutter/material.dart';
import 'package:signup/signup.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 600,right: 600),
          child: Column(
              children: [
              SizedBox(height: 50),
          Text(
            "Login",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          SizedBox(height: 25),
   TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              labelText: "Email",
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
              labelText: "Password",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: Colors.black)),
            ),
          ),

          SizedBox(height: 20),
          SizedBox(
              height: 40,
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Login"),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,


                  ))),
          SizedBox(height: 50,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an account?",
                style: TextStyle(fontSize: 21, color: Colors.grey),),
              TextButton(onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => signup(),));
              },
                  child: Text("Sign up", style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),)),
            ],),
          SizedBox(height: 50),
          Image(
            image: NetworkImage(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ50yhgzSsaGyvGGysr7uHIn_j5Pwh5OgClQg&s"), )],
          ),
        ),
      ),
    );
  }
}
