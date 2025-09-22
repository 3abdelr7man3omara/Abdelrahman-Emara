import 'package:flutter/material.dart';
import 'package:online_shop/modules/navigation_helper.dart';

class Sign_in extends StatefulWidget {
  Sign_in({super.key});

  @override
  State<Sign_in> createState() => _Sign_inState();
}

class _Sign_inState extends State<Sign_in> {
  final TextEditingController _emialcontroll = TextEditingController();

  final TextEditingController _passcontroll = TextEditingController();

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 137, 42, 226),
      ),
      body: Container(
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 137, 42, 226)),
        child: Form(
            key: _formkey,
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width / 1.3,
                height: MediaQuery.of(context).size.height / 1.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    const Text(
                      "Welcome Back",
                      style: TextStyle(
                        color: Color.fromARGB(255, 137, 42, 226),
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text("Sing In to OnlineShop"),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Email"),
                          Container(
                            height: 65,
                            decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(5)),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: TextFormField(
                                controller: _emialcontroll,
                                validator: (value) {
                                  bool AT = false;
                                  if (value!.isEmpty) {
                                    return "Please enter your email";
                                  }
                                  for (int i = 0; i < value.length; i++) {
                                    if (value[i] == "@") {
                                      AT = true;
                                      break;
                                    }
                                  }
                                  if (!AT) return "Email must contain @ symbol";
                                  return null;
                                },
                                decoration: const InputDecoration(
                                  hintText: "Enter your Email",
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Password"),
                          Container(
                            height: 65,
                            decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(5)),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: TextFormField(
                                controller: _passcontroll,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "please enter a password";
                                  } else if (value.length < 6) {
                                    return "Password must be at least 6 charchaters";
                                  }
                                  return null;
                                },
                                decoration: const InputDecoration(
                                  hintText: "Enter your Password",
                                ),
                                obscureText: true,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor:
                                const Color.fromARGB(255, 137, 42, 226),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            minimumSize: const Size(double.infinity, 30),
                          ),
                          onPressed: () {
                            if (_formkey.currentState!.validate()) {
                              showSuccessDialog(
                                context: context,
                                title: "Account sign-in successfully",
                              );
                            }
                          },
                          child: const Text("Sign In")),
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
