import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_pages/WhatsApp/whatsapp_loading.dart';
import 'package:url_launcher/url_launcher.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f5f5),

      body: SafeArea(
        child: ListView(
          children: [

            Padding(
              padding: const EdgeInsets.fromLTRB(16, 4, 8, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      Text(
                        'Abhinav',
                        style: GoogleFonts.robotoFlex(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff0b0c10),
                        ),
                      ),
                      // const SizedBox(height: 4),
                      Text(
                        'Frontend & UI Engineering',
                        style: GoogleFonts.robotoFlex(
                          fontSize: 14,
                          color: const Color(0xff0b0c10).withValues(alpha: 0.6),
                        ),
                      ),

                    ],
                  ),

                  GestureDetector(
                    onTap: () async {
                      await launchUrl(
                        Uri.parse(
                          "https://github.com/Abhinav08bhatt",
                        ),
                        mode: LaunchMode.externalApplication,
                      );
                    },  
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage('assets/images/logo.jpeg'),
                      )
                    )
                  )

                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                child: Text(
                  "Selected UI/UX Redesigns",                                    // <- A better text here
                  style: GoogleFonts.robotoFlex(
                    color: Color(0xff0b0c10),
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    height: 1,
                  ),
                ),
            ),

            Top3PagesScroller(),

            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: Text(
                'More UI/UX Redesigns',
                style: GoogleFonts.robotoFlex(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            SizedBox(height: 6,),

            MorePagesSection()

          ],
        ),
      ),

    );
  }
}

class Top3PagesScroller extends StatelessWidget{
  const Top3PagesScroller({super.key});

  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;

        final double pageWidth = screenWidth < 400 ? screenWidth : screenWidth.clamp(400.0, 600.0);

        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Row(
            children: [


              SizedBox(
                width: pageWidth,
                child: Top3Pages(
                  appName: "WhatsApp",
                  appIcon: FaIcon(
                    FontAwesomeIcons.whatsapp,
                    size: 40,
                    color: Color(0xff29BE63),
                  ),
                  font: "Roboto",
                  primaryTextStyle: GoogleFonts.roboto(fontSize: 16),
                  primaryColor: Color(0xff29BE63),
                  primaryColorHex: "#29BE63",
                  secondaryColor: Color(0xff1D6A3E),
                  secondaryColorHex: "#1D6A3E",
                  thirdColor: Color(0xffDCFFD4),
                  thirdColorHex: "#DCFFD4",
                  pageName: "whatsapp",
                  gitFolderName: "github-repo-link",
                  destinationPage: WhatsappLoading(),
                  gitFolderLink: "https://github.com/Abhinav08bhatt/UI-UX/tree/main/lib/WhatsApp",
                ),
              ),

              const SizedBox(width: 16),

              SizedBox(
                width: pageWidth,
                child: Top3Pages(
                  appName: "Airbnb",
                  appIcon: FaIcon(
                    FontAwesomeIcons.airbnb,
                    size: 40,
                    color: Color(0xFFFF5A5F),
                  ),
                  font: "Inter",
                  primaryTextStyle: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  primaryColor: Color(0xFFFF5A5F),
                  primaryColorHex: "#FF5A5F",
                  secondaryColor: Color(0xFFF7F7F7),
                  secondaryColorHex: "#767676",
                  thirdColor: Color(0xFF767676),
                  thirdColorHex: "#767676",
                  pageName: "airbnb",
                  gitFolderName: "airbnb",
                  destinationPage: Placeholder(),
                  gitFolderLink: "https://github.com/Abhinav08bhatt/UI-UX/tree/main/lib/Airbnb",
                )
              ),

              const SizedBox(width: 16),

              SizedBox(
                width: pageWidth,
                child: Top3Pages(
                  appName : "Spotify",
                  appIcon :FaIcon(
                    FontAwesomeIcons.spotify,
                    size: 40,
                    color: Color(0xFF1DB954),
                  ),
                  font: "Inter",
                  primaryTextStyle: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  primaryColor: Color(0xFF1DB954),
                  primaryColorHex: "#1DB954",
                  secondaryColor: Color(0xFF191414),
                  secondaryColorHex: "#191414",
                  thirdColor: Color(0xFF2A2A2A),
                  thirdColorHex: "#2A2A2A",
                  pageName: "spotify",
                  gitFolderName: "spotify",
                  destinationPage: Placeholder(),
                  gitFolderLink: "https://github.com/Abhinav08bhatt/UI-UX/tree/main/lib/Spotify",
                )
              ),
              
            ],
          ),
        );
      },
    );
  }
}

