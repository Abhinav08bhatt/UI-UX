import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
    
Color whatsappWhite = Color(0xfff1f7f6);
Color whatsappBlack = Color(0xff252525);
Color primaryColor = Color(0xff29BE63);
Color secondaryColor = Color(0xff03624c);
Color thirdColor = Color(0xffDCFFD4);

TextStyle name = GoogleFonts.inter(fontSize: 18,color: whatsappBlack,fontWeight: FontWeight.w500,letterSpacing: 0);
TextStyle text = GoogleFonts.inter(fontSize: 16,color: whatsappBlack.withValues(alpha: 0.60),fontWeight: FontWeight.w400,letterSpacing: 0);
TextStyle chat = GoogleFonts.inter(fontSize: 16,letterSpacing: 0,color: whatsappBlack);

class WhatsappHome extends StatelessWidget{
  const WhatsappHome({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
        
        backgroundColor: whatsappWhite,


        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: whatsappWhite,
          toolbarHeight: 126,
          surfaceTintColor: whatsappWhite,
          
          title: Column(
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Text("WhatsApp",
                    style: GoogleFonts.inter(
                      fontSize: 34,
                      height: 1,
                      letterSpacing: -1,
                      color:primaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
          
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8,2,8,0),
                        child: GestureDetector(
                          child: FaIcon(
                            FontAwesomeIcons.camera,
                            color: Colors.black87,
                            size: 22,
                          ),
                        ),
                      ),
            
                      Padding(
                        padding: const EdgeInsets.fromLTRB(12,3,0,0),
                        child: GestureDetector(
                          child: FaIcon(
                            Icons.more_vert_rounded,
                            color: Colors.black87,
                            size: 25,
                          ),
                        ),
                      ),

                    ],
                  ),  

                ],
              ),
                
              SizedBox(height: 12,),

              Padding(
                padding: const EdgeInsets.fromLTRB(0,8,0,8),
                child: Row(
                  children: [
                          
                    Expanded(
                      child: TextField(
                      
                        style: const TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                        ),

                        cursorColor:  primaryColor,
                      
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: whatsappWhite,
                          contentPadding: EdgeInsets.fromLTRB(20, 16, 20, 16),

                          hint: Text(
                            "Search for contact or file",
                            style: text.copyWith(fontSize: 16)
                          ),
                      
                          label: Text(
                            "Search",
                            style: text.copyWith(fontSize: 16),
                          ),
                      
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32),
                            borderSide: BorderSide(
                              color:  Colors.black26,
                              width: 1.5,
                            )
                          ),
                      
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32),
                            borderSide: BorderSide(
                              color: primaryColor,
                              width: 1.5,
                            )
                          ),
                      
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
                    ),
                          
                    SizedBox(width: 8,),
                
                    Container(
                      height: 54,
                      width: 54,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: IconButton(
          
                        onPressed: (){}, 
                        
                        icon: FaIcon(
                          FontAwesomeIcons.userPlus,
                          color: whatsappWhite,
                          size: 18,
                        ),
                      ),
                    ),
          
                  ],
                ),
              ),

            ],
          ),
      
        ),


        body: SafeArea(
          child: GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            child: ListView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              children: [
            
                  
                // contacts here

                ContactCard(
                  profilePic: AssetImage("assets/images/profile_pic_1.jpg"),
                  name: "Avi", 
                  messageCase : "receiving",
                  messageStatus: true,
                  messageRead: true,
                  message: "This Is working and it is just amazing that how better it looks", 
                  time: "00:00 am",
                  messageCount: 1,
                  nameStyle: name,
                  textStyle: text,
                ),

                ContactCard(
                  profilePic: null,
                  name: "Avi", 
                  messageCase : "receiving",
                  messageStatus: true,
                  messageRead: true,
                  message: "This Is working and it is just amazing that how better it looks", 
                  time: "00:00 am",
                  messageCount: 2,
                  nameStyle: name,
                  textStyle: text,
                ),

                ContactCard(
                  profilePic: AssetImage("assets/images/profile_pic_3.jpg"),
                  name: "Liam", 
                  messageCase : "sending",
                  messageStatus: true,
                  messageRead: true,
                  message: "If you could teleport anywhere right now, where would you go?", 
                  time: "00:00 am",
                  messageCount: 0,
                  nameStyle: name,
                  textStyle: text,
                ),

                ContactCard(
                  profilePic: AssetImage("assets/images/profile_pic_4.jpg"),
                  name: "Avi", 
                  messageCase : "sending",
                  messageStatus: true,
                  messageRead: true,
                  message: "This Is working and it is just amazing that how better it looks", 
                  time: "00:00 am",
                  messageCount: 0,
                  nameStyle: name,
                  textStyle: text,
                ),

                ContactCard(
                  profilePic: AssetImage("assets/images/profile_pic_2.jpg"),
                  name: "Maya", 
                  messageCase : "receiving",
                  messageStatus: true,
                  messageRead: true,
                  message: "I just realized coffee tastes better when it's raining.", 
                  time: "00:00 am",
                  messageCount: 4,
                  nameStyle: name,
                  textStyle: text,
                ),

                ContactCard(
                  profilePic: AssetImage("assets/images/profile_pic_5.jpg"),
                  name: "Avi", 
                  messageCase : "sending",
                  messageStatus: false,
                  messageRead: false,
                  message: "This Is working and it is just amazing that how better it looks", 
                  time: "00:00 am",
                  messageCount: 1,
                  nameStyle: name,
                  textStyle: text,
                ),

                Spacer(),
            
                Divider(
                  indent: 8,
                  endIndent: 8,
                  color: whatsappBlack.withValues(alpha: 0.10),
                ),
            
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => Placeholder(),
                      ),
                    );
                  },
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
                  
                      SizedBox(width: 16,),
                  
                      FaIcon(
                        Icons.archive_outlined,
                        color: whatsappBlack.withValues(alpha: 0.80),
                        size: 20,
                      ),
                  
                      SizedBox(width: 28,),
                  
                      Text(
                        "Archived",
                        style: text.copyWith(fontSize: 17,fontWeight: FontWeight.w600),
                      )
                  
                    ],
                  ),
                )
            
              ],          
            ),
          )
        ),
      

    );
  }
}

