import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:gymbudd/Widgets/custom_app_bar.dart';

import 'fragments.dart';

class login extends StatefulWidget {
  const login({Key key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  String Email;
  String Password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 130.0),
              child: Text(
                "Welcome ",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.only(right: 165.0),
              child: Text(
                "Sign In to Continue",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 30),
            Center(
              child: SizedBox(
                width: 311,
                child: TextField(
                  decoration: const InputDecoration(
                    hintText: "Email",
                    label: Text(
                      "Enter Email",
                      style: TextStyle(color: Colors.grey),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff2BD88F),
                        width: 2,
                      ),
                    ),
                  ),
                  onChanged: (email)
                  {
                    Email = email;
                  },
                ),
              ),
            ),
            const SizedBox(height: 30),
            Center(
              child: SizedBox(
                width: 311,
                child: TextField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "Password",
                    label: Text(
                      "Password",
                      style: TextStyle(color: Colors.grey),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff2BD88F),
                        width: 2,
                      ),
                    ),
                  ),
                  onChanged: (password)
                  {
                    Password = password;
                  },
                ),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(right: 165.0),
              child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  )),
            ),
            const SizedBox(height: 30),
      InkWell(
          onTap: () async {
            try{
              if(Email.isNotEmpty && Password.isNotEmpty)
              {
                await auth.signInWithEmailAndPassword(email: Email, password: Password)
                    .then((value) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login Successfully"))))
                    .then((value) => Get.offAll(Fragments()));
              }
            }catch(e)
            {
              print(e.toString());
            }
          },
        child: Container(
          height: 50,
          width: 311,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: [
                Color(0xff0AC5B8),
                Color(0xff2BD88F),
              ],
            ),
          ),
          child: const Center(
            child: Text(
              "Login",
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(FontAwesomeIcons.google,color: Colors.red,size: 40,),
                Icon(FontAwesomeIcons.facebook,color: Colors.blue,size: 40,),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget customButton(context, String title, {onPressed}) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 50,
        width: 311,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.topRight,
            colors: [
              Color(0xff0AC5B8),
              Color(0xff2BD88F),
            ],
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }

  Widget customTextField(String hint) {
    return Center(
      child: SizedBox(
        width: 311,
        child: TextField(
          decoration: InputDecoration(
            hintText: hint,
            label: Text(
              hint,
              style: const TextStyle(color: Colors.grey),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xff2BD88F),
                width: 2,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
