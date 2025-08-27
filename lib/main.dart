import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
      home: Scaffold(
        //styling app bar
        appBar: AppBar(title: Center(child: Text("Welcome App",style: TextStyle(fontWeight: FontWeight.bold),)),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.purple,Colors.blue],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        ),
         // for background coloring used linear gradient
         body:Container(
           decoration: BoxDecoration(
             gradient: LinearGradient(
               colors: [Colors.blue.shade100,Colors.purple.shade100],
             ),
           ),

           child:Center(
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [


           //adding image with circle avatar
                 Container(
                   width: 200,
                   height: 200,

                   decoration: BoxDecoration(
                     shape: BoxShape.circle,
                     border: Border.all(
                       color: Colors.deepPurple,
                       width: 4,
                     ),
                     image: DecorationImage(
                         image: AssetImage(

                       "assets/image1.png",


                     ),
                       fit: BoxFit.cover,
                     ),
                   ),
                 ),




                    SizedBox(height: 20,),

                 // adding text
                 Text("Hello world!",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold,color: Colors.deepPurple,fontStyle:FontStyle.italic),),

               SizedBox(height: 20,),


                 // elevated style button 
                 ElevatedButton(
                   style: ElevatedButton.styleFrom(
                     padding: EdgeInsets.symmetric(horizontal: 25,vertical: 12),
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(12),
                     ),
                     backgroundColor: Colors.deepPurple,
                   ),
                   onPressed: (){

                     ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Button Pressed!")),
                     );
                   },
                   child: Text("Press me ",style: TextStyle(fontSize: 15,color: Colors.white,),) ,
                 ),


               ],
             ),
           ),
         ),


      ),
    );
  }
}

