import 'package:flutter/material.dart';
import 'package:ui_pages/Graphic_era/graphic_era_attendance.dart';
import 'package:ui_pages/Graphic_era/graphic_era_exam.dart';
import 'package:ui_pages/Graphic_era/graphic_era_home.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_pages/Graphic_era/graphic_era_theme.dart';



class GraphicEraMain extends StatefulWidget{
  const GraphicEraMain({super.key});

  @override
  State<GraphicEraMain> createState() => _GraphicEraMain();
}

// extending the stateful widget
class _GraphicEraMain extends State<GraphicEraMain>{

// page index for navigation
  int index = 0;  

  @override
  Widget build(BuildContext context) {
    
    // navigation pages
    final pages = const [
      GraphicEraHome(),
      GraphicEraAttendance(),
      GraphicEraExam(),
    ];

    return Scaffold(
      backgroundColor: graphicWhite,
      
      
      body: pages[index],

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
          iconSize: 24,
          showSelectedLabels: true,
          selectedItemColor: primaryColor,
          selectedLabelStyle: kTagsStyle.copyWith(fontSize: 18),
          showUnselectedLabels: true,
          unselectedItemColor: graphicBlack.withValues(alpha: 0.50),
          unselectedLabelStyle: kTagsStyle.copyWith(fontSize: 16),

          items: [

// home button
            const BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.idCard),
                label: "Profile",
            ),
        
// status/update button
            const BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.calendar),
              label: "Attendance",
            ),
        
// groups button
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.rectangleList),
              label: "Exam",
            ),

          ],
          
// navigation item end
        ),
      ),
// navigation-bar end


    );
  }
}


