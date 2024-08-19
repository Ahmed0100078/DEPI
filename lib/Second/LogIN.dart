import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  var emaicontroller = TextEditingController();
  var Passcontroller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('LogIn Screen',
        style: TextStyle(
          color: Colors.white
        ),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50,),
              Text("Log In",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 50,),
              TextField(
                controller: emaicontroller,
                decoration: InputDecoration(
                  label: Text('Enter Email'),
                  prefixIcon: Icon(Icons.email)
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 50,),
              TextField(  
                controller: Passcontroller,
                decoration: InputDecoration(
                    label: Text('Enter Password'),
                    prefixIcon: Icon(Icons.password),
                  suffixIcon: Icon(Icons.remove_red_eye)
                ),
                keyboardType: TextInputType.visiblePassword,
              ),
              SizedBox(height: 30,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Forgot Your password..?',
                  style: TextStyle(
                    fontSize: 10
                  ),),
                  TextButton(onPressed: () => print('Not Registered'), child: Text('Register')),
                ],
              ),

              OutlinedButton(
                  onPressed: ()=>print('Email is : ${emaicontroller.text} , password is : ${Passcontroller.text} '), child: Text('Log In'))
            ],
          ),
        ),
      ),
    );
  }
}
