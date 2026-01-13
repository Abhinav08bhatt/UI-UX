import 'package:flutter/material.dart';


class InnerShadow extends StatelessWidget {
  final Widget child;
  final Color color;
  final double blur;
  final Offset offset;

  const InnerShadow({super.key, 
    required this.child,
    this.color = Colors.black54,
    this.blur = 10,
    this.offset = const Offset(2, 2),
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _InnerShadowPainter(
        color: color,
        blur: blur,
        offset: offset,
      ),
      child: child,
    );
  }
}

class _InnerShadowPainter extends CustomPainter {
  final Color color;
  final double blur;
  final Offset offset;

  _InnerShadowPainter({
    required this.color,
    required this.blur,
    required this.offset,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset.zero & size;

    canvas.saveLayer(rect, Paint());

    // Draw shadow
    final shadowPaint = Paint()
      ..color = color
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, blur);

    canvas.translate(offset.dx, offset.dy);
    canvas.drawRect(rect, shadowPaint);

    // Cut out center
    final clearPaint = Paint()..blendMode = BlendMode.dstOut;
    canvas.drawRect(rect.deflate(blur), clearPaint);

    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}