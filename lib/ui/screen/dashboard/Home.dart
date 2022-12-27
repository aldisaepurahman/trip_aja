import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:heal_and_go/data/result.dart';
import 'package:heal_and_go/ui/screen/dashboard/DestinationDetail.dart';
import 'package:heal_and_go/ui/components/DestinationCard.dart';
import 'package:heal_and_go/ui/components/Jumbotron.dart';
import 'package:heal_and_go/ui/screen/dashboard/DashboardViewModel.dart';
import 'package:heal_and_go/utils/DestinationInfo.dart';
import 'package:provider/provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Home extends StatefulWidget {
  const Home({Key? key, required this.client}) : super(key: key);

  final SupabaseClient client;

  @override
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  DashboardViewModel dashboardViewModel = DashboardViewModel();

  @override
  void initState() {
    super.initState();
    dashboardViewModel.getAllDestinations(widget.client);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          body: ChangeNotifierProvider<DashboardViewModel>(
            create: (context) => dashboardViewModel,
            child: SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Jumbotron(client: widget.client),
                    const Padding(
                      padding: EdgeInsets.only(left: 40.0, right: 40),
                      child: Text(
                        "Top Pick Destination For You",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: "poppins",
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                    Consumer<DashboardViewModel>(
                        builder: (_, value, child) {
                          if (value.top_destination.status == Status.LOADING) {
                            return const Center(child: CircularProgressIndicator());
                          }
                          if (value.top_destination.status == Status.ERROR) {
                            return Center(child: Text(value.top_destination.message!));
                          }
                          if (value.top_destination.status == Status.SUCCESS) {
                            return Container(
                                height: 400,
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                  child: ListView.separated(
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return DestinationCard(
                                          destinationinfo: value.top_destination.data![index],
                                          height: 300,
                                          onTap: () {
                                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                                              return DestinationDetail(
                                                destinationInfo: value.top_destination.data![index],
                                              );
                                            } ));
                                          });
                                    },
                                    separatorBuilder: (context, index) {
                                      return const Divider();
                                    },
                                    itemCount: value.top_destination.data!.length,
                                  ),
                                )
                            );
                          }
                          return const Center(child: Text("No Data Available"));
                        },
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        onWillPop: () async {
          SystemNavigator.pop();
          return false;
        },
    );
  }
}