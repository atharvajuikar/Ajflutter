import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_aj/login_page.dart';
import 'package:flutter_aj/newuser.dart';
import 'package:flutter_aj/resetpassword.dart';
import 'package:flutter_aj/welcome.dart';
import 'package:flutter_aj/widgetpage.dart';

class LoginPage extends StatefulWidget{
 
  

  @override
 
  _LoginPageState createState() => new _LoginPageState();

}

class _LoginPageState extends State<LoginPage>{
 
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
   String email,password;

  var formState;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LogIn'),
      ),
      body: Form(
        key: _formKey,
          child: Column(
            children: <Widget>[
              Image(image: AssetImage('assets/images/avg.png')),
              Text("Login", style: TextStyle(
                      color: Color.fromRGBO(40, 39, 79, 1),
                      fontWeight: FontWeight.bold,
                      fontSize: 30),),
                  SizedBox(height: 20,),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(195, 135, 198, 1),
                            blurRadius: 20,
                            offset: Offset(0, 10),
                          )
                        ]
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(
                                  color: Colors.grey[300]
                              ))
                          ),
              child: Column(
                children: <Widget>[
                  Container(
                padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(
                                  color: Colors.grey[300]
                              ))
                          ),

              ),
              TextFormField(

                validator: (value){
                   if(value.isEmpty){
                     return 'Email Required';
                   }
                 },

              
               onSaved: (input) => email = input,
               decoration: InputDecoration(
                  border: InputBorder.none,
                     hintText: "Email",
                       hintStyle: TextStyle(color: Colors.grey)


                 ),

              ),
               TextFormField(

                 

                 validator: (value){
                   if(value.isEmpty){
                     return 'Password Required';
                   }
                 },
             
             
               onSaved: (input) => password = input,
                 decoration: InputDecoration(
                    border: InputBorder.none,
                      hintText: "Password",
                        hintStyle: TextStyle(color: Colors.grey)
                        ),
                        obscureText: true,

               ),
              SizedBox(height: 20,),
              RaisedButton(
                onPressed: signIn,
                child: Center(child: Text('Log In', style: new TextStyle(fontSize: 20,color: Colors.white),),
                
             
                ),
                color: Color.fromRGBO(40, 39, 79, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(90),
                      
                    ),
              ),
            
              SizedBox(height: 5,),
              RaisedButton(
                
                onPressed: newUser,
                
                child: Center(child: Text('NewUser', style: new TextStyle(fontSize: 20,color: Colors.white),),
                ),
                color: Color.fromRGBO(40, 39, 79, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(90),
                    ),
                
              ),
              
              SizedBox(height: 5,),
              RaisedButton(
                onPressed: reset,
                child: Center(child: Text('Forgot Password', style: new TextStyle(fontSize: 20,color: Colors.white),),
                ),
                color: Color.fromRGBO(40, 39, 79, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(90),
                    ),
                
              ),

              SizedBox(height: 5,),
              RaisedButton(
                onPressed: goo,
                child: Center(child: Text('Google SignIn', style: new TextStyle(fontSize: 20,color: Colors.white),),
                ),
                color: Color.fromRGBO(40, 39, 79, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(90),
                    ),
                
              ),

                SizedBox(height: 5,),
              RaisedButton(
                onPressed: wid,
                child: Center(child: Text('Widgets', style: new TextStyle(fontSize: 20,color: Colors.white),),
                ),
                color: Color.fromRGBO(40, 39, 79, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(90),
                    ),
                
              ),
              
            
              
                ],
              ),
                        ),
          ],
        ),
      ),
            ],
      ),

    ),
    );
    }


    Future<void> signIn() async {
    final formState  = _formKey.currentState;
    if(formState.validate()){
      formState.save();
      try {
        FirebaseUser user = (await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password)).user;
        Navigator.push(context, MaterialPageRoute(builder: (context) => Welcome(user: user)));
     
      
       
      } catch (e) {
     
      }
      

    }
    }
    Future<void> newUser() async {
    
    
        Navigator.push(context, MaterialPageRoute(builder: (context) => NewUser()));
      
      

    }

        Future<void> reset() async {
    
    
        Navigator.push(context, MaterialPageRoute(builder: (context) => Reset()));
      
      

    }

    Future<void> goo() async {
    
    
        Navigator.push(context, MaterialPageRoute(builder: (context) => MyGooStates()));
      
      

    }

    Future<void> wid() async {
    
    
        Navigator.push(context, MaterialPageRoute(builder: (context) => WidgetPage()));
      
      

    }
  
  
  
    }

