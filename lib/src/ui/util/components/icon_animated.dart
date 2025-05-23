import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class IconAnimated extends ConsumerStatefulWidget {
  const IconAnimated({
    required this.icon,
    required this.color,
    this.iconSize = 20,
    this.tooltip = '',
    super.key,
  });

  final IconData icon;
  final double iconSize;
  final Color color;
  final String tooltip;

  @override
  ConsumerState<IconAnimated> createState() => IconAnimatedState();
}

class IconAnimatedState extends ConsumerState<IconAnimated> {
  var _over = false;

  @override
  Widget build(final BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _over = true;
        });
      },
      onExit: (_) {
        setState(() {
          _over = false;
        });
      },
      child:
          widget.tooltip.isEmpty
              ? Icon(
                widget.icon,
                size: widget.iconSize,
                color: widget.color,
              ).animate(target: _over ? 1 : 0).scaleXY(end: 1.3)
              : Tooltip(
                message: widget.tooltip,
                child: Icon(
                  widget.icon,
                  size: widget.iconSize,
                  color: widget.color,
                ).animate(target: _over ? 1 : 0).scaleXY(end: 1.3),
              ),
    );
  }
}
