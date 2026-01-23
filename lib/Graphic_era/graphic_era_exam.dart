import 'dart:ffi';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:ui_pages/Graphic_era/graphic_era_theme.dart';
import 'package:url_launcher/url_launcher.dart';

class GraphicEraExam extends StatelessWidget {
  const GraphicEraExam({super.key});

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

// main card

          // ExamMainCard(
          //   phase: ExamPhase.before,
          //   type: ExamType.midSem,
          // ),

          ExamMainCard(
            phase: ExamPhase.during,
            type: ExamType.midSem,
          ),

          // ExamMainCard(
          //   phase: ExamPhase.after,
          //   type: ExamType.midSem,
          //   resultStatus: ResultStatus.waiting,
          // ),

          // ExamMainCard(
          //   phase: ExamPhase.after,
          //   type: ExamType.midSem,
          //   resultStatus: ResultStatus.announced,
          // ),


// secondary section

          kH16,

          Divider(
            indent: 20,
            endIndent: 20,
          ),

          SecondarySection(),


        ],
      ),
    );
  }
}

// App Bar
Widget _appBar(){
  return Padding(
    padding: const EdgeInsets.fromLTRB(16, 8, 12, 0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
// exam text + link icon
      children: [
    
// exam text + divider
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kH6,
// exam text 
              Text(
                "Exam",
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


enum ExamPhase {
  before,
  during,
  after,
}

enum ExamType {
  midSem,
  endSem,
}


// main card
class ExamMainCard extends StatelessWidget {
  final ExamPhase phase;
  final ExamType type;
  final ResultStatus? resultStatus;

  const ExamMainCard({
    super.key,
    required this.phase,
    required this.type,
    this.resultStatus,
  });

  Widget _currentStatus() {
    switch (phase) {
      case ExamPhase.before:
        return BeforeExamClass(examType: type);

      case ExamPhase.during:
        return DuringExamClass(examType: type);

      case ExamPhase.after:
        assert(
          resultStatus != null,
          'resultStatus must be provided when phase is after',
        );
        return AfterExamClass(
          examType: type,
          resultStatus: resultStatus!,
        );
    }
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(28),
          boxShadow: [
            BoxShadow(
              color: primaryColor.withValues(alpha: 0.20),
              spreadRadius: 4,
              blurRadius: 12,
            ),
          ],
        ),
        child: _currentStatus(),
      ),
    );
  }
}

class BeforeExamClass extends StatelessWidget {
  final ExamType examType;

  const BeforeExamClass({
    super.key,
    required this.examType,
  });

  String get _title {
    switch (examType) {
      case ExamType.midSem:
        return "Mid Semester Exam";
      case ExamType.endSem:
        return "End Semester Exam";
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 460,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              _title,
              style: kInfoHeadingStyle,
            ),

            kH4,

            const Divider(
              indent: 12,
              endIndent: 12,
            ),

            kH16,

            Text(
              "Expected exam period",
              style: kInfoHeadingStyle.copyWith(
                fontSize: 18,
                letterSpacing: 0,
              ),
            ),

            Text(
              "24 Feb 2026  -  18 Mar 2026",
              style: kSubHeadingStyle.copyWith(
                fontSize: 16,
                letterSpacing: 0,
              ),
            ),

            const Spacer(),


            Padding(
              padding: const EdgeInsets.all(46.0),
              child: RichText(
                textAlign: TextAlign.center,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                text: TextSpan(
                  style: kSubHeadingStyle.copyWith(color: Colors.black,),
                  children: const [
                    TextSpan(
                      text: "Admit card will be available approximately ",
                    ),
                    TextSpan(
                      text: "10 days",
                      style: TextStyle(color: Colors.red),
                    ),
                    TextSpan(
                      text: " before the exam.",
                    ),
                  ],
                ),
              ),
            ),

            const Spacer(),

            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: secondaryColor,
                overlayColor: primaryColor,
                shadowColor: primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(12),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 12, 8, 12),
                child: Text(
                  "View Academic Calendar",
                  style: kSubHeadingStyle.copyWith(color: thirdColor),
                  maxLines: 1,
                  overflow: TextOverflow.fade,
                ),
              ),
            ),

            SizedBox(height: 12,),

            const Text("Last updates : 23 Jan 2026"),
          ],
        ),
      ),
    );
  }
}

class DuringExamClass extends StatelessWidget {
  final ExamType examType;

  const DuringExamClass({
    super.key,
    required this.examType,
  });

