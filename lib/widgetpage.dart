import 'package:flutter/material.dart';
import 'package:flutter_aj/pages/AlertDailog.dart';
import 'package:flutter_aj/pages/AspectRatio.dart';
import 'package:flutter_aj/pages/ColorFiltered.dart';
import 'package:flutter_aj/pages/Divider.dart';
import 'package:flutter_aj/pages/Flexible.dart';
import 'package:flutter_aj/pages/IgnorePointer.dart';
import 'package:flutter_aj/pages/RichText.dart';
import 'package:flutter_aj/pages/SelectableText.dart';
import 'package:flutter_aj/pages/SizedBox.dart';
import 'package:flutter_aj/pages/Spacer.dart';
import 'package:flutter_aj/pages/ToolTip.dart';


class WidgetPage extends StatefulWidget{
 
  

  @override
 
  WidgetPageState createState() => new WidgetPageState();

}

class WidgetPageState extends State<WidgetPage>{
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget Details'),
      ),
 
  body: Center(
        child: Column(
          children: <Widget>[
            Expanded(child:Container(
              alignment: Alignment.center,
              child: new GestureDetector(onTap:()
              { 
               Navigator.push(context,
      MaterialPageRoute(builder: (_) => FirstWidget()
    ));
              },
            
              child: Text('Alert Dialogue',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20))
              ),
              
              color: Colors.blue,
              height: 300,
              width: 500,
              
            ),
            ),
            
            Expanded(
              child: Container(
                alignment: Alignment.center,
              child: new GestureDetector(onTap:()
              { 
               Navigator.push(context,
                MaterialPageRoute(builder: (_) => SecondWidget()
                ));
                 },
            
                 child: Text('Rich Text',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20))
                  ),
              
                color: Colors.amber[300],
                height: 300,
              width: 500,
              ),
            ),
            Expanded(child:Container(alignment: Alignment.center,
              child: new GestureDetector(onTap:()
              { 
               Navigator.push(context,
      MaterialPageRoute(builder: (_) => ThirdWidget()
    ));
              },
            
              child: Text('Selectable Text',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20))
              ),
              
              color: Colors.pink[300],
              height: 100,
              width: 500,
              
            ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
              child: new GestureDetector(onTap:()
              { 
               Navigator.push(context,
                MaterialPageRoute(builder: (_) => ForthWidget()
                ));
                 },
            
                 child: Text('Flexible',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20))
                  ),
              
                color: Colors.blue[300],
                height: 100,
              width: 500,
              ),
            ),

            Expanded(child:Container(alignment: Alignment.center,
              child: new GestureDetector(onTap:()
              { 
               Navigator.push(context,
      MaterialPageRoute(builder: (_) => FifthWidget()
    ));
              },
            
              child: Text('Spacer',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20))
              ),
              
              color: Colors.green[300],
              height: 100,
              width: 500,
              
            ),
            ),
            Expanded(child: Container(
                alignment: Alignment.center,
              child: new GestureDetector(onTap:()
              { 
               Navigator.push(context,
                MaterialPageRoute(builder: (_) => SixthWidget()
                ));
                 },
            
                 child: Text('Divider',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20))
                  ),
              
                color: Colors.orange[200],
                height: 100,
              width: 500,
              ),
            ),
            Expanded(child:Container(alignment: Alignment.center,
              child: new GestureDetector(onTap:()
              { 
               Navigator.push(context,
      MaterialPageRoute(builder: (_) => SeventhWidget()
    ));
              },
            
              child: Text('Ignore Pointer',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20))
              ),
              
              color: Colors.pink[200],
              height: 100,
              width: 500,
              
            ),
            ),
             Expanded(child: Container(
                alignment: Alignment.center,
              child: new GestureDetector(onTap:()
              { 
               Navigator.push(context,
                MaterialPageRoute(builder: (_) => EigthWidget()
                ));
                 },
            
                 child: Text('Colour Filtered',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20))
                  ),
              
                color: Colors.green[200],
                height: 100,
              width: 500,
              ),
            ),
            Expanded(child:Container(alignment: Alignment.center,
              child: new GestureDetector(onTap:()
              { 
               Navigator.push(context,
      MaterialPageRoute(builder: (_) => NinthWidget()
    ));
              },
            
              child: Text('Tool Tip',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20))
              ),
              
              color: Colors.blue[200],
              height: 100,
              width: 500,
              
            ),
            ),
            Expanded(child: Container(
                alignment: Alignment.center,
              child: new GestureDetector(onTap:()
              { 
               Navigator.push(context,
                MaterialPageRoute(builder: (_) => TenthWidget()
                ));
                 },
            
                 child: Text('Aspect Ratio',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20))
                  ),
              
                color: Colors.amber[200],
                height: 100,
              width: 500,
              ),
            ),
            Expanded(child:Container(alignment: Alignment.center,
              child: new GestureDetector(onTap:()
              { 
               Navigator.push(context,
      MaterialPageRoute(builder: (_) => EleventhWidget()
    ));
              },
            
              child: Text('Sized Box',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20))
              ),
              
              color: Colors.red[200],
              height: 100,
              width: 500,
              
            ),
            ),
          ],
            ),
      ),
    
  
        );
   
  }
}