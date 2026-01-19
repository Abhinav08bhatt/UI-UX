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


class WhatsappLogs extends StatelessWidget {
  const WhatsappLogs({super.key});

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

              SizedBox(height: 12,),

              // Padding(
              //   padding: const EdgeInsets.fromLTRB(12,8,0,8),
              //   child: Row(
              //     children: [
                    
              //       Icon(
              //         Icons.favorite_rounded,
              //         size: 20,
              //         color: primaryColor,
              //       ),

              //       SizedBox(width: 8,),

              //       Text(
              //         "Favorites",
              //         style: chat,
              //       ),

              //     ],
              //   ),
              // ),
              FavoritesSection(),

              // Padding(
              //   padding: const EdgeInsets.fromLTRB(12,8,0,8),
              //   child: Row(
              //     children: [
                    
              //       Icon(
              //         Icons.contacts,
              //         size: 20,
              //         color: primaryColor,
              //       ),

              //       SizedBox(width: 8,),

              //       Text(
              //         "Contacts",
              //         style: chat,
              //       ),

              //     ],
              //   ),
              // ),
              ContactsSection(
                title: "Contacts",
                contacts: [
                  ContactData(name: "Avi"),
                  ContactData(name: "Rohit"),
                  ContactData(name: "Neha"),
                  ContactData(name: "Sara"),
                  ContactData(name: "Karan"),
                ],
              ),

              // Padding(
              //   padding: const EdgeInsets.fromLTRB(12,8,0,8),
              //   child: Row(
              //     children: [
                    
              //       Icon(
              //         Icons.history,
              //         size: 20,
              //         color: primaryColor,
              //       ),

              //       SizedBox(width: 8,),

              //       Text(
              //         "History",
              //         style: chat,
              //       ),

              //     ],
              //   ),
              // ),
              HistorySection(),

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
                    "Call",
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

// appbar : Column 2 : search-bar + call-list + dial-pad
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                child: Row(
                  children: [
                
// appbar : Column 2 : search-bar  
                    TopSearchBar(),
                
                    SizedBox(width: 8,),

// appbar : Column 2 : call-list
                    Container(
                      height: 54,
                      width: 54,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(38),
                      ),
                      child: IconButton(
                        
// call-list action :
                        onPressed: (){}, 
                        
                        icon: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: FaIcon(
                            Icons.call,
                            color: whatsappWhite,
                            size: 26,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 8,),
                    
// appbar : Column 2 : dial-pad
                    Container(
                      height: 54,
                      width: 54,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(38),
                      ),
                      child: IconButton(
                        
// dial-pad action :
                        onPressed: (){}, 
                        
                        icon: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 2, 0, 0),
                          child: FaIcon(
                            Icons.dialpad_rounded,
                            color: whatsappWhite,
                            size: 24,
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
            "Search for contacts",
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

// favorite section
class FavoritesSection extends StatelessWidget {
  const FavoritesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(height: 80);
  }
}

// contacts section
class ContactData {
  final String name;
  final ImageProvider? profilePic;

  ContactData({
    required this.name,
    this.profilePic,
  });
}

class ContactsSection extends StatelessWidget {
  final String title;
  final int maxRows;
  final List<ContactData> contacts;

  const ContactsSection({
    super.key,
    required this.title,
    required this.contacts,
    this.maxRows = 3,
  });

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final int crossAxisCount = width >= 420 ? 5 : 4;
    final int maxItems = crossAxisCount * maxRows;
    final int itemCount = contacts.length > maxItems
        ? maxItems
        : contacts.length;


    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        // title row
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
          child: Row(
            children: [
              Icon(
                Icons.contacts,
                size: 20,
                color: primaryColor,
              ),
              const SizedBox(width: 8),
              Text(
                title,
                style: chat,
              ),
            ],
          ),
        ),

        // responsive grid (NO fixed rows)
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: itemCount,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
            ),
            itemBuilder: (context, index) {
              final contact = contacts[index];

              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    radius: 26,
                    backgroundColor: thirdColor,
                    backgroundImage: contact.profilePic,
                    child: contact.profilePic == null
                        ? Icon(
                            FontAwesomeIcons.user,
                            size: 18,
                            color: secondaryColor,
                          )
                        : null,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    contact.name,
                    style: message,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              );
            },
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 12),
          child: Divider(
            indent: 8,
            endIndent: 8,
            color: whatsappBlack.withValues(alpha: 0.20),
          ),
        ),
      ],
    );
  }
}

class ContactCallTile extends StatelessWidget {
  final String name;
  final ImageProvider? profilePic;

  const ContactCallTile({
    super.key,
    required this.name,
    this.profilePic,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // call logic later
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 26,
            backgroundColor: thirdColor,
            backgroundImage: profilePic,
            child: profilePic == null
                ? Icon(
                    FontAwesomeIcons.user,
                    size: 18,
                    color: secondaryColor,
                  )
                : null,
          ),
          const SizedBox(height: 4),
          Text(
            name,
            style: message,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}


// history section
class HistorySection extends StatelessWidget {
  const HistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(height: 240);
  }
}
