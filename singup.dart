import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
class signup extends StatefulWidget {
  const signup({super.key}): super ();

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  final _formkey=GlobalKey<FormState>();
  final emailController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: emailController,
                  validator: (value)
    {
      if (value == null || value.isEmpty) {
        return 'Invalid Username';
      }
      return null;
    },
            ),
            TextFormField(
                controller: emailController,
                 validator: (value){
    if (value!.isEmpty || !RegExp(r'^(?=.?[A-Z])'). hasMatch(value)) {

    return 'Invalid password';
    }
    return null;
           },
              ),
           ElevatedButton (onPressed: () {
    if (_formkey.currentState!.validate()){
    }
    },

    child: Text ('Home')),


              ],

            ),

      ),
    );
  }
}