class Top3Pages extends StatelessWidget{
  final String appName , font , primaryColorHex , secondaryColorHex , thirdColorHex , pageName , gitFolderName ;
  final Color primaryColor , secondaryColor , thirdColor;
  final Icon appIcon;
  final TextStyle primaryTextStyle;
  final String gitFolderLink;
  final Widget destinationPage;

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
    required this.pageName,             
    required this.gitFolderName,        
    required this.gitFolderLink,   
    required this.destinationPage     
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
              
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,0,4,0),
                        child: appIcon,
                      ),
                      
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
                              padding: const EdgeInsets.fromLTRB(12,8,0,0),
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
                                              boxShadow: [BoxShadow(color: secondaryColor.withValues(alpha: 0.10),blurRadius: 8,spreadRadius: 2)],
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
                                                      color: secondaryColor,
                                                      borderRadius: BorderRadius.circular(10)
                                                    ),
                                                  ),
                                                ),
                                          
                                                Text(secondaryColorHex,style: GoogleFonts.robotoFlex(fontSize: 14,color: Color(0xff282828).withValues(alpha: 0.80)),),
                                                                                
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
                                              boxShadow: [BoxShadow(color: thirdColor.withValues(alpha: 0.10),blurRadius: 8,spreadRadius: 2)],
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
                                                      color: thirdColor,
                                                      borderRadius: BorderRadius.circular(10)
                                                    ),
                                                  ),
                                                ),
                                          
                                                Text(thirdColorHex,style: GoogleFonts.robotoFlex(fontSize: 14,color: Color(0xff282828).withValues(alpha: 0.80)),),
                                                                                
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

                            Spacer(),

                            Row(
                              children: [
                                SizedBox(width: 8,),

                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (_) => destinationPage,
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
                                      padding: EdgeInsets.fromLTRB(0, 14, 0, 14)
                                    ),
                                    child: Text(
                                      "View Redesign",
                                      style: GoogleFonts.robotoFlex(
                                        fontWeight: FontWeight.w600,
                                        // color: secondaryColor,
                                        color: Color.fromARGB(255, 255, 255, 255),
                                        fontSize: 18,
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
                                          gitFolderLink,
                                        ),
                                        mode: LaunchMode.externalApplication,
                                      );
                                    }, 
                                    child: Container(
                                      padding: EdgeInsets.all(14),
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

class MorePagesSection extends StatelessWidget{
  const MorePagesSection({super.key});

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        
        MorePages(
          appName: "Twitter",
          subtitle: "Dark theme · Feed layout",
          appIcon: FaIcon(
            FontAwesomeIcons.twitter,
            size: 16,
            color: Color(0xff1DA1F2),
          ),
          primaryColor: Color(0xff1DA1F2),
          destinationPage: Placeholder(),
          gitFolderLink: "https://github.com/Abhinav08bhatt/UI-UX/tree/main/lib/WhatsApp",
          
        ),

        MorePages(
          appName: "Instagram",
          subtitle: "Dark theme · Stories & Feed",
          appIcon: FaIcon(
            FontAwesomeIcons.instagram,
            size: 16,
            color: Color(0xffE1306C),
          ),
          primaryColor: Color(0xffE1306C),
          destinationPage: Placeholder(),
          gitFolderLink: "https://github.com/Abhinav08bhatt/UI-UX/tree/main/lib/Instagram",
        ),

        MorePages(
          appName: "WhatsApp",
          subtitle: "Dark theme · Chat layout",
          appIcon: FaIcon(
            FontAwesomeIcons.whatsapp,
            size: 16,
            color: Color(0xff25D366),
          ),
          primaryColor: Color(0xff25D366),
          destinationPage: Placeholder(),
          gitFolderLink: "https://github.com/Abhinav08bhatt/UI-UX/tree/main/lib/WhatsApp",
        ),

        MorePages(
          appName: "YouTube",
          subtitle: "Dark theme · Video feed",
          appIcon: FaIcon(
            FontAwesomeIcons.youtube,
            size: 16,
            color: Color(0xffFF0000),
          ),
          primaryColor: Color(0xffFF0000),
          destinationPage: Placeholder(),
          gitFolderLink: "https://github.com/Abhinav08bhatt/UI-UX/tree/main/lib/YouTube",
        ),

        MorePages(
          appName: "Spotify",
          subtitle: "Dark theme · Music library",
          appIcon: FaIcon(
            FontAwesomeIcons.spotify,
            size: 16,
            color: Color(0xff1DB954),
          ),
          primaryColor: Color(0xff1DB954),
          destinationPage: Placeholder(),
          gitFolderLink: "https://github.com/Abhinav08bhatt/UI-UX/tree/main/lib/Spotify",
        ),

        MorePages(
          appName: "LinkedIn",
          subtitle: "Dark theme · Professional feed",
          appIcon: FaIcon(
            FontAwesomeIcons.linkedin,
            size: 16,
            color: Color(0xff0A66C2),
          ),
          primaryColor: Color(0xff0A66C2),
          destinationPage: Placeholder(),
          gitFolderLink: "https://github.com/Abhinav08bhatt/UI-UX/tree/main/lib/LinkedIn",
        ),

      ],
    );
  }
}

class MorePages extends StatelessWidget{
  final String appName , subtitle;
  final Icon appIcon;
  final String gitFolderLink;
  final Color primaryColor;
  final Widget destinationPage;

  const MorePages({
    super.key,
    required this.appName,
    required this.subtitle,
    required this.appIcon,
    required this.primaryColor,
    required this.gitFolderLink,
    required this.destinationPage
  });

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => destinationPage,
          ),
        );
      },
      child: ListTile(

        splashColor: primaryColor,

        title: Row(
          children: [
            
            Text(appName,
              style: GoogleFonts.roboto(
                fontSize: 20,
                fontWeight: FontWeight.w400
              ),
            ),

            SizedBox(width: 6),

            appIcon,

          ],
        ),
        
        subtitle: Text(subtitle,
          style: GoogleFonts.roboto(
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        
        trailing: Icon(Icons.arrow_forward_ios_rounded,size: 18,),

      ),
    );
  }
}