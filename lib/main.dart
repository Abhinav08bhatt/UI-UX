import 'package:flutter/material.dart';
import 'package:ui_pages/theme/mainpage_typography.dart';

void main() {
  runApp(const UiPages());
}

class UiPages extends StatelessWidget {
  const UiPages({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UI Pages',
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});
  
  @override
  Widget build(BuildContext context) {    
    
    return Scaffold(
      backgroundColor: Color(0xffbfc0d1),

      appBar: AppBar(

// height of the app bar 
        toolbarHeight: 60,
      
// text for the app bar inside of padding to be centered
        title: Padding(
          padding: const EdgeInsets.fromLTRB(8,24,0,0),
          child: Text(
            "UI PAGES",
            style: TextStyle(
              color: Color(0xffbfc0d1),
              fontFamily: FontFamily.fontFamily,
              fontSize: FontSizes.xl,
              fontWeight: FontWeights.semibold,
            ),
          ),
        ),
        backgroundColor: Color(0xff1e202c),
        
        actions: [

// action 1 : github visit button
          Padding(
            padding: const EdgeInsets.fromLTRB(0,20,16,0),
            child: IconButton(
              onPressed: () {}, // to github account
              icon: Icon(
                Icons.castle, // github logo
                color: Color(0xffbfc0d1),
              )
            ),
          )

// action 2 :
// not in mind

        ],
      
      ),
      
      body: ListView(

        children: [

// for the rounded app bar 
          Container(
            width: double.infinity,
            height: 20,
            decoration: BoxDecoration(
              color: Color(0xff1e202c),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(32),
                bottomRight: Radius.circular(32),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0xff60519b),
                  blurRadius: 16,
                  spreadRadius: 2,
                  offset: Offset(0, 4)
                )
              ]
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(16,20,0,0),
            child: Text(
              "Hey!",
              style: TextStyle(
                fontSize: 32,
                fontFamily: FontFamily.fontFamily,
                fontWeight: FontWeights.semibold,
                height: 1,
                letterSpacing: 0
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16,0,0,12),
            child: Text("This is the collection of different UI styles I could create using FLUTTER."),
          ),

          PagesButton(),

        ],
      ),

    );
  }
}

class PagesButton extends StatelessWidget {
  const PagesButton({super.key});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(12.0),
      
      child: Container(
      
        height: 100,
        width: double.infinity,
      
        decoration: BoxDecoration(
          
          color: Color(0xFF31323e),

          borderRadius: BorderRadius.circular(24),
          
          // border: Border.all(
            // color: Color(0xff60519b),
            // width: 0,
          // ),
      
          boxShadow: [
            BoxShadow(
              color: Color(0xff60519b),
              blurRadius: 12,
              spreadRadius: 2,
            )
          ],
      
        ),
      
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            
            Padding(
              
              padding: const EdgeInsets.all(12.0),
              
              child: SizedBox(
                width: 260,

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    
                  children: [
                
                    Text(
                      "Neumorphism", // <--- name of the page goes here
                      style: TextStyle(
                        color: Color(0xffbfc0d1),
                        fontFamily: FontFamily.fontFamily,
                        fontSize: 24,
                        fontWeight: FontWeights.medium,
                        height: 1,
                        letterSpacing: 0,
                      ),
                    ),
                
                    SizedBox(height: 4),
                
                    Text(
                      "The description of the style",
                      style: TextStyle(
                        color: Color(0xffbfc0d1),
                      ),
                    ),
                
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: double.infinity,
                width: 84,
              
                decoration: BoxDecoration(
              
                  color: Color(0xffbfc0d1),
              
                  borderRadius: BorderRadius.circular(20),
                  
                  // border: Border.all(
                    // color: Color(0xff60519b),
                    // width: 0,
                  // ),
              
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffbfc0d1).withValues(alpha: 0.4),
                      blurRadius: 12,
                      spreadRadius: 2,
                    )
                  ],

                ),

                // child: button, clickable to next page

              ),
            ),

          ],
        ),
      
      ),

    );
  }
}