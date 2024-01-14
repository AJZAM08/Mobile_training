import 'package:flutter/material.dart';
import 'package:prak_mobpro/component/my_button.dart';
import 'package:prak_mobpro/component/my_input_field.dart';
import 'package:prak_mobpro/pages/home_screen.dart';
import 'package:prak_mobpro/pages/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                hintText: "Insert your Password",
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
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  },
                  text: "Login"),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't Have an Account?",
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
                              builder: ((context) => const RegisterPage())));
                    },
                    child: Text(
                      "Register now",
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
