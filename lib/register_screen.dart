import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 239, 121, 73),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Signup",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 55,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "First Name",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Last Name",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  labelText: "Phone Number",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(),
                ),
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
                height: 15,
              ),
              Container(
                width: double.infinity,
                color: const Color.fromARGB(255, 239, 121, 73),
                height: 50,
                child: MaterialButton(
                  onPressed: () {},
                  child: const Text(
                    "Signup",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account?",
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Login",
                      style:
                          TextStyle(color: Color.fromARGB(255, 239, 121, 73)),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
