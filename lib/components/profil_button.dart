import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Profil_Button extends StatelessWidget {
  final IconData ikon;
  final String menu;
  final VoidCallback? aksi;
  final Color color;

  const Profil_Button(
      {Key? key,
      required this.ikon,
      required this.menu,
      this.aksi,
      this.color = Colors.black})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
          child: Container(
              margin: const EdgeInsets.only(bottom: 15),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    backgroundColor: Colors.white,
                    foregroundColor: color,
                    padding: const EdgeInsets.all(20),
                  ),
                  onPressed: aksi ?? () {
                    Fluttertoast.showToast(
                        msg: "This feature is not implemented yet",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.black,
                        textColor: Colors.white,
                        fontSize: 12.0);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(ikon),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(menu, style: const TextStyle(fontFamily: "poppins", fontWeight: FontWeight.bold))
                          ],
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 15,
                        )
                      ],
                    ),
                  ))
          )
      )
    ]);
  }
}
