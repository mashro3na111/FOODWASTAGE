import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: const Color.fromARGB(255, 239, 121, 73),
          leading: Icon(
              Icons.keyboard_return_sharp,
            color:Colors.black,

          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
    child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column (
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                    'Login',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,

                    ) ),
                SizedBox (
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (String value){
                    print (value);
                  },
                  decoration:InputDecoration(
                    prefixIcon: Icon(Icons.email) ,
                    labelText: 'Email Address',
                    border: OutlineInputBorder(),
                  ) ,
                ),
                SizedBox (
                  height: 20,
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal)),
                    suffixIcon: Icon(Icons.remove_red_eye),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  color: const Color.fromARGB(255, 239, 121, 73),
                  height: 50,
                  child: MaterialButton(
                    onPressed: () {},
                    child: const Text(
                      "LOGIN",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Text('Login with one of the following options.',
                  style: TextStyle(
                   // fontWeight: FontWeight.bold,
                    color: Colors.grey
                  ),

                ),
                const SizedBox(
                  height: 15,
                ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              OutlinedButton.icon(
                  onPressed:(){}
                  , icon: Icon(FontAwesomeIcons.google,color:Colors.red),
                 // color:Colors.red,
                  label: Text('Google'
                  ,style: TextStyle(
                      color: Colors.black
                    ),
                  )),
              const SizedBox(
                width: 30,
              ),
              OutlinedButton.icon(
                  onPressed:(){}
                  , icon: Icon(FontAwesomeIcons.facebook),
                  label: Text('Facebook'
                    ,style: TextStyle(
                        color: Colors.black
                    ),
                  )),
            ],
          ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Dont have an account?',
                      style: TextStyle(
                        // fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),

                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Sign up",
                        style:
                        TextStyle(color: Color.fromARGB(255, 239, 121, 73)),
                      ),
                    ),
                  ],
                ),

              ]
              
          ),
        )
        )
    );
  }
}