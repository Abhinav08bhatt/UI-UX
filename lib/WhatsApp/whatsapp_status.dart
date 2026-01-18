import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
    
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



class WhatsappStatus extends StatelessWidget {
  const WhatsappStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: whatsappWhite,

// appbar start
// appbar (text + actions)
      appBar: AppBar(

// app bar properties  
        automaticallyImplyLeading: false,
        backgroundColor: whatsappWhite,
        surfaceTintColor: whatsappWhite,
        toolbarHeight: 48,
        // titleSpacing: 0,

// appbar content
        title: Text(
          "Status",
          style: GoogleFonts.inter(
            fontSize: 28,
            height: 1,
            letterSpacing: -1,
            color:secondaryColor,
            fontWeight: FontWeight.w600,
          ),
        ),

        actions: [
// appbar : action 1 : camera
          IconButton(

// camera action : 
            onPressed: () {}, 

            padding: EdgeInsets.all(12),
            highlightColor: thirdColor,
          
            icon: FaIcon(
              FontAwesomeIcons.camera,
              color: Colors.black87,
              size: 22,
            )
          ),

// appbar : action 1 : menu
          IconButton(

// menu action : 
            onPressed: () {}, 
          
            padding: EdgeInsets.all(10),
            highlightColor: thirdColor,
            

            icon: FaIcon(
              Icons.more_vert_rounded,
              color: Colors.black87,
              size: 25,
            )
          ),

        ],

      ),
// appbar end


// body start
      body: SafeArea(
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: ListView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            children: [



            ],
          )
        ),
// body end

      ),


    );
  }
}


// ----------------------------------------- body section -----------------------------------------

