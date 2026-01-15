import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f5f5),

      // appBar: AppBar(
        
      //   automaticallyImplyLeading: false,
      //   scrolledUnderElevation: 1,
      //   backgroundColor: Color(0xfff5f5f5),
      //   // backgroundColor: Color(0xff282828),
      //   toolbarHeight: 40,

      //   title: Padding(
      //     padding: const EdgeInsets.fromLTRB(4,16,0,0),

      //     child: Text(
      //       "UI / UX",
      //       style: GoogleFonts.ubuntu(
      //         // color: Color(0xfff5f5f5),
      //         color: Color(0xff282828),
      //         fontSize: 24,
      //         fontWeight: FontWeight.w600,
      //         letterSpacing: -1,
      //         height: 1,
      //       ),
      //     ),
      //   ),
      // ),

      body: SafeArea(
        child: ListView(
          children: [

            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                child: Text(
                  "Featured",                                    // <- A better text here
                  style: GoogleFonts.robotoFlex(
                    color: Color(0xff0b0c10),
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                    height: 1,
                  ),
                ),
            ),

            Top3Pages(
              appName: "WhatsApp",
              appIcon: Icon(
                Icons.add_circle_outline_rounded,
                size: 42,
                color: Color(0xff40c351),
              ),
              font: "Roboto",
              primaryTextStyle: GoogleFonts.roboto(
                fontSize: 16,
              ),
              primaryColor: Color(0xff40C351),
              primaryColorHex: "#40C351",
              secondaryColor: Color(0xff40C351),
              secondaryColorHex: "#40C351",
              thirdColor: Color(0xff40C351),
              thirdColorHex: "#40C351",
              pageName: "whatsapp",
              gitFolderName: "github-repo-link",
            ),

          ],
        ),
      ),

    );
  }
}

class Top3Pages extends StatelessWidget{
  final String appName , font , primaryColorHex , secondaryColorHex , thirdColorHex , pageName , gitFolderName ;
  final Color primaryColor , secondaryColor , thirdColor;
  final Icon appIcon;
  final TextStyle primaryTextStyle;

  const Top3Pages({
    super.key,
    required this.appName,
    required this.appIcon,
    required this.font,
    required this.primaryTextStyle,
    required this.primaryColor,
    required this.primaryColorHex,
    required this.secondaryColor,
    required this.secondaryColorHex,
    required this.thirdColor,
    required this.thirdColorHex,
    required this.pageName,             // <- no clue
    required this.gitFolderName,        // <- no clue
  });

