import 'package:flutter/material.dart';

class ArchethicScrollbar extends StatefulWidget {
  const ArchethicScrollbar({
    required this.child,
    super.key,
    this.scrollPhysics,
    this.thumbVisibility = true,
  });

  final Widget child;
  final ScrollPhysics? scrollPhysics;
  final bool thumbVisibility;

  @override
  State<ArchethicScrollbar> createState() => _ArchethicScrollbarState();
}

class _ArchethicScrollbarState extends State<ArchethicScrollbar> {
  late ScrollController scrollController;

  @override
  void initState() {
    scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(final BuildContext context) {
    return Scrollbar(
      controller: scrollController,
      thumbVisibility: widget.thumbVisibility,
      child: SingleChildScrollView(
        physics: widget.scrollPhysics,
        controller: scrollController,
        child: widget.child,
      ),
    );
  }
}