  String get _title {
    switch (examType) {
      case ExamType.midSem:
        return "Mid Semester Exam";
      case ExamType.endSem:
        return "End Semester Exam";
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 460,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              _title,
              style: kInfoHeadingStyle,
            ),

            kH4,

            const Divider(
              indent: 12,
              endIndent: 12,
            ),

            const Spacer(),

            Text(
              "24 Feb 2026  -  18 Mar 2026",
              style: kSubHeadingStyle.copyWith(
                fontSize: 16,
                letterSpacing: 0,
              ),
            ),

            kH16,

            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                elevation: 4,
                backgroundColor: thirdColor,
                overlayColor: Colors.white,
                shadowColor: secondaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(12),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(12, 16, 12, 16),
                child: Text(
                  "Download Admit Card",
                  style: kHeadingStyle.copyWith(color: Colors.white),
                  maxLines: 1,
                  overflow: TextOverflow.fade,
                ),
              ),
            ),

            const Spacer(),

            const Text("Last updates : 23 Jan 2026"),
          ],
        ),
      ),
    );
  }
}

enum ResultStatus {
  waiting,
  announced,
}

class AfterExamClass extends StatelessWidget {
  final ExamType examType;
  final ResultStatus resultStatus;

  const AfterExamClass({
    super.key,
    required this.examType,
    required this.resultStatus,
  });

  String get _title {
    switch (examType) {
      case ExamType.midSem:
        return "Mid Semester Exam";
      case ExamType.endSem:
        return "End Semester Exam";
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 460,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              _title,
              style: kInfoHeadingStyle,
            ),

            kH4,

            const Divider(indent: 12, endIndent: 12),

            const Spacer(),

            if (resultStatus == ResultStatus.waiting)
              _resultWaiting(),

            if (resultStatus == ResultStatus.announced)
              _resultAnnounced(),

            SizedBox(height: 60,),

            const Text("Last updates : 23 Jan 2026"),
          ],
        ),
      ),
    );
  }
}

Widget _resultAnnounced() {
  return Column(
    children: [

      Text(
        "Result published",
        style: kInfoHeadingStyle,
        textAlign: TextAlign.center,
      ),

      SizedBox(height: 100,),
      
      ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          elevation: 4,
          backgroundColor: thirdColor,
          overlayColor: Colors.white,
          shadowColor: secondaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(12),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 16, 12, 16),
          child: Text(
            "View Result",
            style: kHeadingStyle.copyWith(color: Colors.white),
            maxLines: 1,
            overflow: TextOverflow.fade,
          ),
        ),
      ),

    ],
    
  );
}

Widget _resultWaiting() {
  return Column(
    children: [

      Text(
        "Examinations completed\nResults will be published soon.",
        style: kInfoHeadingStyle,
        textAlign: TextAlign.center,
      ),

      SizedBox(height: 100,),
      
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          
          Text(
            "You will be notified\nonce the result\nis announced",
            style: kSubHeadingStyle.copyWith(height: 0),
            textAlign: TextAlign.right,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),

          kW16,

          IconButton(
            onPressed: () {}, 

            style: IconButton.styleFrom(
              backgroundColor: primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(8)
              ),
              shadowColor: primaryColor,
              highlightColor: thirdColor,
              padding: EdgeInsets.all(12)
            ),
          
            icon: Icon(
              Icons.notifications_active_rounded,
              size: 24,
              color: Colors.white,
            )
          
          )

        ],
      )


    ],

    
  );
}

class SecondarySection extends StatelessWidget{
  const SecondarySection({super.key});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      
          Text(
            " Other exam records",
            style: kInfoHeadingStyle,
          ),

          kH8,
      
          Column(
            children: [
                
              ListTile(
                onTap: () {},
          
                shape:RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.only(
                  topLeft: Radius.circular(28),
                  topRight: Radius.circular(28),
                )),
                tileColor: secondaryColor,
                splashColor: primaryColor.withValues(alpha: 0.40),
                
                title: Text(
                  "Academic Calendar",
                  style: kSubHeadingStyle,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 18,
                ),
                
              ),

              ListTile(
                onTap: () {},
          
                // shape:RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.only(
                //   topLeft: Radius.circular(28),
                //   topRight: Radius.circular(28),
                // )),
                tileColor: secondaryColor,
                splashColor: primaryColor.withValues(alpha: 0.40),
                
                title: Text(
                  "Previous Results",
                  style: kSubHeadingStyle,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 18,
                ),
                
              ),

              ListTile(
                onTap: () {},
          
                shape:RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.only(
                  bottomLeft: Radius.circular(28),
                  bottomRight: Radius.circular(28),
                )),
                tileColor: secondaryColor,
                splashColor: primaryColor.withValues(alpha: 0.40),
                
                title: Text(
                  "Previous Admit Cards",
                  style: kSubHeadingStyle,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 18,
                ),
                
              )

            ],
          )
      
        ],
      ),
    );
  }
}