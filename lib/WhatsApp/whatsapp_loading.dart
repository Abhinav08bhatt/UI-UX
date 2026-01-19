import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_pages/WhatsApp/whatsapp_main.dart';
import 'package:url_launcher/url_launcher.dart';


class WhatsappLoading extends StatelessWidget{
  const WhatsappLoading({super.key});

  @override
  Widget build(BuildContext context) {

    const Color primaryColor = Color(0xff29BE63);
    const Color secondaryColor = Color(0xff1D6A3E);
    const Color thirdColor = Color(0xffDCFFD4);

    return Scaffold(
      backgroundColor: thirdColor,

      
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
                  color:primaryColor,
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
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        // TEXT SIDE
                        Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'The Clutter',
                                style: GoogleFonts.inter(
                                  fontSize: 24,
                                  color: secondaryColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'The non whatsapp things that whatsapp added in recent times.',
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                    
                        const SizedBox(width: 12),
                    
                        // IMAGE SIDE
                        Expanded(
                          flex: 1,
                          child: AspectRatio(
                            aspectRatio: 1/2, 
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),

                              // child: Image.network(
                              //   'https://picsum.photos/200',
                              //   fit: BoxFit.cover,
                              // ),

                            ),
                          ),
                        ),


                      ],
                    ),
                  ),
                )
              ),

              SizedBox(
                height: 260,
                width: double.infinity,
                child: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    
                        // IMAGE SIDE
                        Expanded(
                          flex: 1,
                          child: AspectRatio(
                            aspectRatio: 1/2, 
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),

                              // child: Image.network(
                              //   'https://picsum.photos/200',
                              //   fit: BoxFit.cover,
                              // ),

                            ),
                          ),
                        ),

                        const SizedBox(width: 12),
                        
                        // TEXT SIDE
                        Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'The Clutter',
                                style: GoogleFonts.inter(
                                  fontSize: 24,
                                  color: secondaryColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
"""
the fact that buttons takes to mismatch and unexpected status section while look wired already.
""",
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                )
              ),

              SizedBox(
                height: 260,
                width: double.infinity,
                child: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        // TEXT SIDE
                        Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'The Clutter',
                                style: GoogleFonts.inter(
                                  fontSize: 24,
                                  color: secondaryColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
"""
the chat section...hold for actions (but the actions are hidden) so we will make it like apple messages...blur with info
""",
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                    
                        const SizedBox(width: 12),
                    
                        // IMAGE SIDE
                        Expanded(
                          flex: 1,
                          child: AspectRatio(
                            aspectRatio: 1/2, 
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              
                              // child: Image.network(
                              //   'https://picsum.photos/200',
                              //   fit: BoxFit.cover,
                              // ),

                            ),
                          ),
                        ),


                    



                      ],
                    ),
                  ),
                )
              ),


            ],
          ),
        )
      ),

      bottomNavigationBar: BottomAppBar(
      color: thirdColor,
      height: 80,

        child: Row(
          children: [

            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => WhatsappMain(),
                    ),
                  );
                }, 
                style: ElevatedButton.styleFrom(
                  // elevation: 1,
                  // backgroundColor: Color(0xfff5f5f5),
                  backgroundColor: primaryColor,
                  // shadowColor: primaryColor.withValues(alpha: 0.50),
                  // overlayColor: primaryColor,
                  overlayColor: Color(0xfff5f5f5),
                  shape:ContinuousRectangleBorder(borderRadius: BorderRadiusGeometry.circular(24)),
                  padding: EdgeInsets.fromLTRB(0, 16, 0, 16)
                ),
                child: Text(
                  "Open Redesign",
                  style: GoogleFonts.robotoFlex(
                    fontWeight: FontWeight.w600,
                    color: thirdColor,
                    // color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 20,
                  ),
                )
              )
            ),
            
            SizedBox(width: 8,),

            SizedBox(
              child: GestureDetector(
                onTap: () async {
                  await launchUrl(
                    Uri.parse(
                      "https://github.com/Abhinav08bhatt/UI-UX/tree/main/lib/WhatsApp",
                    ),
                    mode: LaunchMode.externalApplication,
                  );
                }, 
                child: Container(
                  padding: EdgeInsets.all(17),
                  decoration: BoxDecoration(
                    color: Color(0xff1877D7).withValues(alpha: 0.90),
                    border: Border.all(color: Color(0xff1877D7).withValues(alpha: 0.60)),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: FaIcon(
                    FontAwesomeIcons.code,
                    color: Color(0xfff5f5f5),
                    size: 18,
                  ),
                ) 
              )
            
            ),

            SizedBox(width: 8,),

          ],
        ),
      ),

    );
  }
}