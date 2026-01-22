import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
    
// Colors 

const Color whatsappWhite = Color(0xfff1f7f6);
const Color whatsappBlack = Color(0xff252525);
const Color primaryColor = Color(0xff29BE63);
const Color secondaryColor = Color(0xff03624c);
const Color thirdColor = Color(0xffDCFFD4);

// Fonts

final TextStyle heading = GoogleFonts.inter(
  fontSize: 18,
  color: whatsappBlack,
  fontWeight: FontWeight.w800,
  letterSpacing: 0
);
final TextStyle message = GoogleFonts.inter(
  fontSize: 16,
  color: whatsappBlack,
  fontWeight: FontWeight.w400,
  letterSpacing: 0
);
final TextStyle chat = GoogleFonts.inter(
  fontSize: 18,
  color: whatsappBlack,
  fontWeight: FontWeight.w500,
  letterSpacing: 0
);

final TextStyle appBarTitle = GoogleFonts.inter(
  fontSize: 34,
  height: 1,
  letterSpacing: -1,
  color: primaryColor,
  fontWeight: FontWeight.w600,
);

final OutlineInputBorder _searchEnabledBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(32),
  borderSide: const BorderSide(
    color: Colors.black26,
    width: 1.5,
  ),
);

final OutlineInputBorder _searchFocusedBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(32),
  borderSide: const BorderSide(
    color: primaryColor,
    width: 1.5,
  ),
);

final TextStyle _searchTextStyle = chat;

final TextStyle _searchLabelStyle = message.copyWith(
  fontWeight: FontWeight.w500,
  color: whatsappBlack,
);

final TextStyle _searchHintStyle = message.copyWith(
  fontSize: 16,
  color: whatsappBlack.withValues(alpha: 0.6),
);

const EdgeInsets _searchContentPadding =
    EdgeInsets.fromLTRB(20, 16, 20, 16);


class WhatsappHome extends StatelessWidget {
  const WhatsappHome({super.key});

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
                  child: Text("WhatsApp", style: appBarTitle)
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
                
// appbar : Column 2 : chat-icon
                    DecoratedBox(
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(38),
                      ),
                      child: SizedBox(
                        height: 54,
                        width: 54,
                        child: IconButton(
                          
                        // chat-icon action :
                          onPressed: (){}, 
                          
                          icon: Padding(
                            padding: const EdgeInsets.fromLTRB(8, 6, 6, 8),
                            child: FaIcon(
                              FontAwesomeIcons.userPlus,
                              color: whatsappWhite,
                              size: 20,
                            ),
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
class TopSearchBar extends StatelessWidget {
  const TopSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        style: _searchTextStyle,
        cursorColor: primaryColor,
        decoration: InputDecoration(
          filled: true,
          fillColor: whatsappWhite,
          contentPadding: _searchContentPadding,
          label: Text('Search', style: _searchLabelStyle),
          hintText: 'Search for contact or file',
          hintStyle: _searchHintStyle,
          enabledBorder: _searchEnabledBorder,
          focusedBorder: _searchFocusedBorder,
          prefixIcon: const Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 2, 10),
            child: Icon(
              Icons.search,
              color: Colors.black54,
              size: 28,
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
            "Archived",
            style: message.copyWith(fontSize: 17,fontWeight: FontWeight.w600,color: whatsappBlack.withValues(alpha: 0.6)),
          )
      
        ],
      ),
    );
  }
}