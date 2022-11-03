import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:heal_and_go/ui/Home.dart';
import 'package:heal_and_go/utils/OnboardingModel.dart';

class OnboardingView extends StatefulWidget {
  @override
  _OnboardingViewState createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  int currentIndex = 0;
  final PageController _controller = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.all(40),
                  child:
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        contents[i].image
                      ),
                      Text(
                        contents[i].title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          fontFamily: "poppins",
                          height: 1.20,
                        ),
                      ),
                      SizedBox(
                          height: 10
                      ),
                      Text(
                        contents[i].description,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                          fontFamily: "poppins",
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                contents.length,
                    (index) => buildDot(index, context),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(40),
            child: Column(
              children: [
                Container(
                    alignment: Alignment.center,
                    child:
                    currentIndex == contents.length - 1 ?
                    ElevatedButton(
                        onPressed: (){
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (_) => Home(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            minimumSize: const Size.fromHeight(70),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )
                        ),
                        child: Text(
                          'SIGN UP',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.0,
                            fontFamily: "poppins",
                          ),
                        )
                    )
                    :
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: (){
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (_) => Home(),
                              ),
                            );
                          },
                          child: Text(
                            'Skip',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: (){
                            _controller.nextPage(
                              duration: Duration(milliseconds: 400),
                              curve: Curves.bounceIn,
                            );
                          },
                          child: Icon(Icons.arrow_forward_ios_rounded),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Theme.of(context).primaryColor,
                              minimumSize: Size(70, 70),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18),
                              )
                          ),
                        ),
                      ],
                    )
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 55 : 30,
      margin: EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index ? Theme.of(context).primaryColor : Colors.grey,
      ),
    );
  }
}