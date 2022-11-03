import 'package:flutter/material.dart';
import 'package:heal_and_go/info/DestinationInfo.dart';
import 'package:heal_and_go/components/DestinationDetail.dart';

class DestinationCard extends StatelessWidget {
  final DestinationInfo destinationinfo;

  const DestinationCard({Key? key, required this.destinationinfo})
      : super(key: key);

  @override
  Widget build(BuildContext context){
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DestinationDetail(
              destinationInfo: destinationinfo,
          );
        } ));
      },
      child: Container(
        width: 250,
        height: 300,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              destinationinfo.url_citra,
            ),
            fit: BoxFit.cover
          ),
          borderRadius: BorderRadius.circular(10)
        ),
        alignment: Alignment.bottomCenter,
        padding: EdgeInsets.only(bottom: 10),

        child: Container(
          width: 230,
          height: 50,
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, 5.0),
                blurRadius: 10.0
              )
            ]
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                destinationinfo.nama,
                style: TextStyle(
                  fontFamily: "poppins",
                  fontSize: 14,
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                destinationinfo.lokasi,
                style: const TextStyle(
                  fontSize: 9,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}