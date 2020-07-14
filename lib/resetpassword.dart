import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class Reset extends StatefulWidget {
  @override
  _ResetPageState createState() => _ResetPageState();
  }
  
  class _ResetPageState  extends State<Reset> {

    final _formkey = GlobalKey<FormState>();
     final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    String email=" ";

    
  String newname;
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text('ResetPassword'),
            ),
            body : Form(
              key: _formKey,
              child:SingleChildScrollView(
              child: Column(
                
                children: <Widget>[
                  Text("ResetPassword", style: TextStyle(
                          color: Color.fromRGBO(40, 39, 79, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 30),),
    
                     TextFormField(
    
                    validator: (value){
                      if(value.isEmpty){
                        return "Please enter your email";

                      }else{
                      email=value;
                      }
                      return null;
                    },
             
               decoration: InputDecoration(
                  border: InputBorder.none,
                     hintText: "Email",
                       hintStyle: TextStyle(color: Colors.grey)


                 ),

              ),
                    
                SizedBox(height: 50,),  
                Builder(builder: (context)=>RaisedButton(
                 
                onPressed: (){

                   if(_formKey.currentState.validate()){

               
                    FirebaseAuth.instance.sendPasswordResetEmail(email: email).then((value) => print("Check your Email"));

                     
                  }

                },
                child: Center(child: Text('Reset', style: new TextStyle(fontSize: 20,color: Colors.white),),
                ),
                color: Color.fromRGBO(40, 39, 79, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(90),
                    ),
              ),
              
                  
                  
            
                  
                ),  
            ], 
                
            
            
        ),
      
            ),
            ),
        );
    
  } 





  }

  
