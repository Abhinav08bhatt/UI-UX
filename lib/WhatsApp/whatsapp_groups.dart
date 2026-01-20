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


class WhatsappGroups extends StatelessWidget {
  const WhatsappGroups({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: whatsappWhite,

// appbar start
// appbar (logo + actions + search-bar + add-chat-button)
      appBar: AppBar(

// app bar properties  
        automaticallyImplyLeading: false,
        backgroundColor: whatsappWhite,
        surfaceTintColor: whatsappWhite,
        toolbarHeight: 112,
        titleSpacing: 0,

// appbar content
        title: AppBarClass(),

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






// section to the end
              // Spacer(),

// archived section
              ArchivedSection(),

            ],
          )
        ),
// body end

      ),

    );
  }
}


// ----------------------------------------- appbar section -----------------------------------------

// appbar
class AppBarClass extends StatelessWidget{
  const AppBarClass({
    super.key
  });

  @override
  Widget build(BuildContext context) {

    return Column(
          children: [
            
// appbar : Column 1 : logo + actions
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

// appbar : Column 1 : padding for logo
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),

// appbar : Column 1 : logo
                  child: Text(
                    "Groups",
                    style: GoogleFonts.inter(
                      fontSize: 28,
                      height: 1,
                      letterSpacing: -1,
                      color:secondaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

// appbar : Column 1 : actions
                Row(
                  children: [

// appbar : Column 1 : action 1 : camera
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

// appbar : Column 1 : action 1 : menu
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

              ],
            ),

              SizedBox(height: 10,),

// appbar : Column 2 : search-bar + chat-icon 
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                child: Row(
                  children: [
                
// appbar : Column 2 : search-bar  
                    TopSearchBar(),
                
                    SizedBox(width: 8,),
                
// appbar : Column 2 : create-group
                    Container(
                      height: 54,
                      width: 54,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(38),
                      ),
                      child: IconButton(
                        
// create-group action :
                        onPressed: (){}, 
                        
                        icon: Padding(
                          padding: const EdgeInsets.fromLTRB(8, 5, 6, 8),
                          child: FaIcon(
                            Icons.group_add_rounded,
                            color: whatsappWhite,
                            size: 26,
                          ),
                        ),
                      ),
                    ),
                 
                  ],
                ),
              ),

          ],
        );
  }
}

// search-bar
class TopSearchBar extends StatelessWidget{
  const TopSearchBar({super.key});

  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: TextField(

// input text style
        style: chat.copyWith(fontWeight: FontWeight.w400),

// cursor style
        cursorColor: primaryColor,

// input filed decoration
        decoration: InputDecoration(
          filled: true,
          fillColor: whatsappWhite,
          contentPadding: EdgeInsets.fromLTRB(20, 16, 20, 16),

// label text
          label: Text(
            "Search",
            style: message.copyWith(fontWeight: FontWeight.w500,color: whatsappBlack),
          ),

// hint text 
          hint: Text(
            "Search for groups or communities",
            style: message.copyWith(fontSize: 16),
          ),

// non focus border
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32),
            borderSide: BorderSide(
              color:  Colors.black26,
              width: 1.5,
            )
          ),
      
// focus border
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32),
            borderSide: BorderSide(
              color: primaryColor,
              width: 1.5,
            )
          ),

// icon
          prefixIcon: Padding(
            padding: const EdgeInsets.fromLTRB(10,10,2,10),
            child: Icon(
              Icons.search,
              color: Colors.black54,
              size:28,
            ),
          ),

        ),

      ),
    );

  }
}

// ----------------------------------------- body section -----------------------------------------



// archived button
class ArchivedSection extends StatelessWidget{
  const ArchivedSection({
    super.key
  });

  @override
  Widget build(BuildContext context) {

    return ElevatedButton(

// archived button action :
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => Placeholder(),
          ),
        );
      },

// properties
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: whatsappWhite,
        overlayColor: secondaryColor,
        shadowColor: secondaryColor.withValues(alpha: 0.40),
        shape: BeveledRectangleBorder(),
        padding: EdgeInsets.fromLTRB(16, 12, 16, 12)
      ),

      child: Row(
        children: [

// left space
          SizedBox(width: 16,),
      
// archived icon
          FaIcon(
            Icons.archive_outlined,
            color: whatsappBlack.withValues(alpha: 0.80),
            size: 20,
          ),
      
          SizedBox(width: 28,),
      
// archived text
          Text(
            "Archived Groups",
            style: message.copyWith(fontSize: 17,fontWeight: FontWeight.w600),
          )
      
        ],
      ),
    );
  }
}