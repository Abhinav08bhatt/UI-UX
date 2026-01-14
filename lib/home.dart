import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f5f5),

      appBar: AppBar(
        
        automaticallyImplyLeading: false,
        scrolledUnderElevation: 1,
        backgroundColor: Color(0xfff5f5f5),
        // backgroundColor: Color(0xff282828),
        toolbarHeight: 40,

        title: Padding(
          padding: const EdgeInsets.fromLTRB(4,16,0,0),

          child: Text(
            "UI / UX",
            style: GoogleFonts.ubuntu(
              // color: Color(0xfff5f5f5),
              color: Color(0xff282828),
              fontSize: 24,
              fontWeight: FontWeight.w600,
              letterSpacing: -1,
              height: 1,
            ),
          ),
        ),
      ),

      body: SafeArea(
        
        child: ListView(
          children: [

            Container(
              height: 20,
              width: double.infinity,
              decoration: BoxDecoration(
                // color: Color(0xff282828),
                color: Color(0xfff5f5f5),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff282828).withValues(alpha: 0.12),
                    blurRadius: 12,
                    spreadRadius: 1,
                    offset: Offset(0, 10)
                  )
                ]
              ),
            ),

            Container(
              padding: const EdgeInsets.fromLTRB(8,16,0,0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    "Top 3 Featured builds :",
                    // style: GoogleFonts.ubuntu(
                    style: TextStyle(
                      color: Color(0xff282828),
                      fontSize: 32,
                      fontWeight: FontWeight.w400,
                      // letterSpacing: -1,
                    ),
                  ),

                  SizedBox(
                    height: 340,
                      child: PageView(
                        padEnds: false,
                        controller: PageController(viewportFraction: 0.5),
                        children: [
                          
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0,8,2,8),
                            child: Container(
                              // height: 200,
                              // width: 300,
                              decoration: BoxDecoration(
                                color: Color(0xfff5f5f5),
                                // color: Colors.white,
                              ),

                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  
                                  Container(
                                    height: double.infinity , width: 146, 
                                    
                                    decoration: BoxDecoration(
                                      color: Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(16),
                                      boxShadow: [BoxShadow(
                                        color: Color(0xff128C7E).withValues(alpha: 0.10),
                                        blurRadius: 8,
                                        spreadRadius: 2
                                      )]
                                    ),
                                  ),
                                  
                                  RotatedBox(
                                    quarterTurns: 1,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          
                                          Text(
                                            "WhatsApp",
                                            style: GoogleFonts.ubuntuCondensed(
                                              color: Color(0xff128C7E),
                                              fontSize: 40,
                                              fontWeight: FontWeight.w600,
                                              height: 1,
                                              letterSpacing: -1,
                                            ),
                                          ),
                                          
                                          Icon(
                                            Icons.whatshot,
                                            color: Color(0xff128C7E),
                                          )
                                      
                                        ],
                                      ),
                                    ),
                                  ),


                                ],
                              ),

                            ),
                          ),
                          

                          Padding(
                            padding: const EdgeInsets.fromLTRB(0,8,2,8),
                            child: Container(
                              // height: 200,
                              // width: 300,
                              decoration: BoxDecoration(
                                color: Color(0xfff5f5f5),
                                // color: Colors.white,
                              ),

                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  
                                  Container(
                                    height: double.infinity , width: 146, 
                                    
                                    decoration: BoxDecoration(
                                      color: Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(16),
                                      boxShadow: [BoxShadow(
                                        color: Color(0xff222222).withValues(alpha: 0.10),
                                        blurRadius: 8,
                                        spreadRadius: 2
                                      )]
                                    ),
                                  ),
                                  
                                  RotatedBox(
                                    quarterTurns: 1,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          
                                          Text(
                                            "Airbnb",
                                            style: GoogleFonts.ubuntuCondensed(
                                              color: Color(0xff222222),
                                              fontSize: 40,
                                              fontWeight: FontWeight.w600,
                                              height: 1,
                                              letterSpacing: -1,
                                            ),
                                          ),
                                          
                                          Icon(
                                            Icons.hotel,
                                            color: Color(0xff222222),
                                          )
                                      
                                        ],
                                      ),
                                    ),
                                  ),


                                ],
                              ),

                            ),
                          ),
                          

                          Padding(
                            padding: const EdgeInsets.fromLTRB(0,8,2,8),
                            child: Container(
                              // height: 200,
                              // width: 300,
                              decoration: BoxDecoration(
                                color: Color(0xfff5f5f5),
                                // color: Colors.white,
                              ),

                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  
                                  Container(
                                    height: double.infinity , width: 146, 
                                    
                                    decoration: BoxDecoration(
                                      color: Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(16),
                                      boxShadow: [BoxShadow(
                                        color: Color(0xff1DB954).withValues(alpha: 0.10),
                                        blurRadius: 8,
                                        spreadRadius: 2
                                      )]
                                    ),
                                  ),
                                  
                                  RotatedBox(
                                    quarterTurns: 1,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          
                                          Text(
                                            "Spotify",
                                            style: GoogleFonts.ubuntuCondensed(
                                              color: Color(0xff1DB954),
                                              fontSize: 40,
                                              fontWeight: FontWeight.w600,
                                              height: 1,
                                              letterSpacing: -1,
                                            ),
                                          ),
                                          
                                          Icon(
                                            Icons.wifi,
                                            color: Color(0xff1DB954),
                                          )
                                      
                                        ],
                                      ),
                                    ),
                                  ),


                                ],
                              ),

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
