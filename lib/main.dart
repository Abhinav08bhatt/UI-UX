import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_pages/home.dart';

void main() {
  runApp(const UiStyles());
}

class UiStyles extends StatelessWidget {
  const UiStyles({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,

      home: const IntroPage(),

    );
  }
}

class IntroPage extends StatelessWidget{
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: LayoutBuilder(
        builder: (context,values){
          final isWide = values.maxWidth > 600;

          return isWide
            ?Row(
              children: [
                Expanded(child: HeroSection()),
                Expanded(child: IntroSection()),
              ],
            )
            :Column(
              children: [
                Expanded(child: HeroSection()),
                Expanded(child: IntroSection()),
              ],
            );
        }
      )

    );
  }
}

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.white),
      
      child: Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
      
          SizedBox(height: 20,),

          Text(
            "UI / UX",
            style: GoogleFonts.inter(
              color: Color(0xff282828),
              fontWeight: FontWeight.w900,
              fontSize: 80,
              letterSpacing: -2,
              height: 1
            ),
          ),
      
          Text(
            "DESIGN IN MOTION",
            style: GoogleFonts.inter(
              color: Color(0xff282828).withValues(alpha: 0.50),
              fontWeight: FontWeight.w500,
              fontSize: 16,
              letterSpacing: 4,
              wordSpacing: 4,
            ),
          ),
      
        ],
      )
    
    );
  }
}

class IntroSection extends StatelessWidget {
  const IntroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      width: double.infinity,
      decoration: BoxDecoration(color: Color(0xff282828)),

      child: Padding(
        padding: const EdgeInsets.fromLTRB(32,32,32,0),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
        
          children: [
        
            Text(
              // "Let's Begin",
              // "Welcome",
              "Pages",
              style: GoogleFonts.inter(
                color: Color(0xfff5f5f5),
                fontWeight: FontWeight.w700,
                fontSize: 40,
                letterSpacing: -1,
                height: 1
              ),
            ),
          
          SizedBox(height: 8,),

            Text(
              "A place to explore UI and UX.\nTo test ideas.\nTo build better interfaces.",
              style: GoogleFonts.inter(
                color: Color(0xfff5f5f5).withValues(alpha: 0.50),
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),

            Spacer(),

            Center(
              child: SizedBox(
                height: 52,
                width: 142,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context, MaterialPageRoute(
                        builder: (context) => HomePage()
                      )
                    );
                  }, 
                  
                  style: ElevatedButton.styleFrom(
                    overlayColor: Color(0xff000000),
                    shadowColor: Color(0xffffffff),
                    shape:RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(16)),
                  ),
                    
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(6,8,0,8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                        children: [
                
                          Text(
                            "Let's Begin",
                            style: GoogleFonts.inter(
                              color: Color(0xff282828),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                

                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 16,
                            color: Color(0xff282828),
                          )
                
                        ],
                      ),
                    ),
                  
                  // ),
                ),
              ),
            ),

            Center(
              child: TextButton(
                onPressed: () {}, 
                child: Text(
                  "star us on github : Abhinav08bhatt",
                  style: GoogleFonts.inter(
                    color: Color(0xfff5f5f5).withValues(alpha: 0.32),
                  ),
                )
              ),
            ),

            SizedBox(height: 4,)

          ],
        ),
      )
    
    );
  }
}