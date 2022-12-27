import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:heal_and_go/data/response/QuestionnaireReq.dart';
import 'package:heal_and_go/ui/Navigations.dart';
import 'package:heal_and_go/ui/components/Dialog.dart';
import 'package:heal_and_go/ui/screen/questionnaire/QuestionnaireViewModel.dart';
import 'package:heal_and_go/ui/screen/recommendation/Recommendation.dart';
import 'package:heal_and_go/utils/QuestionItem.dart';
import 'package:provider/provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Questionnaire extends StatefulWidget {
  const Questionnaire({super.key, required this.client});

  final SupabaseClient client;

  _QuestionnaireState createState() => _QuestionnaireState();
}

class _QuestionnaireState extends State<Questionnaire>
    with SingleTickerProviderStateMixin {
  late Animation<double> _progressAnim;
  late AnimationController _progressAnimController;

  final _controller = PageController();
  static const _duration = Duration(milliseconds: 300);
  static const _curve = Curves.ease;

  double growStepWidth = 0.0;
  double beginWidth = 0.0;
  double endWidth = 0.0;
  int currentPage = 0;
  int totalPages = question.length;
  QuestionnaireViewModel questionnaireViewModel = QuestionnaireViewModel();

  @override
  void initState() {
    super.initState();

    _progressAnimController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );

    _progressAnim = Tween<double>(begin: beginWidth, end: endWidth)
        .animate(_progressAnimController);

    _setProgressAnim(0, 1);
  }

  _setProgressAnim(double maxWidth, int pageIndex) {
    setState(() {
      currentPage = pageIndex;
      growStepWidth = maxWidth / totalPages;
      beginWidth = growStepWidth * (pageIndex - 1);
      endWidth = growStepWidth * pageIndex;

      _progressAnim = Tween<double>(begin: beginWidth, end: endWidth)
          .animate(_progressAnimController);
    });

    _progressAnimController.forward();
  }

  void submitWarningDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogDoubleButton(
          title: "Whoa! Take it easy",
          content: "If you are sure for your life choices, you can click the submit button below 😊",
          path_image: "assets/images/questionmark.json",
          buttonLeft: "Cancel",
          buttonRight: "Submit",
          onPressedButtonLeft: () {
            Navigator.of(context).pop();
          },
          onPressedButtonRight: () {
            submitQuestionnaire();
            Future.delayed(const Duration(seconds: 2), () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => Recommendation(client: widget.client)));
            });
          },
        );
      },
    );
  }

  void backWarningDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return DialogDoubleButton(
              title: "Hey! Stop right there",
              content: "Do you really want to do this? Just a reminder your answer will be lost if you go back!",
              path_image: "assets/images/caution.json",
              buttonLeft: "No",
              buttonRight: "Yes",
              onPressedButtonLeft: () {
                Navigator.of(context).pop();
              },
              onPressedButtonRight: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => Navigations(client: widget.client)));
              },
          );
        },
    );
  }

  void submitQuestionnaire() {
    QuestionnaireReq request = QuestionnaireReq();
    request.member = question[0].choices.indexWhere((element) => element.contains(question[0].groupValue)) / 4.0;
    request.anak = question[1].groupValue[0] ? 1.0 : 0.0;
    request.remaja = question[1].groupValue[1] ? 1.0 : 0.0;
    request.dewasa = question[1].groupValue[2] ? 1.0 : 0.0;
    request.pertengahan = question[1].groupValue[3] ? 1.0 : 0.0;
    request.lansia = question[1].groupValue[4] ? 1.0 : 0.0;
    request.museum = question[2].groupValue[0] ? 1.0 : 0.0;
    request.petualang = question[2].groupValue[1] ? 1.0 : 0.0;
    request.pemandangan = question[2].groupValue[2] ? 1.0 : 0.0;
    request.selfie = question[2].groupValue[3] ? 1.0 : 0.0;
    request.festival = question[2].groupValue[4] ? 1.0 : 0.0;
    request.foto = question[2].groupValue[5] ? 1.0 : 0.0;
    request.jalan = question[2].groupValue[6] ? 1.0 : 0.0;
    request.berbelanja = question[2].groupValue[7] ? 1.0 : 0.0;
    request.sport = question[3].choices.indexWhere((element) => element.contains(question[3].groupValue)).toDouble();
    request.days = question[4].choices.indexWhere((element) => element.contains(question[4].groupValue)) / 4.0;
    request.time = question[5].choices.indexWhere((element) => element.contains(question[5].groupValue)) / 3.0;
    request.gender = question[6].choices.indexWhere((element) => element.contains(question[6].groupValue)).toDouble();
    request.price = question[7].choices.indexWhere((element) => element.contains(question[7].groupValue)) / 3.0;

    questionnaireViewModel.sendQuestionnaire(widget.client, request);
  }

  @override
  void dispose() {
    super.dispose();
    question.forEach((quest) {
      if (quest.multiple_choice) {
        quest.groupValue.forEach((pg) {
          pg = false;
        });
      }
      else {
        quest.groupValue = "";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var maxWidth = MediaQuery
        .of(context)
        .size
        .width - 48;

    return WillPopScope(
        child: Scaffold(
          backgroundColor: const Color(0xff5f5fff),
          body: ChangeNotifierProvider<QuestionnaireViewModel>(
            create: (context) => questionnaireViewModel,
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 16, left: 24, right: 24),
                  height: 120.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Center(
                        child: Text(
                          "Questionnaire",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Text(
                          "Question $currentPage / $totalPages",
                          style:
                          const TextStyle(
                              fontFamily: "Poppins", color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Container(
                          color: Colors.transparent,
                          child: Row(
                            children: <Widget>[
                              AnimatedProgressBar(
                                animation: _progressAnim,
                              ),
                              Expanded(
                                child: Container(
                                  height: 6.0,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      color: Colors.white
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                    padding: const EdgeInsets.only(top: 20.0, bottom: 24.0, left: 16.0, right: 16.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white
                    ),
                    constraints: BoxConstraints(
                        maxHeight: MediaQuery.of(context).size.height + 50
                    ),
                    child: PageView.builder(
                      controller: _controller,
                      itemCount: totalPages,
                      itemBuilder: (context, index) {
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Text(
                              "Select your answer",
                              style: TextStyle(
                                  color: Colors.grey, fontFamily: "Poppins", fontSize: 12.0),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: Text(
                                question[index].question,
                                style: const TextStyle(
                                    fontFamily: "Poppins", fontWeight: FontWeight.bold),
                              ),
                            ),
                            for (var i = 0; i < question[index].choices.length; i++)
                              if (question[index].multiple_choice)
                                Padding(
                                    padding: const EdgeInsets.only(top: 12.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10.0),
                                          border: Border.all(color: Colors.black45, width: 2)
                                      ),
                                      child: CheckboxListTile(
                                        controlAffinity: ListTileControlAffinity.leading,
                                        title: Text(
                                          question[index].choices[i],
                                          style: const TextStyle(
                                              fontFamily: "Poppins", color: Colors.grey, fontSize: 13.0),
                                        ),
                                        selected: question[index].choices[i] == question[index].groupValue[i],
                                        value: question[index].groupValue[i],
                                        onChanged: (value) {
                                          setState(() {
                                            question[index].groupValue[i] = !question[index].groupValue[i];
                                          });
                                        },
                                        activeColor: Colors.deepOrange,
                                      ),
                                    )
                                )
                              else
                                Padding(
                                    padding: const EdgeInsets.only(top: 12.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10.0),
                                          border: Border.all(color: Colors.black45, width: 2)
                                      ),
                                      child: RadioListTile(
                                        title: Text(
                                          question[index].choices[i],
                                          style:
                                          const TextStyle(fontFamily: "Poppins", color: Colors.grey, fontSize: 14.0),
                                        ),
                                        selected: question[index].groupValue == question[index].choices[i],
                                        value: question[index].choices[i],
                                        groupValue: question[index].groupValue,
                                        onChanged: (value) {
                                          setState(() {
                                            question[index].groupValue = value;
                                          });
                                        },
                                        activeColor: Colors.deepOrange,
                                      ),
                                    )
                                ),
                            Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment: (currentPage == 1)
                                      ? MainAxisAlignment.end
                                      : MainAxisAlignment.spaceBetween,
                                  children: [
                                    if (currentPage > 1) OutlinedButton(
                                      onPressed: () {
                                        _controller.previousPage(
                                            duration: _duration, curve: _curve);
                                      },
                                      style: ButtonStyle(
                                          backgroundColor: MaterialStateProperty.all(Colors.white),
                                          side: MaterialStateProperty.all(
                                              const BorderSide(color: Color(0xff5f5fff))
                                          )
                                      ),
                                      child: const Text(
                                        "Previous",
                                        style: TextStyle(
                                            color: Color(0xff5f5fff),
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ),
                                    ElevatedButton(
                                        onPressed: () {
                                          (currentPage < totalPages)
                                              ? _controller.nextPage(duration: _duration, curve: _curve)
                                              : submitWarningDialog();
                                        },
                                        child: Text(
                                          (currentPage < totalPages)
                                              ? "Next"
                                              : "Finish",
                                          style: const TextStyle(
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.bold
                                          ),
                                        )
                                    )
                                  ],
                                )
                            )
                          ],
                        );
                        // return _pages[index % totalPages];
                      },
                      onPageChanged: (i) {
                        _progressAnimController.reset();
                        _setProgressAnim(maxWidth, i + 1);
                      },
                    )
                )
              ],
            ),
          ),
        ),
        onWillPop: () async {
          (currentPage > 1)
              ? _controller.previousPage(duration: _duration, curve: _curve)
              : backWarningDialog();
          return false;
        },
    );
  }
}

class AnimatedProgressBar extends AnimatedWidget {
  const AnimatedProgressBar({Key? key, required Animation<double> animation})
      : super(key: key, listenable: animation);

  Widget build(BuildContext context) {
    final Animation<double> animation = listenable as Animation<double>;
    return Container(
      height: 6.0,
      width: animation.value,
      decoration: const BoxDecoration(color: Colors.orange),
    );
  }
}