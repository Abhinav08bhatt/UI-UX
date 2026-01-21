import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_pages/WhatsApp/whatsapp_loading.dart';
import 'package:url_launcher/url_launcher.dart';

// ================== COLORS ==================

const Color kBgLight = Color(0xfff5f5f5);
const Color kBgDark = Color(0xff0b0c10);
const Color kCardBg = Color(0xfff5f5f5);
const Color kTextDark = Color(0xff282828);
const Color kWhite = Color(0xffffffff);

// ================== SPACING ==================

const double kSpace4 = 4;
const double kSpace6 = 6;
const double kSpace8 = 8;
const double kSpace12 = 12;
const double kSpace16 = 16;
const double kSpace20 = 20;
const double kSpace24 = 24;

// ================== RADIUS ==================

const double kRadius8 = 8;
const double kRadius10 = 10;
const double kRadius16 = 16;
const double kRadius20 = 20;
const double kRadius24 = 24;

// ================== TEXT STYLES ==================

final TextStyle kHeaderNameStyle = GoogleFonts.robotoFlex(
  fontSize: 20,
  fontWeight: FontWeight.w600,
  color: kBgDark,
);

final TextStyle kHeaderSubtitleStyle = GoogleFonts.robotoFlex(
  fontSize: 14,
  color: kBgDark,
);

final TextStyle kSectionTitleStyle = GoogleFonts.robotoFlex(
  fontSize: 25,
  fontWeight: FontWeight.w500,
  height: 1,
  color: kBgDark,
);

final TextStyle kMoreSectionTitleStyle = GoogleFonts.inter(
  fontSize: 24,
  fontWeight: FontWeight.w400,
);

final TextStyle kAppNameLargeStyle = GoogleFonts.robotoFlex(
  fontSize: 42,
  fontWeight: FontWeight.w600,
);

final TextStyle kCardLabelStyle = GoogleFonts.roboto(
  fontSize: 24,
  fontWeight: FontWeight.w500,
  letterSpacing: 0,
  color: kTextDark,
);

final TextStyle kColorHexStyle = GoogleFonts.robotoFlex(
  fontSize: 14,
  color: kTextDark,
);

// ================== DECORATIONS ==================

BoxDecoration kCardDecoration({required Color shadowColor}) {
  return BoxDecoration(
    color: kCardBg,
    borderRadius: BorderRadius.circular(kRadius16),
    boxShadow: [
      BoxShadow(
        color: shadowColor.withValues(alpha : 0.10),
        blurRadius: 8,
        spreadRadius: 2,
      ),
    ],
  );
}

BoxDecoration kBottomSheetDecoration(Color shadowColor) {
  return BoxDecoration(
    color: kCardBg,
    borderRadius: const BorderRadius.only(
      topLeft: Radius.circular(kRadius20),
      topRight: Radius.circular(kRadius20),
    ),
    boxShadow: [
      BoxShadow(
        color: shadowColor.withValues(alpha : 0.10),
        blurRadius: 8,
        spreadRadius: 1,
        offset: const Offset(0, -6),
      ),
    ],
  );
}

// ================== COMMON WIDGETS ==================

const SizedBox kH4 = SizedBox(height: kSpace4);
const SizedBox kH6 = SizedBox(height: kSpace6);
const SizedBox kH8 = SizedBox(height: kSpace8);
const SizedBox kH16 = SizedBox(height: kSpace16);
const SizedBox kH20 = SizedBox(height: kSpace20);

const SizedBox kW4 = SizedBox(width: kSpace4);
const SizedBox kW6 = SizedBox(width: kSpace6);
const SizedBox kW8 = SizedBox(width: kSpace8);
const SizedBox kW16 = SizedBox(width: kSpace16);

// ================== HELPERS ==================

Future<void> openExternalLink(String url) async {
  await launchUrl(
    Uri.parse(url),
    mode: LaunchMode.externalApplication,
  );
}

void pushPage(BuildContext context, Widget page) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (_) => page),
  );
}


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kBgLight,
      body: SafeArea(
        child: _HomeContent(),
      ),
    );
  }
}

/* ---------------- HOME CONTENT ---------------- */

class _HomeContent extends StatelessWidget {
  const _HomeContent();

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: const [
        _HomeHeader(),
        _SelectedTitle(),
        Top3PagesScroller(),
        kH20,
        _MoreTitle(),
        kH6,
        MorePagesSection(),
      ],
    );
  }
}

/* ---------------- HEADER ---------------- */

