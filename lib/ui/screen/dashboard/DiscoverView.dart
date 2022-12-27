import 'package:flutter/material.dart';
import 'package:heal_and_go/data/result.dart';
import 'package:heal_and_go/ui/screen/dashboard/DestinationDetail.dart';
import 'package:heal_and_go/ui/components/DestinationCard.dart';
import 'package:heal_and_go/ui/screen/dashboard/DashboardViewModel.dart';
import 'package:heal_and_go/utils/DestinationInfo.dart';
import 'package:heal_and_go/ui/components/MultiSelectChip.dart';
import 'package:provider/provider.dart';
import 'package:supabase/supabase.dart';

class Discover extends StatefulWidget {
  const Discover({Key? key, required this.client}) : super(key: key);

  final SupabaseClient client;

  @override
  DiscoverState createState() {
    return DiscoverState();
  }
}

class DiscoverState extends State<Discover> {
  Map<String, String> filterList = {
    'All': "",
    'Beach': "Pantai",
    'Mountain': "Gunung",
    'Park': "Taman",
    'Temple': "Candi",
    'Waterfall': "Air",
    'Museum': "Museum",
    "Market": "Pasar"
  };

  TextEditingController keywords = TextEditingController();
  String choice = "";
  DashboardViewModel dashboardViewModel = DashboardViewModel();

  @override
  void initState() {
    super.initState();
    dashboardViewModel.discover(widget.client, "", "");
  }

  @override
  void dispose() {
    super.dispose();
    keywords.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ChangeNotifierProvider<DashboardViewModel>(
      create: (context) => dashboardViewModel,
      child: Padding(
          padding: const EdgeInsets.only(right: 30, left: 30, top: 40),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 20),
                width: double.infinity,
                child: const Text(
                  'Let\'s Go',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                    fontFamily: 'poppins',
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Flexible(
                child: TextField(
                  textAlignVertical: TextAlignVertical.bottom,
                  controller: keywords,
                  onSubmitted: (value) {
                    dashboardViewModel.discover(widget.client, value, choice);
                  },
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none),
                      hintText: 'Search',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontFamily: 'poppins',
                      ),
                      prefixIcon: const SizedBox(
                        width: 18,
                        child: Icon(Icons.search),
                      )),
                ),
              ),
              const SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: MultiSelectChip(
                  reportList: filterList.keys.toList(),
                  onSelectedChoice: (value) {
                    choice = filterList[value]!;
                    dashboardViewModel.discover(
                        widget.client, keywords.text, choice);
                    print(choice);
                  },
                ),
              ),
              const SizedBox(height: 10),
              Consumer<DashboardViewModel>(builder: (_, value, child) {
                if (value.destinations_discover.status == Status.LOADING) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (value.destinations_discover.status == Status.SUCCESS) {
                  if (value.destinations_discover.data!.isNotEmpty) {
                    return Expanded(
                      flex: 10,
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.8,
                        ),
                        itemBuilder: (context, index) {
                          return DestinationCard(
                            destinationinfo:
                                value.destinations_discover.data![index],
                            height: 300,
                            scale: 0.8,
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return DestinationDetail(
                                  destinationInfo:
                                      value.destinations_discover.data![index],
                                );
                              }));
                            },
                          );
                        },
                        itemCount: value.destinations_discover.data!.length,
                      ),
                    );
                  }
                }
                if (value.destinations_discover.status == Status.ERROR) {
                  return Center(
                      child: Text(value.destinations_discover.message!));
                }
                return const Center(child: Text("No Data Available"));
              }),
            ],
          )),
    ));
  }
}
