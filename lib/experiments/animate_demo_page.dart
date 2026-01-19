import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class AnimateDemoPage extends StatelessWidget {
  const AnimateDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: const Text('Flutter Animate'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // 🔹 Hero Title
            Text(
              "Motion brings life",
              style: Theme.of(context).textTheme.headlineMedium,
            )
                .animate()
                .fadeIn(duration: 500.ms)
                .slideX(begin: -0.2),

            const SizedBox(height: 10),

            // 🔹 Subtitle
            Text(
              "Subtle animations improve UX\nwithout distracting users.",
              style: Theme.of(context).textTheme.bodyMedium,
            )
                .animate(delay: 200.ms)
                .fadeIn()
                .slideY(begin: 0.2),

            const SizedBox(height: 40),

            // 🔹 Animated Card
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 20,
                    color: Colors.black.withOpacity(0.08),
                  ),
                ],
              ),
              child: Row(
                children: [
                  const Icon(Icons.auto_awesome, size: 28),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      "Cards can fade, slide, and scale\nfor premium feel.",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                ],
              ),
            )
                .animate(delay: 400.ms)
                .fadeIn()
                .scale(begin: const Offset(0.95, 0.95)),

            const Spacer(),

            // 🔹 Call To Action Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                child: const Text("Primary Action"),
              )
                  .animate()
                  .shakeX(duration: 700.ms)
                  .then()
                  .fade(),
            ),

          ],
        ),
      ),
    );
  }
}
