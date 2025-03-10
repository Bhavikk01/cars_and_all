import 'package:flutter/material.dart';

class AppTransitionBuilder {
  /// Slide Transition from the right
  static Widget slideTransitionRoute(
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child,
      ) {
    const begin = Offset(1.0, 0.0); // Start from the right
    const end = Offset.zero;
    const curve = Curves.ease;

    var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

    return SlideTransition(
      position: animation.drive(tween),
      child: child,
    );
  }

  /// Bottom Transition - Slide from the bottom
  static Widget bottomTransitionRoute(
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child,
      ) {
    const begin = Offset(0.0, 1.0); // Start from the bottom
    const end = Offset.zero;
    const curve = Curves.easeInOut;

    var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

    return SlideTransition(
      position: animation.drive(tween),
      child: child,
    );
  }

  /// Fade Transition
  static Widget fadeTransitionRoute(
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child,
      ) {
    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }

  /// Scale Transition
  static Widget scaleTransitionRoute(
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child,
      ) {
    return ScaleTransition(
      scale: animation,
      child: child,
    );
  }

  /// Rotate Transition
  static Widget rotateTransitionRoute(
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child,
      ) {
    return RotationTransition(
      turns: animation,
      child: child,
    );
  }

  /// Size Transition (Vertical)
  static Widget sizeTransitionRoute(
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child,
      ) {
    return SizeTransition(
      sizeFactor: animation,
      axis: Axis.vertical,
      child: child,
    );
  }

  /// Combined Slide and Fade Transition
  static Widget slideFadeTransitionRoute(
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child,
      ) {
    const begin = Offset(0.0, 1.0); // Slide from the bottom
    const end = Offset.zero;
    const curve = Curves.easeInOut;

    var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

    return SlideTransition(
      position: animation.drive(tween),
      child: FadeTransition(
        opacity: animation,
        child: child,
      ),
    );
  }
}
