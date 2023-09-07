import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project5/page1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OtpVerification(),
    );
  }
}

class OtpVerification extends StatefulWidget {
  const OtpVerification({super.key});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  TextEditingController countryCode = TextEditingController();

  @override
  void initState() {
    countryCode.text = "+91";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              height: 250,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.grey),
                  borderRadius: BorderRadius.circular(10)),
              height: 50,
              child: Row(children: [
                Container(
                    width: 40,
                    padding: EdgeInsets.only(left: 15),
                    child: TextField(
                      controller: countryCode,
                      decoration: InputDecoration(border: InputBorder.none),
                    )),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "|",
                  style: TextStyle(fontSize: 30),
                ),
                Expanded(
                    child: Container(
                  padding: EdgeInsets.only(left: 15),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: "phone"),
                  ),
                ))
              ]),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.all(15),
                    minimumSize: Size(155, 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    primary: Colors.white,
                    backgroundColor: Colors.blue,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Otp(),
                        ));
                  },
                  child: Center(
                    child: Text(
                      "Send with code",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
