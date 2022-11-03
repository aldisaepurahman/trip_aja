import 'package:flutter/material.dart';

class Profil_Button extends StatelessWidget {
  final IconData ikon;
  final String menu;
  //final Function aksi;
  final Color color;

  const Profil_Button(
      {Key? key,
      required this.ikon,
      required this.menu,
      //required this.aksi,
      this.color = Colors.black})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
          child: Container(
              margin: EdgeInsets.only(bottom: 15),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    primary: Colors.white,
                    onPrimary: color,
                    padding: const EdgeInsets.all(20),
                  ),
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
                            Text(menu)
                          ],
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 15,
                        )
                      ],
                    ),
                  ),
                  onPressed: () {
                    print("You pressed Icon Elevated Button");
                  })))
    ]);
  }
}
