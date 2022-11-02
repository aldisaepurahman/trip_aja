import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:heal_and_go/utils/QuestionItem.dart';

class QuestionTab extends StatefulWidget {
  const QuestionTab(
      {super.key, required this.pageIndex, required this.questionItem});

  final int pageIndex;
  final QuestionItem questionItem;

  @override
  State<QuestionTab> createState() => _QuestionState();
}

class _QuestionState extends State<QuestionTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
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
              widget.questionItem.question,
              style: const TextStyle(
                  fontFamily: "Poppins", fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                if (widget.questionItem.multiple_choice) ...[
                  widget.questionItem.choices.forEach((choice) {
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: CheckboxListTile(
                        title: Text(
                          choice,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "Poppins"
                          ),
                        ),
                      ),
                    );
                  })
                ]
              ],
            )
          )
        ],
      ),
    ));
  }
}
