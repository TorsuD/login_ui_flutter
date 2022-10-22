import 'package:flutter/material.dart';
import 'package:login_flutter/login.dart';
import 'package:login_flutter/signup.dart';

class ContinuePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // The SKIP button
          GestureDetector(
            onTap: (() {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) {
                  return Login();
                },
              ));
            }),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 35.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 243, 235, 213),
                        borderRadius: BorderRadius.circular(20)),
                    child: const Center(
                      child: Text(
                        "Skip",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w800),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),

          // The Image
          Spacer(),
          Container(
            margin: const EdgeInsets.fromLTRB(50, 0, 50, 0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0),
              color: const Color.fromARGB(255, 238, 238, 238),
            ),
            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: Image.asset(
                "../assets/login.png",
                height: 180.0,
              ),
            ),
          ),
          Spacer(),

          // The Button Section
          Container(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(5.0),
                  height: 40.0,
                  width: 450.0,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                      onPressed: () {},
                      child: const Text("Continue with Email")),
                ),
                Container(
                  margin: const EdgeInsets.all(5.0),
                  height: 40.0,
                  width: 450.0,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                      ),
                      onPressed: () {},
                      child: const Text("Continue with Apple")),
                ),
                Container(
                  margin: const EdgeInsets.all(5.0),
                  height: 40.0,
                  width: 450.0,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                      ),
                      onPressed: () {},
                      child: const Text("Continue with Google")),
                ),
                Container(
                  margin: const EdgeInsets.all(5.0),
                  height: 40.0,
                  width: 450.0,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 0, 82, 148),
                      ),
                      onPressed: () {},
                      child: const Text("Continue with Facebook.")),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account? "),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return SignUp();
                        },
                      ),
                    );
                  },
                  child: const Text(
                    "Sign up",
                    style: TextStyle(color: Colors.green),
                  ),
                )
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            child: Column(
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
