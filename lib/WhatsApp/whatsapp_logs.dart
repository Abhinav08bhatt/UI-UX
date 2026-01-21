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

// Favorites section :
              FavoritesSection(
                title: "Favorites",
                favorites: [
                  FavoriteData(
                    name: "Liam",
                    profilePic: AssetImage("assets/images/profile_pic_15.jpg"),
                  ),
                  FavoriteData(
                    name: "Sophie",
                    profilePic: AssetImage("assets/images/profile_pic_16.jpeg"),
                  ),
                  FavoriteData(
                    name: "Nathan",
                    profilePic: AssetImage("assets/images/profile_pic_17.jpg"),
                  ),
                  FavoriteData(
                    name: "Kelly",
                    profilePic: AssetImage("assets/images/profile_pic_18.jpg"),
                  ),
                  FavoriteData(
                    name: "Julian",
                    profilePic: AssetImage("assets/images/profile_pic_19.jpg"),
                  ),
                  FavoriteData(
                    name: "Clara",
                    profilePic: AssetImage("assets/images/profile_pic_20.jpg"),
                  ),
                ],
              ),


// Contacts section :
              ContactsSection(
                title: "Contacts",
                contacts: [
                  ContactData(name: "Emma Wilson"),
                  ContactData(name: "Henry ", profilePic: AssetImage("assets/images/profile_pic_9.jpg")),
                  ContactData(name: "Daniel Smith"),
                  ContactData(name: "Olivia Brown", profilePic: AssetImage("assets/images/profile_pic_2.jpg")),
                  ContactData(name: "Sophia Miller", profilePic: AssetImage("assets/images/profile_pic_3.jpg")),
                  ContactData(name: "Isabella Taylor"),
                  ContactData(name: "Michael Davis"),
                  ContactData(name: "James ", profilePic: AssetImage("assets/images/profile_pic_4.jpg")),
                  ContactData(name: "Benjamin ", profilePic: AssetImage("assets/images/profile_pic_5.jpg")),
                  ContactData(name: "Alex Johnson", profilePic: AssetImage("assets/images/profile_pic_1.jpg")),
                  ContactData(name: "Charlotte "),
                  ContactData(name: "Ethan ", profilePic: AssetImage("assets/images/profile_pic_6.jpg")),
                  ContactData(name: "Amelia White"),
                  ContactData(name: "Lucas Harris", profilePic: AssetImage("assets/images/profile_pic_7.jpg")),
                  ContactData(name: "Mia Clark"),
                  ContactData(name: "Noah Lewis", profilePic: AssetImage("assets/images/profile_pic_8.jpg")),
                  ContactData(name: "Kelly Walker"),
                  ContactData(name: "Grace "),
                  ContactData(name: "Samuel King", profilePic: AssetImage("assets/images/profile_pic_10.jpg")),
                  ContactData(name: "Lily Wright"),
                  ContactData(name: "Jack Lopez", profilePic: AssetImage("assets/images/profile_pic_11.jpg")),
                  ContactData(name: "Ava Martinez"),
                  ContactData(name: "Leo ", profilePic: AssetImage("assets/images/profile_pic_12.jpg")),
                  ContactData(name: "Chloe Perez"),
                  ContactData(name: "Ryan Carter", profilePic: AssetImage("assets/images/profile_pic_13.jpg")),
                  ContactData(name: "David Green"),
                  ContactData(name: "Ella Adams"),
                  ContactData(name: "Natalie Scott", profilePic: AssetImage("assets/images/profile_pic_14.jpg")),
                  ContactData(name: "Oliver "),
                  ContactData(name: "Sophie Turner"),
                ],
              ),


