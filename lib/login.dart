import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // The AppBar Section with arrow and 'Sign in' text
          Row(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
                    color: Colors.blue.shade100),
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.arrow_back),
                ),
              ),
              const Text(
                "Sign in",
                style: TextStyle(fontWeight: FontWeight.w700),
              )
            ],
          ),

          // The Login Image
          Spacer(),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
            height: 100.0,
            child: Image.asset("../assets/women.png"),
          ),
          Spacer(),

          // The Input Fields
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 229, 243, 255),
            ),
            margin: const EdgeInsets.all(10.0),
            child: const TextField(
              style: TextStyle(
                fontSize: 12,
              ),
              decoration: InputDecoration(
                fillColor: Colors.red,
                border: InputBorder.none,
                labelText: 'Enter your email',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 229, 243, 255),
            ),
            margin: const EdgeInsets.all(10.0),
            child: const TextField(
              style: TextStyle(
                fontSize: 12,
              ),
              obscureText: true,
              decoration: InputDecoration(
                  suffixIcon: Icon(Icons.remove_red_eye),
                  labelText: "Password",
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  errorBorder: InputBorder.none),
            ),
          ),

          // The Remember Me and Forget Password row
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    const Text(
                      "Remember Me",
                      style: TextStyle(
                          fontWeight: FontWeight.w800, fontSize: 13.0),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 0, 10.0, 0),
                  child: const Text(
                    "Forgot Password",
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w800,
                        fontSize: 13.0),
                  ),
                ),
              ],
            ),
          ),

          // The Sign In button
          Container(
            height: 40.0,
            width: 470.0,
            margin: const EdgeInsets.all(5.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              child: const Text("Sign In"),
            ),
          ),

          Container(
            margin: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Don't have an account? ",
                  style: TextStyle(fontSize: 13),
                ),
                Text(
                  "Sign up",
                  style: TextStyle(color: Colors.green, fontSize: 13),
                )
              ],
            ),
          ),

          // Terms and Conditions
          Container(
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                    "By clicking 'Continue with Email/Apple/Google/Facebook'",
                    style: TextStyle(fontSize: 10.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("above, you agree to",
                        style: TextStyle(fontSize: 10.0)),
                    Text("Terms and Conditions ",
                        style: TextStyle(color: Colors.amber, fontSize: 10.0)),
                    Text("and", style: TextStyle(fontSize: 10.0)),
                    Text(
                      " Privacy Policy",
                      style: TextStyle(color: Colors.amber, fontSize: 10.0),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
