import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          backgroundColor: Colors.blueAccent,
          elevation: 0,
        ),
        backgroundColor: Colors.blueAccent,
        body: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sign in",textAlign: TextAlign.start,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              ),
              SizedBox(
                height: 50,
              ),
              Container(decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0,),
                      topRight: Radius.circular(20.0,)),color: Colors.white,),
                padding: EdgeInsets.only(left: 10, top: 50),
                width: 350,
                height: 600,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome Back",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Hello there,sign in to continue!",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Phone Number"),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.6),
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                        child:   Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15, top: 3.0,bottom: 3.0),
                          child: TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText:"081286277738",
                              )),
                        )
                    ),

                    SizedBox(
                      height: 10,
                    ),
                    Text("Access Pin"),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.6),
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                        child:   Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15, top: 3.0,bottom: 3.0),
                          child: TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText:".....",
                              )),
                        )
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Forgotten Password?",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ButtonTheme(
                      minWidth: 300.0,
                      height: 50.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: RaisedButton(
                        color: Colors.blue,
                        onPressed: () {},
                        child: Text(
                          "Sign in",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
