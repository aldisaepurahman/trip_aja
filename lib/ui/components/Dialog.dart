import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class DialogDoubleButton extends StatelessWidget {
  final String title;
  final String content;
  final String path_image;
  final String buttonLeft;
  final String buttonRight;
  final VoidCallback? onPressedButtonLeft;
  final VoidCallback? onPressedButtonRight;

  const DialogDoubleButton(
      {super.key,
      required this.title,
      required this.content,
      required this.path_image,
      required this.buttonLeft,
      required this.buttonRight,
      required this.onPressedButtonLeft,
      required this.onPressedButtonRight});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Container(
        padding: const EdgeInsets.all(20),
        width: 320,
        height: 350,
        child: Column(
          children: [
            Expanded(
                child: Center(
                    child: Lottie.asset(path_image,
                        repeat: true, animate: true, reverse: false))),
            const SizedBox(height: 25),
            Text(
              textAlign: TextAlign.center,
              title,
              style: const TextStyle(
                  fontSize: 16,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            Text(
              textAlign: TextAlign.center,
              content,
              style: const TextStyle(fontSize: 13, fontFamily: "Poppins"),
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                TextButton(
                    onPressed: onPressedButtonLeft,
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        padding: const EdgeInsets.all(20)),
                    child: Text(buttonLeft,
                        style: const TextStyle(
                            color: Color(0xff5f5fff), fontFamily: "Poppins"))),
                ElevatedButton(
                  onPressed: onPressedButtonRight,
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff5f5fff),
                      padding: const EdgeInsets.all(20)),
                  child: Text(
                    buttonRight,
                    style:
                        const TextStyle(color: Colors.white, fontFamily: "Poppins"),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class LoadingDialog extends StatelessWidget {
  final String path_image;

  const LoadingDialog({
    super.key,
    required this.path_image
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Container(
        padding: EdgeInsets.all(10),
        height: 60,
        child: Column(
          children: [
            Expanded(
                child: Center(
                    child: Lottie.asset(path_image,
                        repeat: true, animate: true, reverse: false)))
          ],
        ),
      ),
    );
  }
}

class DialogNoButton extends StatelessWidget {
  final String content;
  final String path_image;

  const DialogNoButton({
    super.key,
    required this.content,
    required this.path_image
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Container(
        width: 150,
        padding: EdgeInsets.all(50),
        height: 360,
        child: Column(
          children: [
            Expanded(
                child: Center(
                    child: Lottie.asset(path_image,
                        repeat: true, animate: true, reverse: false))),
            const SizedBox(height: 35),
            Text(
              textAlign: TextAlign.center,
              content,
              style: const TextStyle(
                  fontSize: 16,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold),
            )
            /*Visibility(
              visible: (content.isNotEmpty) ? true : false,
                child: const SizedBox(height: 35)
            ),
            Visibility(
                visible: (content.isNotEmpty) ? true : false,
                child: Text(
                  textAlign: TextAlign.center,
                  content,
                  style: const TextStyle(
                      fontSize: 16,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold),
                )
            ),*/
          ],
        ),
      ),
    );
  }
}
