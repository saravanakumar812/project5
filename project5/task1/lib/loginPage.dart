import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('LOGIN PAGE'),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 110, vertical: 50),
              child: Text(
                "Login Page",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
                width: 350,
                child: TextFormField(
                  obscureText: false,
                  keyboardType: isPassword
                      ? TextInputType.visiblePassword
                      : TextInputType.text,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Icon(Icons.create, color: Colors.black),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: const Color.fromARGB(250, 221, 214, 214),
                          ),
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: const Color.fromARGB(200, 221, 214, 214),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      contentPadding: EdgeInsets.all(10),
                      hintText: "Enter Your username",
                      hintStyle: TextStyle(
                        color: Color.fromARGB(249, 87, 85, 85),
                      )),
                )),
            SizedBox(
              height: 20,
            ),
            Container(
                width: 350,
                child: TextField(
                  obscureText: false,
                  keyboardType: isPassword
                      ? TextInputType.visiblePassword
                      : TextInputType.text,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Icon(Icons.lock_outline, color: Colors.black),
                      suffixIcon:
                          Icon(Icons.visibility_outlined, color: Colors.black),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: const Color.fromARGB(250, 221, 214, 214),
                          ),
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: const Color.fromARGB(200, 221, 214, 214),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      contentPadding: EdgeInsets.all(10),
                      hintText: "Enter Your Password",
                      hintStyle: TextStyle(
                        color: Color.fromARGB(249, 87, 85, 85),
                      )),
                )),
            SizedBox(
              height: 10,
            ),
              Container(
                  width: 340,
                  height: 40,
                  margin: EdgeInsets.only(top: 20),
                  child: TextButton(
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        primary: Colors.black,
                        backgroundColor: Color.fromARGB(
                            255, 140, 232, 20), // Background Color
                      ),
                      onPressed: () {},
                      child: Text(
                        "Login",
                        style: TextStyle(fontSize: 20),
                      ))),
        
          ],
        ));
  }

  TextFormField buildTextField(
      IconData icon, String hintText, bool isPassword, bool isEmail) {
    return TextFormField(
      obscureText: isPassword,
      keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
      decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: Colors.grey,
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          contentPadding: EdgeInsets.all(10),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey)),
    );
  }
}
