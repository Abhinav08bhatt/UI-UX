import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_pages/home.dart';

void main() {
  runApp(const UiStyles());
}

class UiStyles extends StatelessWidget {
  const UiStyles({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
    );
  }
}

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final isWide = constraints.maxWidth > 600;

          return isWide
              ? const Row(
                  children: [
                    Expanded(child: HeroSection()),
                    Expanded(child: IntroSection()),
                  ],
                )
              : const Column(
                  children: [
                    Expanded(child: HeroSection()),
                    Expanded(child: IntroSection()),
                  ],
                );
        },
      ),
    );
  }
}

/* ---------------- HERO ---------------- */

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  static const _darkText = Color(0xff282828);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 20),

            Text(
              'UI / UX',
              style: GoogleFonts.inter(
                color: _darkText,
                fontWeight: FontWeight.w900,
                fontSize: 94,
                letterSpacing: -2,
                height: 1,
              ),
            ),

            Text(
              'Redesigning Interfaces',
              style: GoogleFonts.inter(
                color: _darkText.withValues(alpha: 0.5),
                fontWeight: FontWeight.w500,
                fontSize: 16,
                letterSpacing: 4,
                wordSpacing: 4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/* ---------------- INTRO ---------------- */

class IntroSection extends StatelessWidget {
  const IntroSection({super.key});

  static const _bg = Color(0xff282828);
  static const _lightText = Color(0xfff5f5f5);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: _bg,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(32, 32, 32, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pages',
              style: GoogleFonts.inter(
                color: _lightText,
                fontWeight: FontWeight.w700,
                fontSize: 40,
                letterSpacing: -1,
                height: 1,
              ),
            ),

            const SizedBox(height: 8),

            Text(
              'A collection of interface redesigns.\n'
              'Focused on clarity and usability.\n'
              'Exploring what could be improved and WHY.',
              style: GoogleFonts.inter(
                color: _lightText.withValues(alpha: 0.5),
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),

            const Spacer(),

            Center(
              child: SizedBox(
                height: 52,
                width: 174,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const HomePage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Enter workspace',
                        style: GoogleFonts.inter(
                          color: const Color(0xff282828),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(width: 4),
                      const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 16,
                        color: Color(0xff282828),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Center(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'star us on github : Abhinav08bhatt',
                  style: GoogleFonts.inter(
                    color: _lightText.withValues(alpha: 0.32),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 4),
          ],
        ),
      ),
    );
  }
}
