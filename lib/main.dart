import 'package:flutter/material.dart';
import 'package:model_app/sign_in.dart';
import 'get_started.dart';

void main() {
  runApp(ClassApp());
}
class ClassApp extends StatelessWidget {
  const ClassApp ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner:false,home: ModelApp());
  }
}

class ModelApp extends StatefulWidget {
  const ModelApp({Key? key}) : super(key: key);

  @override
  _ModelAppState createState() => _ModelAppState();
}

class _ModelAppState extends State<ModelApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueAccent,
        body: Container(
          child: Column(
           // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/tatiana.jpg",
                width: 200,
                height: 250,
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Welcome!",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 10),
              Text(
                "Gain access to flexible \n salary solutions",
                style: TextStyle(fontSize: 10, color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () { Navigator.push(context,
                        MaterialPageRoute(builder: (context) => GetStarted()));},
                    child: Text("Get Started",style: TextStyle(color: Colors.blue),),
                    style: ElevatedButton.styleFrom(primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),// <-- Radius
                      ),
                    ),
                  ),ElevatedButton(
                    onPressed: () { Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignIn()));},
                    child: Text("Sign In",style: TextStyle(color: Colors.white),),
                    style: ElevatedButton.styleFrom(primary: Colors.blue.withOpacity(0.6),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),// <-- Radius
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ));
  }
}