  @override
  Widget build(BuildContext context) {
    
    return Container(
      height: 300,
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(8, 0, 8, 0),

        child: Row(
          children: [

            Padding(
              padding: EdgeInsetsGeometry.all(6),
              child: Container(
                
                height: double.infinity,
                width: 136,
                decoration: BoxDecoration(
                  color: Color(0xfff5f5f5),
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.10),
                      blurRadius: 8,
                      spreadRadius: 2,
                    )
                  ]
                ),

              ),  
            ),

            SizedBox(width: 8,),

            Expanded(
              child: Column(
                children: [
              
                  SizedBox(height: 4,),
              
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      
                      Text(
                        appName,
                        style: GoogleFonts.robotoFlex(
                          color: primaryColor,
                          fontSize: 42,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
              
                      SizedBox(width: 6,),
              
                      appIcon,
                      
                    ],
                  ),
              
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0,6,0,6),
                      child: Container(
                        // height: 100,
                        // width: 200,
                        decoration: BoxDecoration(
                          // color: Colors.black,
                          color: Color(0xfff5f5f5),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: primaryColor.withValues(alpha: 0.10),
                              blurRadius: 8,
                              spreadRadius: 1,
                              offset: Offset(0, -6)
                            )
                          ]
                        ),

                        child: Column(
                          children: [

                            Padding(
                              padding: const EdgeInsets.fromLTRB(12,12,12,8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                              
                                  Text("Font",
                                    style: GoogleFonts.roboto(
                                      color: Color(0xff282828),
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0
                                    ),
                                  ),
                              
                                  Text(font,
                                    style: primaryTextStyle.copyWith(color: Color(0xff282828).withValues(alpha: 0.80)),
                                  ),
                              
                                ],
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.fromLTRB(10,0,10,0),
                              child: Divider(height: 0,),
                            ),

                            Padding(
                              padding: const EdgeInsets.fromLTRB(12,10,0,0),
                              child: Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                
                                    Text("Colors",
                                      style: GoogleFonts.roboto(
                                        color: Color(0xff282828),
                                        fontSize: 24,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 0
                                      ),
                                    ),

                                    SizedBox(height: 8,),
                                
                                    Align(
                                      alignment: AlignmentGeometry.bottomLeft,
                                      child: Wrap(
                                        spacing: 8,
                                        runSpacing: 8,
                                        
                                        children: [

                                          GestureDetector(
                                            onTap: () {},
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Color(0xfff5f5f5),
                                                borderRadius: BorderRadius.circular(8),
                                                boxShadow: [BoxShadow(color: primaryColor.withValues(alpha: 0.10),blurRadius: 8,spreadRadius: 2)],
                                              ),
                                              padding: EdgeInsets.fromLTRB(0,0,8,0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                            
                                                  Padding(
                                                    padding: const EdgeInsets.fromLTRB(8,8,4,8),
                                                    child: Container(
                                                      height: 14 , width: 14 , 
                                                      decoration: BoxDecoration(
                                                        color: primaryColor,
                                                        borderRadius: BorderRadius.circular(10)
                                                      ),
                                                    ),
                                                  ),
                                            
                                                  Text(primaryColorHex,style: GoogleFonts.robotoFlex(fontSize: 14,color: Color(0xff282828).withValues(alpha: 0.80)),),
                                                                                  
                                                  SizedBox(width: 4,),
                                            
                                                  Icon(Icons.copy,size: 14,)
                                            
                                                ],
                                              ),
                                            ),
                                          ),

                                          GestureDetector(
                                            onTap: () {},
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Color(0xfff5f5f5),
                                                borderRadius: BorderRadius.circular(8),
                                                boxShadow: [BoxShadow(color: primaryColor.withValues(alpha: 0.10),blurRadius: 8,spreadRadius: 2)],
                                              ),
                                              padding: EdgeInsets.fromLTRB(0,0,8,0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                            
                                                  Padding(
                                                    padding: const EdgeInsets.fromLTRB(8,8,4,8),
                                                    child: Container(
                                                      height: 14 , width: 14 , 
                                                      decoration: BoxDecoration(
                                                        color: primaryColor,
                                                        borderRadius: BorderRadius.circular(10)
                                                      ),
                                                    ),
                                                  ),
                                            
                                                  Text(primaryColorHex,style: GoogleFonts.robotoFlex(fontSize: 14,color: Color(0xff282828).withValues(alpha: 0.80)),),
                                                                                  
                                                  SizedBox(width: 4,),
                                            
                                                  Icon(Icons.copy,size: 14,)
                                            
                                                ],
                                              ),
                                            ),
                                          ),
                                      
                                          GestureDetector(
                                            onTap: () {},
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Color(0xfff5f5f5),
                                                borderRadius: BorderRadius.circular(8),
                                                boxShadow: [BoxShadow(color: primaryColor.withValues(alpha: 0.10),blurRadius: 8,spreadRadius: 2)],
                                              ),
                                              padding: EdgeInsets.fromLTRB(0,0,8,0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                            
                                                  Padding(
                                                    padding: const EdgeInsets.fromLTRB(8,8,4,8),
                                                    child: Container(
                                                      height: 14 , width: 14 , 
                                                      decoration: BoxDecoration(
                                                        color: primaryColor,
                                                        borderRadius: BorderRadius.circular(10)
                                                      ),
                                                    ),
                                                  ),
                                            
                                                  Text(primaryColorHex,style: GoogleFonts.robotoFlex(fontSize: 14,color: Color(0xff282828).withValues(alpha: 0.80)),),
                                                                                  
                                                  SizedBox(width: 4,),
                                            
                                                  Icon(Icons.copy,size: 14,)
                                            
                                                ],
                                              ),
                                            ),
                                          ),
                                      
                                        ],
                                      ),
                                    )
                                
                                  ],
                                ),
                              ),
                            ),

                            Spacer(),

                            Row(
                              children: [
                                SizedBox(width: 8,),

                                Expanded(
                                  child: ElevatedButton(
                                  onPressed: () {}, 
                                  style: ElevatedButton.styleFrom(
                                    elevation: 1,
                                    backgroundColor: Color(0xfff5f5f5),
                                    shadowColor: primaryColor.withValues(alpha: 0.50),
                                    overlayColor: primaryColor,
                                    shape:ContinuousRectangleBorder(borderRadius: BorderRadiusGeometry.circular(24)),
                                  ),
                                  child: Text(
                                    "Open Clone",
                                    style: GoogleFonts.robotoFlex(
                                      fontWeight: FontWeight.w600,
                                      color: primaryColor
                                    ),
                                  )
                                )),
                                
                                SizedBox(width: 8,),

                                Expanded(
                                  child: ElevatedButton(
                                  onPressed: () async {
                                    await launchUrl(
                                      Uri.parse(
                                        'https://github.com/Abhinav08bhatt/UI-UX/tree/main/lib/whatsapp',
                                      ),
                                      mode: LaunchMode.externalApplication,
                                    );
                                  }, 
                                  style: ElevatedButton.styleFrom(
                                    elevation: 1,
                                    backgroundColor: Color(0xfff5f5f5),
                                    shadowColor: Color(0xff1F6FEB).withValues(alpha: 0.50),
                                    overlayColor: Color(0xff1F6FEB),
                                    shape:ContinuousRectangleBorder(borderRadius: BorderRadiusGeometry.circular(24)),
                                  ),
                                  child: Text(
                                    "Follow Code",
                                    style: GoogleFonts.robotoFlex(
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff1F6FEB)
                                    ),
                                  )
                                )),
                                SizedBox(width: 0,),
                              ],
                            )

                          ],
                        ),

                      ),
                    ),
                  ),
              
                ],
              ),
            ),

          ],
        ),

    );
  }
}