// History section :
              HistoryCallTile(
                name: "Liam",
                lastCall: "Today, 9:12 AM",
                callCase: CallCase.outgoing,
                callStatus: CallStatus.accepted,
                callType: CallType.audio,
                profilePic: AssetImage("assets/images/profile_pic_15.jpg"),
              ),
              HistoryCallTile(
                name: "Sophie",
                lastCall: "Today, 8:40 AM",
                callCase: CallCase.incoming,
                callStatus: CallStatus.missed,
                callType: CallType.video,
                profilePic: AssetImage("assets/images/profile_pic_16.jpeg"),
              ),
              HistoryCallTile(
                name: "Nathan",
                lastCall: "Yesterday, 11:18 PM",
                callCase: CallCase.outgoing,
                callStatus: CallStatus.accepted,
                callType: CallType.video,
                profilePic: AssetImage("assets/images/profile_pic_17.jpg"),
              ),
              HistoryCallTile(
                name: "Kelly",
                lastCall: "Yesterday, 10:02 PM",
                callCase: CallCase.incoming,
                callStatus: CallStatus.accepted,
                callType: CallType.audio,
                profilePic: AssetImage("assets/images/profile_pic_18.jpg"),
              ),
              HistoryCallTile(
                name: "Julian",
                lastCall: "Yesterday, 9:41 PM",
                callCase: CallCase.outgoing,
                callStatus: CallStatus.missed,
                callType: CallType.audio,
                profilePic: AssetImage("assets/images/profile_pic_19.jpg"),
              ),
              HistoryCallTile(
                name: "Clara",
                lastCall: "Yesterday, 8:55 PM",
                callCase: CallCase.incoming,
                callStatus: CallStatus.accepted,
                callType: CallType.video,
                profilePic: AssetImage("assets/images/profile_pic_20.jpg"),
              ),

              // -------- Regular contacts --------
              HistoryCallTile(
                name: "Alex Johnson",
                lastCall: "Yesterday, 6:30 PM",
                callCase: CallCase.outgoing,
                callStatus: CallStatus.accepted,
                callType: CallType.audio,
                profilePic: AssetImage("assets/images/profile_pic_1.jpg"),
              ),
              HistoryCallTile(
                name: "Emma Wilson",
                lastCall: "Yesterday, 5:12 PM",
                callCase: CallCase.incoming,
                callStatus: CallStatus.missed,
                callType: CallType.audio,
                profilePic: AssetImage("assets/images/profile_pic_2.jpg"),
              ),
              HistoryCallTile(
                name: "Daniel Smith",
                lastCall: "Yesterday, 4:47 PM",
                callCase: CallCase.outgoing,
                callStatus: CallStatus.accepted,
                callType: CallType.video,
                profilePic: AssetImage("assets/images/profile_pic_3.jpg"),
              ),
              HistoryCallTile(
                name: "Olivia Brown",
                lastCall: "Yesterday, 3:15 PM",
                callCase: CallCase.incoming,
                callStatus: CallStatus.accepted,
                callType: CallType.audio,
                profilePic: AssetImage("assets/images/profile_pic_4.jpg"),
              ),
              HistoryCallTile(
                name: "Michael Davis",
                lastCall: "Yesterday, 2:02 PM",
                callCase: CallCase.outgoing,
                callStatus: CallStatus.missed,
                callType: CallType.audio,
                profilePic: AssetImage("assets/images/profile_pic_5.jpg"),
              ),

              // -------- Favorites again (realistic repetition) --------
              HistoryCallTile(
                name: "Liam",
                lastCall: "Yesterday, 1:40 PM",
                callCase: CallCase.incoming,
                callStatus: CallStatus.accepted,
                callType: CallType.video,
                profilePic: AssetImage("assets/images/profile_pic_15.jpg"),
              ),
              HistoryCallTile(
                name: "Kelly",
                lastCall: "Yesterday, 12:18 PM",
                callCase: CallCase.outgoing,
                callStatus: CallStatus.accepted,
                callType: CallType.audio,
                profilePic: AssetImage("assets/images/profile_pic_18.jpg"),
              ),
              HistoryCallTile(
                name: "Sophie",
                lastCall: "Yesterday, 11:05 AM",
                callCase: CallCase.incoming,
                callStatus: CallStatus.missed,
                callType: CallType.audio,
                profilePic: AssetImage("assets/images/profile_pic_16.jpeg"),
              ),
              HistoryCallTile(
                name: "Nathan",
                lastCall: "Yesterday, 10:22 AM",
                callCase: CallCase.outgoing,
                callStatus: CallStatus.accepted,
                callType: CallType.video,
                profilePic: AssetImage("assets/images/profile_pic_17.jpg"),
              ),

              // -------- More random contacts --------
              HistoryCallTile(
                name: "Lucas Harris",
                lastCall: "2 days ago, 9:50 PM",
                callCase: CallCase.incoming,
                callStatus: CallStatus.accepted,
                callType: CallType.audio,
                profilePic: AssetImage("assets/images/profile_pic_7.jpg"),
              ),
              HistoryCallTile(
                name: "Mia Clark",
                lastCall: "2 days ago, 8:14 PM",
                callCase: CallCase.outgoing,
                callStatus: CallStatus.missed,
                callType: CallType.video,
                profilePic: AssetImage("assets/images/profile_pic_8.jpg"),
              ),
              HistoryCallTile(
                name: "Noah Lewis",
                lastCall: "2 days ago, 7:33 PM",
                callCase: CallCase.incoming,
                callStatus: CallStatus.accepted,
                callType: CallType.audio,
                profilePic: AssetImage("assets/images/profile_pic_9.jpg"),
              ),

              // -------- Favorites dominate again --------
              HistoryCallTile(
                name: "Julian",
                lastCall: "2 days ago, 6:05 PM",
                callCase: CallCase.outgoing,
                callStatus: CallStatus.accepted,
                callType: CallType.video,
                profilePic: AssetImage("assets/images/profile_pic_19.jpg"),
              ),
              HistoryCallTile(
                name: "Clara",
                lastCall: "2 days ago, 5:48 PM",
                callCase: CallCase.incoming,
                callStatus: CallStatus.missed,
                callType: CallType.audio,
                profilePic: AssetImage("assets/images/profile_pic_20.jpg"),
              ),

              // -------- Fillers to reach 50 --------
              HistoryCallTile(
                name: "Henry Hall",
                lastCall: "3 days ago, 9:10 PM",
                callCase: CallCase.outgoing,
                callStatus: CallStatus.accepted,
                callType: CallType.audio,
                profilePic: AssetImage("assets/images/profile_pic_10.jpg"),
              ),
              HistoryCallTile(
                name: "Grace Young",
                lastCall: "3 days ago, 8:42 PM",
                callCase: CallCase.incoming,
                callStatus: CallStatus.accepted,
                callType: CallType.video,
                profilePic: AssetImage("assets/images/profile_pic_11.jpg"),
              ),
              HistoryCallTile(
                name: "Jack Lopez",
                lastCall: "3 days ago, 7:20 PM",
                callCase: CallCase.outgoing,
                callStatus: CallStatus.missed,
                callType: CallType.audio,
                profilePic: AssetImage("assets/images/profile_pic_12.jpg"),
              ),
              HistoryCallTile(
                name: "Ava Martinez",
                lastCall: "3 days ago, 6:05 PM",
                callCase: CallCase.incoming,
                callStatus: CallStatus.accepted,
                callType: CallType.video,
                profilePic: AssetImage("assets/images/profile_pic_13.jpg"),
              ),
              HistoryCallTile(
                name: "Oliver Baker",
                lastCall: "4 days ago, 9:55 PM",
                callCase: CallCase.outgoing,
                callStatus: CallStatus.accepted,
                callType: CallType.audio,
                profilePic: AssetImage("assets/images/profile_pic_14.jpg"),
              ),



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

