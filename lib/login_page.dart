import 'package:flutter/material.dart';
import 'package:zego_zimkit/zego_zimkit.dart';
import 'Home_page.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final username=TextEditingController();
  final userid=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("NiYaS Chat",style: TextStyle(
              fontSize: 23,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold
          ),),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
        ),
        body:SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20,),
              Image.asset("assets/chat.png",height: 260,width: 350,),
              Text("Let's Connect",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:20.0),
                child: TextField(
                  controller: username,
                  decoration: InputDecoration(
                    labelText: "Enter Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.blue.shade900)
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.blue.shade900)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.blue.shade900)
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:20.0),
                child: TextField(
                  controller: userid,
                  decoration: InputDecoration(
                    labelText: "Enter id",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.blue.shade900)
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.blue.shade900)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.blue.shade900)
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              ElevatedButton(style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  foregroundColor: Colors.white,
                  fixedSize: Size(235, 60),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  )
              ),onPressed: ()async{
                await ZIMKit().connectUser(id: userid.text, name: username.text);
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ZIMKitDemoHomePage(username:username.text,)));

              }, child: Text("Login",style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),))
            ],
          ),
        )
    );
  }
}
