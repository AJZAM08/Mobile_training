import 'package:flutter/material.dart';
import 'package:prak_mobpro/component/my_button.dart';
import 'package:prak_mobpro/component/my_input_field.dart';
import 'package:prak_mobpro/pages/home_screen.dart';
import 'package:prak_mobpro/pages/login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //icon
              SizedBox(
                child: Image.asset(
                  'assets/Logo Gudang.png',
                ),
                height: 100,
                width: 100,
              ),

              //input field

              //email
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Email",
                    style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 16,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),

              const MyInputField(
                hintText: "Insert your email",
                obscureText: false,
                icon: Icon(
                  Icons.email,
                  color: Colors.deepOrange,
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              //password
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Password",
                    style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 16,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const MyInputField(
                hintText: "Insert your password",
                obscureText: true,
                icon: Icon(
                  Icons.password,
                  color: Colors.deepOrange,
                ),
              ),

              const SizedBox(
                height: 10,
              ),
              //retype pasword
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Confirm Password",
                    style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 16,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const MyInputField(
                hintText: "Re-type your password",
                obscureText: true,
                icon: Icon(
                  Icons.password,
                  color: Colors.deepOrange,
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              //button login
              MyButton(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                  text: "Register"),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already Have an Account?",
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const LoginPage())));
                    },
                    child: Text(
                      "Login now",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.deepOrange.shade700),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