// creating contacts for the favorites section
class FavoriteData {
// the data passed : 
  final String name;
  final ImageProvider? profilePic;

  const FavoriteData({
// the data passed : name (req)
    required this.name,
// the data passed : profile-pic
    this.profilePic,
  });
}

// creating tiles
class FavoriteCallTile extends StatelessWidget {
// needed : 
  final String name;
  final ImageProvider? profilePic;

  const FavoriteCallTile({
    super.key,
    required this.name,
    this.profilePic,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
// call logic 
      onTap: () {},

      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [

// tile : profile-pic
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

// tile : name
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


// building the tile section 
class FavoritesSection extends StatelessWidget {
// needed
  final String title;
  final int maxRows;
  final List<FavoriteData> favorites;

  const FavoritesSection({
    super.key,
    required this.title,
    required this.favorites,
// useful
    this.maxRows = 1,
  });

  @override
  Widget build(BuildContext context) {

// size of the screen
    final double width = MediaQuery.of(context).size.width;
// number of columns
    final int crossAxisCount = width >= 420 ? 5 : 4;
// max number of items
    final int maxItems = crossAxisCount * maxRows;
// condition to show more
    final bool showMore = favorites.length > maxItems;
// number of items
    final int itemCount =
        favorites.length > maxItems ? maxItems : favorites.length;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

// title row : Favorites title + show more button (when needed)
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
          child: Row(
            children: [

// title row : Favorites tile : icon
              Icon(
                Icons.favorite,
                size: 20,
                color: primaryColor,
              ),
              
              const SizedBox(width: 8),
            
// title row : Favorites tile : title
              Text(title, style: chat),
              
              const Spacer(),

// title row : show more button : 
              if (showMore)
                GestureDetector(
                    
// title row : show more button logic 
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => FavoritesListPage(
                          title: title,
                          favorites: favorites, 
                        ),
                      ),
                    );
                  },

// title row : show more button : child : text + icon
                  child: Row(
                    children: [

// title row : show more button : child : text 
                      Text(
                        "Show More",
                        style: chat.copyWith(fontSize: 14),
                      ),
                      
                      const SizedBox(width: 4),
                      
// title row : show more button : child : icon
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 16,
                        color: secondaryColor,
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),

// responsive grid section
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: GridView.builder(

// grid properties
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: itemCount,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
            ),

// building tiles buttons : profile-pic + name
            itemBuilder: (context, index) {
              final contact = favorites[index];

// each tile clickable 
              return ElevatedButton(

// call logic
                onPressed: () {},

// button properties
                style: ElevatedButton.styleFrom(
                  backgroundColor: whatsappWhite,
                  elevation: 0,
                  padding: EdgeInsets.zero,
                  overlayColor: primaryColor,
                  shape: const LinearBorder()
                ),

// building tiles : profile-pic + name
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [

// building tiles : profile-pic 
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
                    
// building tiles : name
                    Text(
                      contact.name,
                      style: message.copyWith(color: whatsappBlack),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              );
            },
          ),
        ),

// content divider
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



// contacts section

// creating contacts for the contact section
class ContactData {
  final String name;
  final ImageProvider? profilePic;

// the data passed : 
  ContactData({
// the data passed : name (req)
    required this.name,
// the data passed : profile-pic
    this.profilePic,
  });
}

// creating tiles
class ContactCallTile extends StatelessWidget {
  final String name;
  final ImageProvider? profilePic;

// needed : 
  const ContactCallTile({
    super.key,
    required this.name,
    this.profilePic,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

// call logic 
      onTap: () {},

      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
// tile : profile-pic
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
// tile : name
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

// building the tile section 
class ContactsSection extends StatelessWidget { 
// needed
  final String title;
  final int maxRows;
  final List<ContactData> contacts;

  const ContactsSection({
    super.key,
    required this.title,
    required this.contacts,

// useful
    this.maxRows = 3,
  });

  @override
  Widget build(BuildContext context) {

// size of the screen
    final double width = MediaQuery.of(context).size.width;
// number of columns
    final int crossAxisCount = width >= 420 ? 5 : 4;
// max number of items
    final int maxItems = crossAxisCount * maxRows ;
// condition to show more
    final bool showMore = contacts.length > maxItems;
// number of items
    final int itemCount = contacts.length > maxItems ? maxItems : contacts.length;


    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

// title row : Contacts title + show more button (when needed)
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
          child: Row(
            children: [

// title row : Contacts tile : icon
              Icon(
                Icons.contacts,
                size: 20,
                color: primaryColor,
              ),
              
              const SizedBox(width: 8),
              
// title row : Contacts tile : title
              Text(
                title,
                style: chat,
              ),

              const Spacer(),

// title row : show more button : 
              if (showMore)
// title row : show more button logic 
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ContactsListPage(
                          title: title,
                          contacts: contacts,
                        ),
                      ),
                    );
                  },

// title row : show more button : child : text + icon
                  child: Row(
                    children: [
                      
// title row : show more button : child : text 
                      Text(
                        "Show More",
                        style: chat.copyWith(fontSize: 14),
                      ),

                      const SizedBox(width: 4),

// title row : show more button : child : icon
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color:secondaryColor,
                        size: 16,
                      ),

                      // SizedBox(width: 4,)

                    ],
                  ),
                
                ),
            ],
          ),
        ),


// responsive grid section
        Padding(
          padding: EdgeInsetsGeometry.fromLTRB(16, 16, 16, 0),
          child: GridView.builder(
            
// grid properties
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: itemCount,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
            ),

// building tiles buttons : profile-pic + name
            itemBuilder: (context, index) {
              final contact = contacts[index];

// each tile clickable 
              return ElevatedButton(
              
// call logic
                onPressed: () {
                  
                },

// button properties
                style: ElevatedButton.styleFrom(
                  backgroundColor: whatsappWhite,
                  overlayColor: primaryColor,
                  elevation: 0,
                  shape: LinearBorder(),
                  padding: EdgeInsets.all(0),
                ),
             
// building tiles : profile-pic + name
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                
// building tiles : profile-pic 
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
                    
                    SizedBox(height: 4),
                      
// building tiles : name
                    Text(
                      contact.name,
                      style: message.copyWith(color: whatsappBlack),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              );
            },

          ),
        ),

// content divider
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


enum CallCase {
  incoming,
  outgoing,
}
enum CallStatus {
  accepted,
  missed,
}
enum CallType {
  audio,
  video,
}

// history section
class HistoryCallTile extends StatelessWidget {
// needed
  final String name;
  final String lastCall;
  final CallCase callCase;
  final CallStatus callStatus;
  final CallType callType;
  final ImageProvider? profilePic;

  const HistoryCallTile({
    super.key,
    required this.name,
    required this.lastCall,
    required this.callCase,
    required this.callStatus,
    required this.callType,
    this.profilePic,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(

// call logic
      onTap: () {},
      onLongPress: () {},

      contentPadding: const EdgeInsets.fromLTRB(14, 4, 14, 4),
      splashColor: thirdColor,

// Profile-pic
      leading: CircleAvatar(
        radius: 20,
        backgroundColor: thirdColor,
        backgroundImage: profilePic,
        child: profilePic == null
            ? Icon(Icons.person, color: secondaryColor)
            : null,
      ),

// Name
      title: Text(
        name,
        style: chat,
      ),

// Call direction + time
      subtitle: Row(
        children: [

          Icon(
            callCase == CallCase.incoming
                ? Icons.call_received
                : Icons.call_made,
            size: 16,
            color: callStatus == CallStatus.missed
                ? Colors.red
                : primaryColor,
          ),
          const SizedBox(width: 6),
          
          Text(
            lastCall,
            style: message,
          ),
        ],
      ),

// Call type icon
      trailing: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          callType == CallType.audio
              ? Icons.call
              : Icons.videocam,
          color: primaryColor,
        ),
      ),
    );
  }
}





// ------------------------------------- Body Navigation Pages -------------------------------------


// contacts page section
class ContactsListPage extends StatelessWidget {
// needed
  final String title;
  final List<ContactData> contacts;

  const ContactsListPage({
    super.key,
    required this.title,
    required this.contacts,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 246, 249, 249),

      appBar: AppBar(

        title: Text(title),
        backgroundColor: Color(0xfff1f7f6),
        surfaceTintColor: Color(0xfff1f7f6),
      ),
      body: ListView.separated(
        itemCount: contacts.length,
        // ignore: unnecessary_underscores
        separatorBuilder: (_, __) => const Divider(height: 0,color: Color(0xfff1f7f6)),
        itemBuilder: (context, index) {
          final contact = contacts[index];

          return ListTile(

// button logic: open contact / call / video call
            onTap: () {},

            onLongPress: () {},
            
            contentPadding: const EdgeInsets.fromLTRB(14, 4, 14, 4),
            
            splashColor: thirdColor,

// content : profile + name +  info + call options
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: thirdColor,
              backgroundImage: contact.profilePic,

              child: contact.profilePic == null
                  ? Icon(Icons.person,color: secondaryColor,)
                  : null,
            ),

// name
            title: Text(
              contact.name,
              style: chat,
            ),


// call icon : call 
            trailing: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                  Icons.call,
                  color: primaryColor,
                ),
            ),

            

          );
        },
      ),
    );
  }
}


// Favorite contacts page section
class FavoritesListPage extends StatelessWidget {
// needed
  final String title;
  final List<FavoriteData> favorites;

  const FavoritesListPage({
    super.key,
    required this.title,
    required this.favorites,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 246, 249, 249),

      appBar: AppBar(

        title: Text(title),
        backgroundColor: Color(0xfff1f7f6),
        surfaceTintColor: Color(0xfff1f7f6),
      ),
      body: ListView.separated(
        itemCount: favorites.length,
        // ignore: unnecessary_underscores
        separatorBuilder: (_, __) => const Divider(height: 0,color: Color(0xfff1f7f6)),
        itemBuilder: (context, index) {
          final contact = favorites[index];

          return ListTile(

// button logic: open contact / call / video call
            onTap: () {},

            onLongPress: () {},
            
            contentPadding: const EdgeInsets.fromLTRB(14, 4, 14, 4),
            
            splashColor: thirdColor,

// content : profile + name +  info + call options
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: thirdColor,
              backgroundImage: contact.profilePic,

              child: contact.profilePic == null
                  ? Icon(Icons.person,color: secondaryColor,)
                  : null,
            ),

// name
            title: Text(
              contact.name,
              style: chat,
            ),


// call icon : call 
            trailing: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                  Icons.call,
                  color: primaryColor,
                ),
            ),

            

          );
        },
      ),
    );
  }
}