class _HomeHeader extends StatelessWidget {
  const _HomeHeader();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 4, 8, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Abhinav', style: kHeaderNameStyle),
              Text(
                'Frontend & UI Engineering',
                style: kHeaderSubtitleStyle.copyWith(
                  color: kBgDark.withValues(alpha : 0.6),
                ),
              ),
            ],
          ),
          const _ProfileAvatar(),
        ],
      ),
    );
  }
}

/* ---------------- AVATAR ---------------- */

class _ProfileAvatar extends StatelessWidget {
  const _ProfileAvatar();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => openExternalLink(
        'https://github.com/Abhinav08bhatt',
      ),
      child: const Padding(
        padding: EdgeInsets.all(8),
        child: CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage('assets/images/logo.jpeg'),
        ),
      ),
    );
  }
}

/* ---------------- TITLES ---------------- */

class _SelectedTitle extends StatelessWidget {
  const _SelectedTitle();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      child: Text(
        'Selected UI/UX Redesigns',
        style: kSectionTitleStyle,
      ),
    );
  }
}

class _MoreTitle extends StatelessWidget {
  const _MoreTitle();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: Text(
        'More UI/UX Redesigns',
        style: kMoreSectionTitleStyle,
      ),
    );
  }
}

class Top3PagesScroller extends StatelessWidget {
  const Top3PagesScroller({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double pageWidth = constraints.maxWidth < 400
            ? constraints.maxWidth
            : constraints.maxWidth.clamp(400.0, 600.0);

        return SizedBox(
          height: 320,
          child: ListView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            children: [
              const SizedBox(width: kSpace16),

              SizedBox(
                width: pageWidth,
                child: Top3Pages(
                  appName: 'WhatsApp',
                  appIcon: const FaIcon(
                    FontAwesomeIcons.whatsapp,
                    size: 40,
                    color: Color(0xff29BE63),
                  ),
                  font: 'Roboto',
                  primaryTextStyle: GoogleFonts.roboto(fontSize: 16),
                  primaryColor: const Color(0xff29BE63),
                  primaryColorHex: '#29BE63',
                  secondaryColor: const Color(0xff1D6A3E),
                  secondaryColorHex: '#1D6A3E',
                  thirdColor: const Color(0xffDCFFD4),
                  thirdColorHex: '#DCFFD4',
                  pageName: 'whatsapp',
                  gitFolderName: 'github-repo-link',
                  destinationPage: const WhatsappLoading(),
                  gitFolderLink:
                      'https://github.com/Abhinav08bhatt/UI-UX/tree/main/lib/WhatsApp',
                ),
              ),

              const SizedBox(width: kSpace16),

              SizedBox(
                width: pageWidth,
                child: Top3Pages(
                  appName: 'Airbnb',
                  appIcon: const FaIcon(
                    FontAwesomeIcons.airbnb,
                    size: 40,
                    color: Color(0xFFFF5A5F),
                  ),
                  font: 'Inter',
                  primaryTextStyle: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  primaryColor: const Color(0xFFFF5A5F),
                  primaryColorHex: '#FF5A5F',
                  secondaryColor: const Color(0xFFF7F7F7),
                  secondaryColorHex: '#767676',
                  thirdColor: const Color(0xFF767676),
                  thirdColorHex: '#767676',
                  pageName: 'airbnb',
                  gitFolderName: 'airbnb',
                  destinationPage: const Placeholder(),
                  gitFolderLink:
                      'https://github.com/Abhinav08bhatt/UI-UX/tree/main/lib/Airbnb',
                ),
              ),

              const SizedBox(width: kSpace16),

              SizedBox(
                width: pageWidth,
                child: Top3Pages(
                  appName: 'Spotify',
                  appIcon: const FaIcon(
                    FontAwesomeIcons.spotify,
                    size: 40,
                    color: Color(0xFF1DB954),
                  ),
                  font: 'Inter',
                  primaryTextStyle: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  primaryColor: const Color(0xFF1DB954),
                  primaryColorHex: '#1DB954',
                  secondaryColor: const Color(0xFF191414),
                  secondaryColorHex: '#191414',
                  thirdColor: const Color(0xFF2A2A2A),
                  thirdColorHex: '#2A2A2A',
                  pageName: 'spotify',
                  gitFolderName: 'spotify',
                  destinationPage: const Placeholder(),
                  gitFolderLink:
                      'https://github.com/Abhinav08bhatt/UI-UX/tree/main/lib/Spotify',
                ),
              ),

              const SizedBox(width: kSpace16),
            ],
          ),
        );
      },
    );
  }
}

