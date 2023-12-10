import 'package:flutter/material.dart';

class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;

  FadeAnimation(this.delay, this.child);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(Duration(milliseconds: (500 * delay).round())),
      builder: (context, snapshot) {
        return snapshot.connectionState == ConnectionState.done
            ? AnimatedBuilder(
          animation: Tween<double>(begin: 0, end: 1).animate(
            CurvedAnimation(
              curve: Curves.easeOut,
              parent: ModalRoute.of(context)!.animation!,
            ),
          ),
          builder: (context, child) {
            return Opacity(
              opacity: snapshot.connectionState == ConnectionState.done
                  ? snapshot.data as double
                  : 0,
              child: child,
            );
          },
          child: child,
        )
            : Container();
      },
    );
  }
}
