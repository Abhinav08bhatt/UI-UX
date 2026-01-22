import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_pages/Graphic_era/graphic_era_theme.dart';
import 'package:url_launcher/url_launcher.dart';


// main class
class GraphicEraHome extends StatelessWidget {
  const GraphicEraHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: graphicWhite,

      body: SafeArea(

// touchable screen
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
          },

// main class content
          child: _GraphicEraHomeContent()

        )
      ),

    );
  }
}

class _GraphicEraHomeContent extends StatelessWidget {
  const _GraphicEraHomeContent();

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      children: [
        
        // appbar
        _appbar(),
          
        // card
        _idStack(context),

        // search
        Padding(
          padding: const EdgeInsets.fromLTRB(16,20,16,4),
          child: TopSearchBar(),
        ),

        // content

      ],

    );
  }
}


// ---------------------------------------------------------- App Bar ----------------------------------------------------------

// appbar : logo
Widget _appbarImage() {
  return CircleAvatar(

// avatar properties
    radius: 28,
    backgroundColor: graphicWhite,

// logo image
    child: Image.asset(
      "assets/images/graphic-era-university-dehradun-logo.png",
      fit: BoxFit.contain,
    ),
  );
}

// appbar : content
Widget _appbarContent() {
// name + tagline + link to website
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [

// name + tagline
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

// name
          Row(
            children: [
              Text(
                "Graphic",
                style: kGraphicLogo.copyWith(color: Colors.red),
              ),
              Text(
                " Era",
                style: kGraphicLogo,
              ),
            ],
          ),

// tagline
          Text(
            "Deemed to be University",
            style: kTagsStyle.copyWith(fontSize: 14, letterSpacing: 0),
          ),
        ],
      ),

// link to website
      DecoratedBox(
        decoration: BoxDecoration(

// box properties
          color: graphicWhite,
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
          icon: const Icon(
            FontAwesomeIcons.link,
            color: primaryColor,
            size: 24,
          ),
        ),
      ),
    ],
  );
}

// App Bar
Widget _appbar() {
  return Padding(

// appbar padding
    padding: const EdgeInsets.fromLTRB(12, 0, 12, 10),

    child: Row(
      children: [

// college logo
        _appbarImage(),

        kW6,

// content + divider
        Expanded(
          child: Column(
            children: [

// content
              _appbarContent(),

// divider
              const Divider(
                height: 0,
                thickness: 2,
                color: primaryColor,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

// ---------------------------------------------------------- ID Stack ----------------------------------------------------------

// base Box
Widget _baseBox(){
  return DecoratedBox(
  
// box properties
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

// content
    child: SizedBox(
      height: 380,
    ),
  );
}

// student avatar
Widget _studentAvatar(){
  return CircleAvatar(
    radius: 80,
    backgroundImage: AssetImage("assets/images/profile_pic_4_50w.jpg"),
  );
}

// show ID button
Widget _showIDButton(){
  return DecoratedBox(

// box properties
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

// content : text + logo
    child: Padding(
      padding: const EdgeInsets.fromLTRB(18,12,18,12),
      child: Row(
        children: [
            
// content : text 
          Text(
            "Show ID",
            style: kInfoHeadingStyle.copyWith(
              fontSize: 20,
              height: 1.4
            ),
          ),
    
          SizedBox(width: 12,),
    
// content : logo 
          Icon(
            FontAwesomeIcons.idCardClip,
            color: thirdColor,
            size: 20,
          ),

        ],
      ),
    ),
  );
}

// Main Info : Name + Course + Year + Semester
Widget _mainInfo(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
  
// name 
      Text(
        "Abhinav Bhatt",
        style: kHeadingStyle.copyWith(
          fontSize: 24,
        ),
        maxLines: 1,             
        overflow: TextOverflow.ellipsis
      ),
      
// course
      Text(
        "BSc (H.) Computer Science",
        style: kSubHeadingStyle,         
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
  
// Year + Sem
      Row(
        children: [
          Text(
            "Year : ",
            style: kHeadingStyle,
          ),
          const Text(
            "1",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
  
          kW16,
  
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
  );
}

// Tile Structure
class InfoTile extends StatelessWidget {
// needed
  final String label;
  final String value;

  const InfoTile({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
// info heading
          Text(label, style: kInfoHeadingStyle),
      
          const Spacer(),

// info content
          Text(value, style: kInfoStyle),
        ],
      ),
    );
  }
}

// Academic Info 
class AcademicInfo extends StatelessWidget {
  const AcademicInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(

// box properties
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(28),
      ),

// content
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 14, 16, 10),
        child: Column(
          children: const [

// row 1
            InfoTile(
              label: "Official Email",
              value: "12345678@geu.ac.in",
            ),
          
            Divider(),

// row 2
            InfoTile(
              label: "Class Roll No.",
              value: "00",
            ),
        
            Divider(),

// row 3
            InfoTile(
              label: "Enroll No.",
              value: "GE-12345678",
            ),
        
            Divider(),

// row 4
            InfoTile(
              label: "University Roll No.",
              value: "1234567890",
            ),

            Divider(),

// row 5
            InfoTile(
              label: "Status",
              value: "Active",
            ),
          ],
        ),
      ),
    );
  }
}

// ID Stack
Widget _idStack(BuildContext context) {
  return Padding(

// screen padding
    padding: const EdgeInsets.fromLTRB(12,0,12,0),
    child: SizedBox(

// stack hight
      height: 442,
      child: Stack(
        children: [

// base Box
          Positioned(
// base box : position
            bottom: 0,
            left: 0,
            right: 0,
// base box : content
            child: _baseBox(),
          ),
          
// student avatar
          Positioned(
// student avatar : position
            top: 4,
            left: 14,
// student avatar : content
            child: _studentAvatar(),
          ),

// Show ID Button
          Positioned(

// Show ID Button : position
            top: 0,
            right: 0,

// Show ID Button 
            child: ElevatedButton(
// Show ID Button : logic 
              onPressed: () {},

// Show ID Button : properties
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(0),
                elevation: 0,
              ),

// Show ID Button : content
              child: _showIDButton()
            ),
          ),

// Main Info : Name + Course + Year + Semester
          Positioned(
            
// Main Info : position
            top: 72,
            left: 186,
            right: 16,

// Main Info : content
            child: _mainInfo(),
          ),

// Academic Section
            Positioned(

// Academic Section : position
              bottom: 16,
              left: 16,
              right: 16,

// Academic Section : content
              child: AcademicInfo(),
            ),


        ],
      ),
    ),
  );
}

// ---------------------------------------------------------- Search Bar ----------------------------------------------------------

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
    return TextField(
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
    );
  }
}