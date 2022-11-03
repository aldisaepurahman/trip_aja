import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:heal_and_go/ui/recommendation/Recommendation.dart';
import 'package:heal_and_go/utils/QuestionItem.dart';

class Questionnaire extends StatefulWidget {
  const Questionnaire({super.key});

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

  void dialogue() {}

  @override
  Widget build(BuildContext context) {
    var maxWidth = MediaQuery
        .of(context)
        .size
        .width - 48;

    return Scaffold(
      backgroundColor: const Color(0xff5f5fff),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
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
            Expanded(
                child: SingleChildScrollView(
                    child: Container(
                      padding: const EdgeInsets.only(top: 4.0, bottom: 20.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white
                      ),
                      constraints: BoxConstraints(
                          maxHeight: MediaQuery.of(context).size.height + 70
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: PageView.builder(
                                controller: _controller,
                                itemCount: totalPages,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
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
                                                      value: question[index].groupValue[i],
                                                      onChanged: (value) {
                                                        setState(() {
                                                          question[index].groupValue[i] = !question[index].groupValue[i];
                                                        });
                                                      },

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
                                                    value: question[index].choices[i],
                                                    groupValue: question[index].groupValue,
                                                    onChanged: (value) {
                                                      setState(() {
                                                        question[index].groupValue = value;
                                                      });
                                                    },
                                                  ),
                                                )
                                            )
                                      ],
                                    ),
                                  );
                                  // return _pages[index % totalPages];
                                },
                                onPageChanged: (i) {
                                  _progressAnimController.reset();
                                  _setProgressAnim(maxWidth, i + 1);
                                },
                              ),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
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
                                            : Navigator.of(context).push(
                                            MaterialPageRoute(builder: (context) => Recommendation()));
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
                          ),
                        ],
                      ),
                    )
                )
            ),
          ],
        ),
      ),
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