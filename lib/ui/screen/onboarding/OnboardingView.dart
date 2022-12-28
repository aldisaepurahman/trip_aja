import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:heal_and_go/ui/screen/auth/Register.dart';
import 'package:heal_and_go/ui/components/Color.dart';
import 'package:heal_and_go/ui/components/Button.dart';
import 'package:heal_and_go/utils/OnboardingModel.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key, required this.client});

  final SupabaseClient client;

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  int currentIndex = 0;
  final PageController _controller = PageController(initialPage: 0);
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<void> _saveSession() async {
    final SharedPreferences prefs = await _prefs;
    prefs.setBool("onboarding", true);
  }

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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(contents[i].image),
                      Text(
                        contents[i].title,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          fontFamily: "poppins",
                          height: 1.20,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        contents[i].description,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          color: greyFontColor,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              contents.length,
              (index) => buildDot(index, context),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              children: [
                Container(
                    alignment: Alignment.center,
                    child: currentIndex == contents.length - 1 ?
                    ButtonLong(
                      bg_color: blue,
                      onPressed: () {
                        _saveSession();
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (_) => Register(client: widget.client),
                          ),
                        );
                      },
                      content: "SIGN UP NOW"
                    )
                    : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            _saveSession();
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (_) => Register(client: widget.client),
                              ),
                            );
                          },
                          child: Text(
                            'Skip',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "poppins",
                              color: blue,
                              letterSpacing: 0.5,
                            ),
                          ),
                        ),
                        ButtonShort(
                          bg_color: blue,
                          child: Icon(Icons.arrow_forward_ios_rounded, size: 18),
                          onPressed: () {
                            _controller.nextPage(
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.bounceIn,
                            );
                          },
                        )
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
      width: currentIndex == index ? 45 : 10,
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index
            ? blue
            : greyFontColor,
      ),
    );
  }
}