class Top3Pages extends StatelessWidget {
  final String appName;
  final String font;
  final String primaryColorHex;
  final String secondaryColorHex;
  final String thirdColorHex;
  final String pageName;
  final String gitFolderName;

  final Color primaryColor;
  final Color secondaryColor;
  final Color thirdColor;

  final Icon appIcon;
  final TextStyle primaryTextStyle;
  final String gitFolderLink;
  final Widget destinationPage;

  const Top3Pages({
    super.key,
    required this.appName,
    required this.appIcon,
    required this.font,
    required this.primaryTextStyle,
    required this.primaryColor,
    required this.primaryColorHex,
    required this.secondaryColor,
    required this.secondaryColorHex,
    required this.thirdColor,
    required this.thirdColorHex,
    required this.pageName,
    required this.gitFolderName,
    required this.gitFolderLink,
    required this.destinationPage,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: double.infinity,
      child: Padding(
        // padding: const EdgeInsets.symmetric(horizontal: kSpace8),
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: Row(
          children: [
            _previewCard(),
            kW8,
            Expanded(child: _details(context)),
          ],
        ),
      ),
    );
  }

  /* ---------------- LEFT PREVIEW ---------------- */

  Widget _previewCard() {
    return Padding(
      padding: const EdgeInsets.all(kSpace6),
      child: DecoratedBox(
        decoration: kCardDecoration(shadowColor: Colors.black),
        child: const SizedBox(
          width: 136,
          height: double.infinity,
        ),
      ),
    );
  }

  /* ---------------- RIGHT SIDE ---------------- */

  Widget _details(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: kSpace4),
        _header(),
        Expanded(child: _bottomCard(context)),
      ],
    );
  }

  /* ---------------- HEADER ---------------- */

  Widget _header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          appName,
          style: kAppNameLargeStyle.copyWith(color: primaryColor),
        ),
        Padding(
          padding: const EdgeInsets.only(right: kSpace4),
          child: appIcon,
        ),
      ],
    );
  }

  /* ---------------- BOTTOM CARD ---------------- */

  Widget _bottomCard(BuildContext context) {
    return Padding(
      // padding: const EdgeInsets.symmetric(vertical: kSpace6),
      padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
      child: DecoratedBox(
        decoration: kBottomSheetDecoration(primaryColor),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _fontRow(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: Divider(height: 0,indent: 8,endIndent: 8,),
            ),
            _colorsSection(),
            const Spacer(),
            _actions(context),
          ],
        ),
      ),
    );
  }

  /* ---------------- FONT ROW ---------------- */

  Widget _fontRow() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 12, 12, 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Font', style: kCardLabelStyle),
          Text(
            font,
            style: primaryTextStyle.copyWith(
              color: kTextDark.withValues(alpha : 0.8),
            ),
          ),
        ],
      ),
    );
  }

  /* ---------------- COLORS ---------------- */

  Widget _colorsSection() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 8, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Colors', style: kCardLabelStyle),
          kH8,
          Wrap(
            spacing: kSpace8,
            runSpacing: kSpace8,
            children: [
              _colorChip(primaryColor, primaryColorHex),
              _colorChip(secondaryColor, secondaryColorHex),
              _colorChip(thirdColor, thirdColorHex),
            ],
          ),
        ],
      ),
    );
  }

  Widget _colorChip(Color color, String hex) {
    return GestureDetector(
      onTap: () {},
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: kCardBg,
          borderRadius: BorderRadius.circular(kRadius8),
          boxShadow: [
            BoxShadow(
              color: color.withValues(alpha : 0.10),
              blurRadius: 8,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: kSpace8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 8, 4, 8),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const SizedBox(height: 14, width: 14),
                ),
              ),
              Text(
                hex,
                style: kColorHexStyle.copyWith(
                  color: kTextDark.withValues(alpha : 0.8),
                ),
              ),
              kW4,
              const Icon(Icons.copy, size: 14),
            ],
          ),
        ),
      ),
    );
  }

  /* ---------------- ACTIONS ---------------- */

  Widget _actions(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kSpace8),
      child: Row(
        children: [
          kW8,
          Expanded(
            child: ElevatedButton(
              onPressed: () => pushPage(context, destinationPage),
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor,
                overlayColor: kCardBg,
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: const ContinuousRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(kRadius24),
                  ),
                ),
              ),
              child: const Text(
                'View Redesign',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: kWhite,
                ),
              ),
            ),
          ),
          kW8,
          GestureDetector(
            onTap: () => openExternalLink(gitFolderLink),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: const Color(0xff1877D7).withValues(alpha : 0.90),
                border: Border.all(
                  color: const Color(0xff1877D7).withValues(alpha : 0.60),
                ),
                borderRadius: BorderRadius.circular(kRadius10),
              ),
              child: const Padding(
                padding: EdgeInsets.all(14),
                child: FaIcon(
                  FontAwesomeIcons.code,
                  color: kWhite,
                  size: 18,
                ),
              ),
            ),
          ),
          kW8,
        ],
      ),
    );
  }
}