class ContactCard extends StatelessWidget{
  final ImageProvider? profilePic;
  final String name , message , time;
  final TextStyle nameStyle;
  final TextStyle textStyle;
  final String messageCase;
  final bool messageStatus,messageRead;
  final int messageCount;

  const ContactCard({
    super.key,
    this.profilePic,
    required this.name,
    required this.messageCase,
    required this.messageStatus,
    required this.messageRead,
    required this.message,
    required this.messageCount,
    required this.time,
    required this.nameStyle,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {

    return ListTile(

      dense: true,
      visualDensity: VisualDensity(horizontal: -2, vertical: 1.8),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      
      splashColor: thirdColor,

      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => Placeholder(),
          ),
        );
      },

      onLongPress: () {},

      leading: CircleAvatar(
        radius: 24,
        backgroundColor: thirdColor,
        backgroundImage : profilePic,
        
        child: profilePic == null
          ? Icon(Icons.person,color: secondaryColor,)
          : null,
      ),

      title: Text(name,style: nameStyle,),

      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          
          if (messageCase == "sending")
            Icon(
              messageStatus
                  ? Icons.done_all_rounded
                  : Icons.done_rounded,
              size: 20,
              color: messageRead
                  ? Colors.lightBlue
                  : Colors.black54,
            )
          else
            Stack(
              children: [

              Icon(
                Icons.circle,
                color: primaryColor,
                size: 23,
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(8.5, 4, 8, 4),
                child: Text(
                  "$messageCount",
                  style: TextStyle(
                    color: whatsappWhite,
                    fontSize: 13
                  ),
                ),
              )

              ],
            ),
          
          SizedBox(width: 4,),

          Expanded(
            // width: 200,
            child: Text(message,
              style: textStyle,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),

          SizedBox(width: 24,),

          Text(time,
              style: textStyle.copyWith(
                fontSize: 13,
              )
            ),
      
        ],
      ),

    );
  }
}

enum MessageType{
  sending,
  receiving
}

class ChatPreview {
  final ImageProvider? profilePic;
  final String name;
  final String message;
  final String time;
  final MessageType type;

  final bool? sent;
  final bool? read;

  final int? unreadCount;

  ChatPreview({
    this.profilePic,
    required this.name,
    required this.message,
    required this.time,
    required this.type,

    this.sent = false,
    this.read = false,
    this.unreadCount = 0,
    
  });

}