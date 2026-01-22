import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_pages/Graphic_era/graphic_era_theme.dart';
import 'package:url_launcher/url_launcher.dart';

class GraphicEraAttendance extends StatelessWidget {
  const GraphicEraAttendance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: graphicWhite,

      body: ListView(
        physics: const BouncingScrollPhysics(),
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        children: [

          // appbar
          _appBar(),

          // overall attendance
          // ---> no clue about this part
          _overallAttendance(),

          // info tag
          Center(
            child: Text(
              "* click the section for detailed information",
              style: kTagsStyle.copyWith(fontSize: 14),
            )
          ),

          // attendance table
          AttendanceTableView(),

        
        ],
      ),
    );
  }
}

// 
Widget _overallAttendance(){
  return Padding(
    padding: const EdgeInsets.fromLTRB(16,10,14,0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      
      children: [

        DateProgressLine(),

        DateLabelsRow(),

        kH8,

        OverallAttendanceCalculation(totalAttendance: 76.99,),

        kH16,

      ],
    ),
  );
}

class OverallAttendanceCalculation extends StatelessWidget {

  final double totalAttendance;

  const OverallAttendanceCalculation({
    super.key,
    required this.totalAttendance,
  });

  @override
  Widget build(BuildContext context) {

    Color attendanceColor;
    if(totalAttendance>=75){
      attendanceColor = Colors.green;
    }
    else{
      attendanceColor = Colors.redAccent;
    }

    return Row(
      children: [
    
        const Text(
          "Total Average Attendance : ",
          style: TextStyle(
            fontSize: 26,
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),

        Text(
          "${totalAttendance} %",
          style: TextStyle(
            color: attendanceColor,
            fontSize: 30,
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        )

      ],
    );
  }
} 

class DateProgressLine extends StatelessWidget {
  const DateProgressLine({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Line
          CustomPaint(
            size: Size(double.infinity, 2),
            painter: DashedLinePainter(),
          ),

          // Left dot
          Positioned(
            left: 10,
            child: _Dot(),
          ),

          // Right dot
          Positioned(
            right: 10,
            child: _Dot(),
          ),
        ],
      ),
    );
  }
}

class _Dot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 14,
      height: 14,
      decoration: const BoxDecoration(
        color: thirdColor,
        shape: BoxShape.circle,
      ),
    );
  }
}

class DashedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = thirdColor
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    final startX = 20.0;
    final endX = size.width - 20.0;
    final centerY = size.height / 2;

    // Left solid
    canvas.drawLine(
      Offset(startX, centerY),
      Offset(startX + 40, centerY),
      paint,
    );

    // Right solid
    canvas.drawLine(
      Offset(endX - 40, centerY),
      Offset(endX, centerY),
      paint,
    );

    // Dashed middle
    const dashWidth = 6;
    const dashSpace = 6;

    double x = startX + 40;

    while (x < endX - 40) {
      canvas.drawLine(
        Offset(x, centerY),
        Offset(x + dashWidth, centerY),
        paint,
      );
      x += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class DateLabelsRow extends StatelessWidget {
  const DateLabelsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          '5 Jan\n2026',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14,
            height: 0,
            fontWeight: FontWeight.w500
          ),
        ),
        Text(
          '23 Jan\n2026',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14,
            height: 0,
            fontWeight: FontWeight.w500
          ),
        ),
      ],
    );
  }
}




