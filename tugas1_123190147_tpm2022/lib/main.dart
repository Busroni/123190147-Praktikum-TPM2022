import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '123190147-Tugas1',
      theme: ThemeData( primarySwatch: Colors.blue,),
      home: LoginPage(),
    );
  }

  Widget LoginPage(){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Screen"),
      ),
      body: Container(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'images/logo.png',
              width: 120,),

            const Padding(padding: EdgeInsets.only(top: 40.0)
            ),
            Container(
              width: 400,
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                  ),
                  hintText: "Username",
                ),
              ),
            ),

            const Padding(padding: EdgeInsets.only(top: 20.0)
            ),
            Container(
              width: 400,
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                  ),
                  hintText: "Password",
                ),
                obscureText: true,
              ),
            ),

            const Padding(padding: EdgeInsets.only(top: 40.0),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 400,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("Log in",
                      style: TextStyle(
                      fontSize: 20.0, // insert your font size here
                        ),
                    ),
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            )
                        )
                    ),
                  ),
                ),
              ],
            ),

            const Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),

            TextButton(onPressed: () {},
                child: const Text("Forgot Password?",
                  style: TextStyle(
                    color: CupertinoColors.inactiveGray),
                )
            )
          ],
        ),
      ),
    );
  }
}