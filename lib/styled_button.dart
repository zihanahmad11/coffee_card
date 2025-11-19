import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StyledButton extends StatefulWidget {
  const StyledButton({
    super.key,
    required this.onPressed,
    required this.child,
  });
  final Widget child;
  final VoidCallback onPressed;

  @override
  State<StyledButton> createState() => _StyledButtonState();
}

class _StyledButtonState extends State<StyledButton> {
  double _scale = 1.0;

  void _onPointerDown(PointerDownEvent event) {
    SystemSound.play(SystemSoundType.click);
    HapticFeedback.lightImpact();
    setState(() {
      _scale = 0.9;
    });
  }

  void _onPointerUp(PointerUpEvent event) {
    setState(() {
      _scale = 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: _onPointerDown,
      onPointerUp: _onPointerUp,
      child: AnimatedScale(
        scale: _scale,
        duration: const Duration(milliseconds: 100),
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.brown[600],
            foregroundColor: Colors.white,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
          ),
          onPressed: widget.onPressed,
          child: widget.child,
        ),
      ),
    );
  }
}