// App Bar
Widget _appBar(){
  return Padding(
    padding: const EdgeInsets.fromLTRB(16, 8, 12, 0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
// attendance text + link icon
      children: [
    
// attendance text + divider
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kH6,
// attendance text 
              Text(
                "Attendance",
                style: kGraphicLogo.copyWith(fontSize: 30,height: 1.2,letterSpacing: 0),
              ),
// divider
              const Divider(
                thickness: 2,
                color: primaryColor,
              ),
            ],
          ),
        ),
    
        kW4,

// link to website
      DecoratedBox(
        decoration: BoxDecoration(

// box properties
          // color: graphicWhite,
          color: primaryColor,
          borderRadius: BorderRadius.circular(32),
        ),

// icon
        child: IconButton(

// navigation link
          onPressed: () {
            launchUrl(
              Uri.parse('https://student.geu.ac.in'),
              mode: LaunchMode.externalApplication,
            );
          },

// icon properties
          padding: const EdgeInsets.all(12),
          highlightColor: secondaryColor,

// icon content
          icon: Padding(
            padding: const EdgeInsets.fromLTRB(2, 2, 4, 2),
            child: const Icon(
              FontAwesomeIcons.link,
              color: graphicWhite,
              // color: primaryColor,
              size: 20,
            ),
          ),
        ),
      ),
    
      ],
    ),
  );
}

// table heading
Widget _attendanceTableHeading() {
  return DecoratedBox(

// box properties
    decoration: BoxDecoration(
      color: thirdColor,
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(28),
        topLeft: Radius.circular(28),
      )
    ),

// content
    child :Padding(
      padding: EdgeInsetsGeometry.fromLTRB(16,18,16,16),
// subject + attendance
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

// subject
          Text(
            "Subject",
            style: kInfoHeadingStyle.copyWith(color: Colors.white),
          ),
// attendance
          Text(
            "Attendance",
            style: kInfoHeadingStyle.copyWith(color: Colors.white),
          )
   
        ],
      ),
    ),
  );
}

// table tile content
class AttendanceSubjectWiseTile extends StatelessWidget {
// needed
  final String subject;
  final double attendance;

  const AttendanceSubjectWiseTile({
    super.key,
    required this.subject,
    required this.attendance,
  });

  @override
  Widget build(BuildContext context) {

// if attendance is above 75 : color = green : else : color = red
    Color attendanceColor;
    if(attendance>=75){
      attendanceColor = Colors.green;
    }
    else{
      attendanceColor = Colors.redAccent;
    }

// info heading + info content
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

// info heading
          Expanded(
            flex: 2,
            child: Text(
              subject, 
              style: kInfoHeadingStyle,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
      
// info content
          Expanded(
            child: Text(
              "${attendance} %", 
              textAlign: TextAlign.right,
              style: TextStyle(
                color: attendanceColor,
                fontSize: 20,
                fontWeight: FontWeight.w600
              )
            )
          ),
        ],
      ),
    );
  }
}

// Attendance table content
class AttendanceSubjectWise extends StatelessWidget {
  const AttendanceSubjectWise({super.key});

  @override
  Widget build(BuildContext context) {

// table content
    return DecoratedBox(
      
// decoration
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(28),
          bottomLeft: Radius.circular(28),
        )
      ),
    
// content
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 10),
        child: Column(
          children: const [

// row 1
            AttendanceSubjectWiseTile(subject: "Subject 1", attendance: 54),

            Divider(),

// row 2
            AttendanceSubjectWiseTile(subject: "Subject 2", attendance: 45),

            Divider(),

// row 3
            AttendanceSubjectWiseTile(subject: "Subject 3", attendance: 75.24),

            Divider(),

// row 4
            AttendanceSubjectWiseTile(subject: "Subject 4", attendance: 80),

            Divider(),

// row 5
            AttendanceSubjectWiseTile(subject: "Subject 5", attendance: 54),

            Divider(),

// row 6
            AttendanceSubjectWiseTile(subject: "Subject 6", attendance: 76),

            Divider(),

// row 7
            AttendanceSubjectWiseTile(subject: "Subject 7", attendance: 88),

          ]
        )
      )

    );
  }
}

// Attendance Table
class AttendanceTableView extends StatelessWidget {
  const AttendanceTableView({super.key});

  @override
  Widget build(BuildContext context) {

// content
    return Padding(
      padding: EdgeInsetsGeometry.fromLTRB(18, 10, 18, 0),
      
      child: Column(
        children: [
      
// table heading
        _attendanceTableHeading(),
      
// table content
        AttendanceSubjectWise(),
      
        ],
      ),

    );
  }
}