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
                    style: kHeadingStyle.copyWith(
                      fontSize: 30,
                      height: 1,
                      letterSpacing: 0.80
                    ),
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
                  color: thirdColor,
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
            height: 368,
            child: Stack(
              children: [
                
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(38),
                      color: Colors.white
                      
                    ),
                    child: SizedBox(
                      height: 300,
                    ),
                  ),
                ),
                
                Positioned(
                  top: 0,
                  left: 20,
                  child: CircleAvatar(
                    radius: 88,
                  ),
                ),

                Positioned(
                  top: 0,
                  right: 0,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(32),
                        topRight: Radius.circular(32),
                        bottomLeft: Radius.circular(28)
                      )
                    ),
                    child: Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(18,12,18,12),
                        child: Row(
                          children: [
                            Text(
                              "ID Card",
                              style: kInfoHeadingStyle.copyWith(
                                fontSize: 28,
                              ),
                            ),

                            SizedBox(width: 12,),

                            Icon(
                              FontAwesomeIcons.idCardClip,
                              color: thirdColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),

        // search

        // content

      ],

    );
  }
}