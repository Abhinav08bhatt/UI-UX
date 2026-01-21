import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_pages/Graphic_era/graphic_era_theme.dart';

class GraphicEraHome extends StatelessWidget {
  const GraphicEraHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: graphicWhite,

      body: SafeArea(child: _GraphicEraHomeContent()),

    );
  }
}


class _GraphicEraHomeContent extends StatelessWidget {
  const _GraphicEraHomeContent();

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [

        

        // appbar
        Padding(
          padding: const EdgeInsets.fromLTRB(12,4,12,0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              CircleAvatar(
                radius: 28,
              ),
              
              kW8,
          
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Graphic Era",
                    style: kGraphicLogo,
                  ),
                  Text(
                    "Deemed to be University",
                    style: kTagsStyle.copyWith(
                      fontSize: 16,
                      letterSpacing: 0
                    ),
                  ),
                ],
              ),

              Spacer(),

              DecoratedBox(
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(32)
                ),
                child: IconButton(
                  onPressed: () {}, 
                  padding: EdgeInsets.all(12),
                  icon: Icon(
                    Icons.link,
                    color: graphicWhite,
                    size: 24,
                  ),
                ),
              ),

            ],
          ),
        ),
          

        // card
        Padding(
          padding: const EdgeInsets.fromLTRB(12,12,12,0),
          child: SizedBox(
            height: 412,
            child: Stack(
              children: [
                
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(38),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: primaryColor.withValues(alpha: 0.20),
                          spreadRadius: 4,
                          blurRadius: 12 
                        )
                      ],
                    ),
                    child: SizedBox(
                      height: 348,
                    ),
                  ),
                ),
                
                Positioned(
                  top: 0,
                  left: 20,
                  child: CircleAvatar(
                    radius: 80,
                  ),
                ),

                Positioned(
                  top: 0,
                  right: 0,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      boxShadow: [
                        BoxShadow(
                          color: primaryColor.withValues(alpha: 0.20),
                          spreadRadius: 4,
                          blurRadius: 4, 
                        )
                      ],
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(32),
                        topRight: Radius.circular(32),
                        bottomLeft: Radius.circular(28)
                      ),
                    ),
                    child: Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(18,12,18,12),
                        child: Row(
                          children: [
                            Text(
                              "Show ID",
                              style: kInfoHeadingStyle.copyWith(
                                fontSize: 20,
                                height: 4
                              ),
                            ),

                            SizedBox(width: 12,),

                            Icon(
                              FontAwesomeIcons.idCardClip,
                              color: thirdColor,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                Positioned(
                  top: 72,
                  left: 192,
                  right: 16,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    
                        Text(
                          "Abhinav Bhatt",
                          style: kHeadingStyle.copyWith(
                            fontSize: 28,
                          ),                          
                        ),
                        
                        Text(
                          "BSc (H.) Computer Science",
                          style: kSubHeadingStyle,                          
                        ),
                    
                        Row(
                          children: [
                            Text(
                              "Year : ",
                              style: kHeadingStyle,
                            ),
                            const Text(
                              "1",
                              style: TextStyle(
                                fontSize: 20
                              ),
                            ),
                    
                            kW8,
                    
                            Text(
                              "Semester : ",
                              style: kHeadingStyle,
                            ),
                            const Text(
                              "2",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        
                    
                      ],
                    ),
                  ),

                  Positioned(
                    bottom: 16,
                    left: 16,
                    right: 16,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.circular(28),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16,14,16,14),
                        child: Column(
                          children: [
                        
                            Row(
                              children: [
                        
                                Text(
                                  "Official Email",
                                  style: kInfoHeadingStyle,
                                ),
                                Spacer(),
                                Text(
                                  "12345678@geu.inc.ac",
                                  style: kInfoStyle,
                                ),
                        
                              ],
                            ),
                        
                            Divider(),
                      
                            Row(
                              children: [
                        
                                Text(
                                  "Class Roll No.",
                                  style: kInfoHeadingStyle,
                                ),
                                Spacer(),
                                Text(
                                  "00",
                                  style: kInfoStyle,
                                ),
                        
                              ],
                            ),
                        
                            Divider(),
                      
                            Row(
                              children: [
                        
                                Text(
                                  "Enroll No.",
                                  style: kInfoHeadingStyle,
                                ),
                                Spacer(),
                                Text(
                                  "GE-12345678",
                                  style: kInfoStyle,
                                ),
                        
                              ],
                            ),
                        
                            Divider(),
                      
                            Row(
                              children: [
                        
                                Text(
                                  "University Roll No.",
                                  style: kInfoHeadingStyle,
                                ),
                                Spacer(),
                                Text(
                                  "1234567890",
                                  style: kInfoStyle,
                                ),
                        
                              ],
                            ),
                        
                            Divider(),
                      
                            Row(
                              children: [
                        
                                Text(
                                  "Status",
                                  style: kInfoHeadingStyle,
                                ),
                                Spacer(),
                                Text(
                                  "Active",
                                  style: kInfoStyle,
                                ),
                        
                              ],
                            ),
                        
                      
                          ],
                        ),
                      ),

                    ),
                  ),
  

              ],
            ),
          ),
        ),

        // search

        Padding(
          padding: const EdgeInsets.fromLTRB(16,24,16,4),
          child: TopSearchBar(),
        ),



        // content

      ],

    );
  }
}

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

class TopSearchBar extends StatelessWidget {
  const TopSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        style: kInfoHeadingStyle,
        cursorColor: primaryColor,
        decoration: InputDecoration(
          filled: true,
          fillColor: graphicWhite,
          contentPadding: EdgeInsets.fromLTRB(20, 16, 20, 16),

          label: Text('Search', style: kTagsStyle.copyWith(fontSize: 16)),
          hintText: 'Quick Access',
          hintStyle: kTagsStyle.copyWith(fontSize: 16),
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