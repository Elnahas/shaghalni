import 'package:flutter/material.dart';

class ScrollControllerListener extends StatefulWidget {
  final Widget child;
  final VoidCallback onEndOfScroll;
  final ScrollController scrollController;

  const ScrollControllerListener({
    Key? key,
    required this.child,
    required this.onEndOfScroll,
    required this.scrollController,
  }) : super(key: key);

  @override
  _ScrollControllerListenerState createState() => _ScrollControllerListenerState();
}

class _ScrollControllerListenerState extends State<ScrollControllerListener> {
  @override
  void initState() {
    super.initState();
    widget.scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    widget.scrollController.removeListener(_onScroll);
    super.dispose();
  }

  void _onScroll() {
    if (widget.scrollController.position.atEdge) {
      if (widget.scrollController.position.pixels != 0) {
        widget.onEndOfScroll();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}