class MorePagesSection extends StatelessWidget {
  const MorePagesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        MorePages(
          appName: 'Twitter',
          subtitle: 'Dark theme · Feed layout',
          appIcon: FaIcon(
            FontAwesomeIcons.twitter,
            size: 16,
            color: Color(0xff1DA1F2),
          ),
          primaryColor: Color(0xff1DA1F2),
          destinationPage: Placeholder(),
          gitFolderLink:
              'https://github.com/Abhinav08bhatt/UI-UX/tree/main/lib/WhatsApp',
        ),

        MorePages(
          appName: 'Instagram',
          subtitle: 'Dark theme · Stories & Feed',
          appIcon: FaIcon(
            FontAwesomeIcons.instagram,
            size: 16,
            color: Color(0xffE1306C),
          ),
          primaryColor: Color(0xffE1306C),
          destinationPage: Placeholder(),
          gitFolderLink:
              'https://github.com/Abhinav08bhatt/UI-UX/tree/main/lib/Instagram',
        ),

        MorePages(
          appName: 'WhatsApp',
          subtitle: 'Dark theme · Chat layout',
          appIcon: FaIcon(
            FontAwesomeIcons.whatsapp,
            size: 16,
            color: Color(0xff25D366),
          ),
          primaryColor: Color(0xff25D366),
          destinationPage: Placeholder(),
          gitFolderLink:
              'https://github.com/Abhinav08bhatt/UI-UX/tree/main/lib/WhatsApp',
        ),

        MorePages(
          appName: 'YouTube',
          subtitle: 'Dark theme · Video feed',
          appIcon: FaIcon(
            FontAwesomeIcons.youtube,
            size: 16,
            color: Color(0xffFF0000),
          ),
          primaryColor: Color(0xffFF0000),
          destinationPage: Placeholder(),
          gitFolderLink:
              'https://github.com/Abhinav08bhatt/UI-UX/tree/main/lib/YouTube',
        ),

        MorePages(
          appName: 'Spotify',
          subtitle: 'Dark theme · Music library',
          appIcon: FaIcon(
            FontAwesomeIcons.spotify,
            size: 16,
            color: Color(0xff1DB954),
          ),
          primaryColor: Color(0xff1DB954),
          destinationPage: Placeholder(),
          gitFolderLink:
              'https://github.com/Abhinav08bhatt/UI-UX/tree/main/lib/Spotify',
        ),

        MorePages(
          appName: 'LinkedIn',
          subtitle: 'Dark theme · Professional feed',
          appIcon: FaIcon(
            FontAwesomeIcons.linkedin,
            size: 16,
            color: Color(0xff0A66C2),
          ),
          primaryColor: Color(0xff0A66C2),
          destinationPage: Placeholder(),
          gitFolderLink:
              'https://github.com/Abhinav08bhatt/UI-UX/tree/main/lib/LinkedIn',
        ),
      ],
    );
  }
}


class MorePages extends StatelessWidget {
  final String appName;
  final String subtitle;
  final Icon appIcon;
  final String gitFolderLink;
  final Color primaryColor;
  final Widget destinationPage;

  const MorePages({
    super.key,
    required this.appName,
    required this.subtitle,
    required this.appIcon,
    required this.primaryColor,
    required this.gitFolderLink,
    required this.destinationPage,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => pushPage(context, destinationPage),
      splashColor: primaryColor,
      title: Row(
        children: [
          Text(
            appName,
            style: TextStyle(fontSize: 20),
            // style: kMoreSectionTitleStyle.copyWith(
            //   fontWeight: FontWeight.w900,
            // ),
          ),
          kW6,
          appIcon,
        ],
      ),
      subtitle: Text(
        subtitle,
        style: GoogleFonts.roboto(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios_rounded,
        size: 18,
      ),
    );
  }
}
