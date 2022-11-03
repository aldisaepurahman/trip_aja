import 'package:flutter/material.dart';
import 'package:heal_and_go/data/response/RecommendationDataItem.dart';

class DestinationDetail extends StatelessWidget {
  final RecommendationDataItem destinationInfo;

  const DestinationDetail({Key? key, required this.destinationInfo})
      : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              Image.network(
                destinationInfo.image,
                fit: BoxFit.fill,
                height: 450,
                width: double.infinity,
              ),
              Align(
                alignment: FractionalOffset.bottomCenter,
                child: Container(
                  margin: EdgeInsets.only(top: 410),
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            destinationInfo.name,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontFamily: "poppins",
                              fontSize: 24,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Description",
                            style: TextStyle(
                              fontFamily: "poppins",
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            destinationInfo.description,
                            style: TextStyle(
                              fontFamily: "poppins",
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    side: BorderSide(color: Colors.blue)),
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.blue,
                                padding: const EdgeInsets.all(15),
                              ),
                              child: Icon(Icons.location_pin) ,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    side: const BorderSide(color: Colors.blue),
                                  ),
                                  padding:
                                  const EdgeInsets.symmetric(vertical: 18.5),
                                ),
                                child: const Text("Book now"),
                              )
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: AppBar(
                    centerTitle: true,
                    leading: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back),
                    ),
                    title: Text(
                      "Detail"
                    ),
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                  ),
              )
            ],
          ),
        ),
      ),
    );
  }
}