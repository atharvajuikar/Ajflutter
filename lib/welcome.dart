import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_aj/login.dart';

class Welcome extends StatefulWidget {
  const Welcome({
    Key key, 
    @required this.user
    }) : super(key: key);
     final FirebaseUser user;

 

  @override
  _WelomePageState createState() => _WelomePageState();
  }
  
  class _WelomePageState  extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome '),
        ),
        body : Column(
            children: <Widget>[
              Image(image: AssetImage('assets/images/steve.jpg') ),
              Text("Welcome ${widget.user.email}", style: TextStyle(
                      color: Color.fromRGBO(40, 39, 79, 1),
                      fontWeight: FontWeight.bold,
                      fontSize: 30),),
                    
                SizedBox(height: 50,),    
                RaisedButton(
                onPressed: logOut,
                child: Center(child: Text('LogOut', style: new TextStyle(fontSize: 20,color: Colors.white),),
                ),
                color: Color.fromRGBO(40, 39, 79, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(90),
                    ),
                
              ),
            ], 
            
            
        ),
      
        
        );
    
  }    
        
        Future<void> logOut() async {
    
    
        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
      
      

    }

  }

   