import 'package:flutter/material.dart';

import 'curved_edges.dart';

class JCurvedEdgesWidget extends StatelessWidget {
  const JCurvedEdgesWidget({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: JCustomCurvedEdges(),
      child: child,
    );
  }
}
