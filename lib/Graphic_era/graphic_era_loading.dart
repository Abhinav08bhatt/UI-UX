import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_pages/Graphic_era/graphic_era_main.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> openExternalLink(String url) async {
  await launchUrl(
    Uri.parse(url),
    mode: LaunchMode.externalApplication,
  );
}

class GraphicLoading extends StatelessWidget {
  const GraphicLoading({super.key});

  static const Color primaryColor = Color(0xff29BE63);
  static const Color secondaryColor = Color(0xff1D6A3E);
  static const Color thirdColor = Color(0xffDCFFD4);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: thirdColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 4, 12, 0),
          child: ListView(
            children: const [
              _Header(),
              SizedBox(height: 12),
              _InfoCard(
                title: 'The Clutter',
                description:
                    'The non whatsapp things that whatsapp added in recent times.',
                reverse: false,
              ),
              _InfoCard(
                title: 'The Clutter',
                description:
                    'the fact that buttons takes to mismatch and unexpected status section while look wired already.',
                reverse: true,
              ),
              _InfoCard(
                title: 'The Clutter',
                description:
                    'the chat section...hold for actions (but the actions are hidden) so we will make it like apple messages...blur with info',
                reverse: false,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const _BottomActions(),
    );
  }
}

/* ---------------- HEADER ---------------- */

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Graphic Era',
          style: GoogleFonts.inter(
            fontSize: 32,
            height: 1,
            letterSpacing: -1,
            color: GraphicLoading.primaryColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          'Interface Redesigned',
          style: GoogleFonts.inter(fontSize: 14.5),
        ),
      ],
    );
  }
}

/* ---------------- INFO CARD ---------------- */

class _InfoCard extends StatelessWidget {
  final String title;
  final String description;
  final bool reverse;

  const _InfoCard({
    required this.title,
    required this.description,
    required this.reverse,
  });

  @override
  Widget build(BuildContext context) {
    final textSection = Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.inter(
              fontSize: 24,
              color: GraphicLoading.secondaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            description,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );

    final imageSection = Expanded(
      child: AspectRatio(
        aspectRatio: 1 / 2,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );

    return SizedBox(
      height: 260,
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: reverse
                ? [imageSection, const SizedBox(width: 12), textSection]
                : [textSection, const SizedBox(width: 12), imageSection],
          ),
        ),
      ),
    );
  }
}

/* ---------------- BOTTOM ACTIONS ---------------- */

class _BottomActions extends StatelessWidget {
  const _BottomActions();

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: GraphicLoading.thirdColor,
      height: 80,
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: () =>
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const GraphicEraMain())),
              style: ElevatedButton.styleFrom(
                backgroundColor: GraphicLoading.primaryColor,
                overlayColor: const Color(0xfff5f5f5),
                padding: const EdgeInsets.symmetric(vertical: 14.5),
                shape: const ContinuousRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                ),
              ),
              child: Text(
                'Open Redesign',
                style: GoogleFonts.robotoFlex(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: GraphicLoading.thirdColor,
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          GestureDetector(
            onTap: () => openExternalLink(
              'https://github.com/Abhinav08bhatt/UI-UX/tree/main/lib/WhatsApp',
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: const Color(0xff1877D7).withValues(alpha: 0.9),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Padding(
                padding: EdgeInsets.all(17),
                child: FaIcon(
                  FontAwesomeIcons.code,
                  color: Color(0xfff5f5f5),
                  size: 18,
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
        ],
      ),
    );
  }
}
