import 'package:flutter/material.dart';

class ButtonLong extends StatelessWidget {
  final Color bg_color;
  final VoidCallback? onPressed;
  final String content;

  ButtonLong(
      {Key? key,
        required this.bg_color,
        required this.onPressed,
        required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: bg_color,
          minimumSize: const Size.fromHeight(60),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          )),
      child: Text(
        content,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.0,
          fontFamily: "poppins",
        ),
      )
    );
  }
}

class ButtonShort extends StatelessWidget {
  final Color bg_color;
  final VoidCallback? onPressed;
  final Widget child;

  ButtonShort(
      {Key? key,
        required this.bg_color,
        required this.onPressed,
        required this.child
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      // onPressed: () {
      //   _controller.nextPage(
      //     duration: const Duration(milliseconds: 400),
      //     curve: Curves.bounceIn,
      //   );
      // },
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: bg_color,
          minimumSize: const Size(60, 60),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          )
      ),
      // child: const Icon(Icons.arrow_forward_ios_rounded, size: 18),
      child: child,
    );
  }
}