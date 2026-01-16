import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class WhatsappLoading extends StatelessWidget{
  const WhatsappLoading({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xffDCF8C6),

      
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12,4,12,0),
          child: ListView(
            children: [
          
              Text("WhatsApp",
                style: GoogleFonts.inter(
                  fontSize: 32,
                  height: 1,
                  letterSpacing: -1,
                  color:Color(0xff40c351),
                  fontWeight: FontWeight.w600,
                ),
              ),

              Text("Interface Redesigned",
                style: GoogleFonts.inter(
                  fontSize: 14.5
                ),
              ),

              SizedBox(height: 12,),
          
          
              SizedBox(
                height: 260,
                width: double.infinity,
                child: Card(
                  color: Color(0xFFFfffff),
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                            
                      Text("data"),

                      SizedBox(
                        height: double.infinity,
                        width: 180,
                        child: Column(
                          children: [
                            
                            Expanded(child: SizedBox()),
                            
                            Expanded(
                              flex: 3,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFF1F2C34).withValues(alpha: 0.80),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(16),
                                    topLeft: Radius.circular(16),
                                    bottomRight: Radius.circular(16),
                                  )
                                ),
                              ),
                            ),

                          ],
                        )
                      ),
                            
                    ],
                  ),
                ),
              ),
          
          
              SizedBox(
                height: 260,
                width: double.infinity,
                child: Card(
                  color: Color(0xFFF6F8F6),
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                            
                      Icon(Icons.image),
                            
                      Text("data"),
                            
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 260,
                width: double.infinity,
                child: Card(
                  color: Color(0xFFF3FBF4),
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                            
                      Text("data"),
                            
                      Icon(Icons.image),
                            
                    ],
                  ),
                ),
              ),
        
          
            ],
          ),
        )
      ),

      bottomNavigationBar: BottomAppBar(
      color: Color(0xffDCF8C6),
      height: 80,

        child: Row(
          children: [

            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(18))
                ),

                onPressed: () {}, 

                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text("Open Redesign",style: TextStyle(fontSize: 20,),),
                ),
              )
            ),

            SizedBox(width: 12,),

            Padding(padding: EdgeInsetsGeometry.all(8),child: GestureDetector(onTap: (){}, child: FaIcon(FontAwesomeIcons.code),),),

            SizedBox(width: 0,),

          ],
        ),
      ),

    );
  }
}