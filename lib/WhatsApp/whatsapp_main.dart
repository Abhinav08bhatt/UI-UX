import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_pages/WhatsApp/whatsapp_groups.dart';
import 'package:ui_pages/WhatsApp/whatsapp_home.dart';
import 'package:ui_pages/WhatsApp/whatsapp_logs.dart';
import 'package:ui_pages/WhatsApp/whatsapp_status.dart';
    
// Colors 
Color whatsappWhite = Color(0xfff1f7f6);
Color whatsappBlack = Color(0xff252525);
Color primaryColor = Color(0xff29BE63);
Color secondaryColor = Color(0xff03624c);
Color thirdColor = Color(0xffDCFFD4);

// Fonts
TextStyle heading = GoogleFonts.inter(
  fontSize: 18,
  color: whatsappBlack,
  fontWeight: FontWeight.w800,
  letterSpacing: 0
);
TextStyle message = GoogleFonts.inter(
  fontSize: 16,
  color: whatsappBlack.withValues(alpha: 0.6),
  fontWeight: FontWeight.w400,
  letterSpacing: 0
);
TextStyle chat = GoogleFonts.inter(
  fontSize: 18,
  color: whatsappBlack,
  fontWeight: FontWeight.w500,
  letterSpacing: 0
);


// the stateful widget for variable indexing
class WhatsappMain extends StatefulWidget{
  const WhatsappMain({super.key});

  @override
  State<WhatsappMain> createState() => _WhatsappMain();
}

// extending the stateful widget
class _WhatsappMain extends State<WhatsappMain>{

// page index for navigation
  int index = 0;  

  @override
  Widget build(BuildContext context) {

// navigation pages
    final pages = const [
      WhatsappHome(),
      WhatsappStatus(),
      WhatsappGroups(),
      WhatsappLogs()
    ];

    return Scaffold(

// background color
      backgroundColor: whatsappWhite,

// body
      body: pages[index],
// body end

// navigation-bar start
      bottomNavigationBar: SizedBox(

// navigation-bar height
        height: 68,
        child: BottomNavigationBar(
          
          currentIndex: index,

// changing index value depending on the page
          onTap: (value){
            setState(() {
              index = value;
            });
          },

// navigation bar properties :
          iconSize: 28,
          showSelectedLabels: true,
          selectedItemColor: secondaryColor,
          selectedLabelStyle: chat.copyWith(fontSize: 16),
          showUnselectedLabels: true,
          unselectedItemColor: whatsappBlack.withValues(alpha: 0.50),
          unselectedLabelStyle: chat.copyWith(fontSize: 16),

          items: [

// home button
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.house),
                label: "Home",
                backgroundColor: whatsappWhite
            ),
        
// status/update button
            BottomNavigationBarItem(
              icon: Icon(Icons.radio_button_checked_rounded),
              label: "Status",
              backgroundColor: whatsappWhite
            ),
        
// groups button
            BottomNavigationBarItem(
              icon: Icon(Icons.group),
              label: "Groups",
              backgroundColor: whatsappWhite
            ),
        
// call button
            BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: "Calls",
              backgroundColor: whatsappWhite
            ),

          ],
          
// navigation item end
        ),
      ),
// navigation-bar end
 

    );

  }
}

