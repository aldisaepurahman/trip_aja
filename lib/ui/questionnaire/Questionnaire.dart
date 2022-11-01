import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:heal_and_go/ui/questionnaire/QuestionTab.dart';
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
  int totalPages = _question.length;

  List<QuestionTab> _pages = [];

  @override
  void initState() {
    super.initState();

    _question.asMap().forEach((index, quest) {
      _pages.add(QuestionTab(pageIndex: index, questionItem: quest));
    });

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

  @override
  Widget build(BuildContext context) {
    var maxWidth = MediaQuery
        .of(context)
        .size
        .width;

    return Scaffold(
      backgroundColor: const Color(0xff5f5fff),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
                const TextStyle(fontFamily: "Poppins", color: Colors.white),
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
            ),
            Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [],
                  ),
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

final _question = [
  QuestionItem(
      question: "🔥 If you want to go get some healing done, who do you want to do it with ?",
      choices: [
        "Travels Alone",
        "A Couple",
        "Family With Children",
        "Family Without Children",
        "Group Of Friends"
      ],
      multiple_choice: false
  ),
  QuestionItem(
      question: "👪 what is the age gap between the participants ?",
      choices: [
        "Children (0–13)",
        "Adolscent (14–20)",
        "Adult (21–45)",
        "Middle Age (46–64)",
        "Senior Adult (> 64)"
      ],
      multiple_choice: true
  ),
  QuestionItem(
      question: "📸 What kind of activity would you like to do ?",
      choices: [
        "Visit museum/zoo/historical place",
        "Go on Adventure tour",
        "See the sights",
        "Take picture or selfie",
        "Going to festival/amusement park",
        "Photography",
        "Leisurely walk",
        "Shopping"
      ],
      multiple_choice: true
  ),
  QuestionItem(
      question: "🏊 Are you going to do sports too during your healing ?",
      choices: ["No Sports", "Traditional sports (Swimming, Hiking, Golf)"],
      multiple_choice: false
  ),
  QuestionItem(
      question: "⏱️ How much time do you want to spend during your healing ?",
      choices: [
        "Less than a day",
        "1-3 Days",
        "1 week",
        "2 weeks",
        "More than 3 weeks"
      ],
      multiple_choice: false
  ),
  QuestionItem(
      question: "🗓️ When are you planning to go ?",
      choices: [
        "March - May",
        "June - August",
        "September - November",
        "Desember - February"
      ],
      multiple_choice: false
  ),
  QuestionItem(
      question: "♀️♂️ Which of the following most accurately describe you ?",
      choices: ["Female", "Male"],
      multiple_choice: false
  ),
  QuestionItem(
      question: "💰 How much budget can you allocate ?",
      choices: ["< 500rb", "500rb - 3jt", "4jt - 7.5jt", "> 7.5jt"],
      multiple_choice: false
  )
];

