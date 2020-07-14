import 'package:flutter/material.dart';
import 'package:flutter_aj/auth_service.dart';
import 'package:flutter_aj/login.dart';

class NewUser extends StatelessWidget{

  TextEditingController emailController = TextEditingController(text: " ");
  
  TextEditingController passwordController = TextEditingController(text: " ");

  String email,password;

 
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NewUser'),
      ),
      body: Form(
          child: Column(
            children: <Widget>[
               Image(image: AssetImage('assets/images/sheild.png')),
              Text("NewUser", style: TextStyle(
                      color: Color.fromRGBO(40, 39, 79, 1),
                      fontWeight: FontWeight.bold,
                      fontSize: 30),),
                  SizedBox(height: 50,),
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
              TextField(
                controller: emailController,
                
                 decoration: InputDecoration(
                   labelText: "Email",
                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0),),
            
                   
                 ),

                 ),
               SizedBox(height: 20 ,)  ,
               TextField(
                 controller: passwordController,
                 decoration: InputDecoration(
                   labelText: "Password",
                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0),),      
                 ),  
               ),
               SizedBox(height: 20),
              RaisedButton( 
                 onPressed: ()async{
                  await AuthServices.signUp(emailController.text, passwordController.text);     
                 Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                },
                 child: Center(child: Text('NewUser', style: new TextStyle(fontSize: 20,color: Colors.white),),
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

    }


