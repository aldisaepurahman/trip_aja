import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:heal_and_go/utils/QuestionItem.dart';

class QuestionTab extends StatefulWidget {
  const QuestionTab(
      {Key? key, required this.pageIndex, required this.questionItem})
      : super(key: key);

  final int pageIndex;
  final QuestionItem questionItem;

  @override
  State<QuestionTab> createState() => _QuestionState();
}

class _QuestionState extends State<QuestionTab> {
  @override
  Widget build(BuildContext context) {
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
              widget.questionItem.question,
              style: const TextStyle(
                  fontFamily: "Poppins", fontWeight: FontWeight.bold),
            ),
          ),
          for (var i = 0; i < widget.questionItem.choices.length; i++)
            if (widget.questionItem.multiple_choice)
              Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: createCheckboxList(widget.questionItem.choices[i],
                      widget.questionItem.groupValue[i]))
            else
              Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: createRadioList(widget.questionItem.choices[i],
                      widget.questionItem.groupValue))
          /*ListView.builder(
                itemCount: widget.questionItem.choices.length,
                itemBuilder: (context, index) {
                  if (widget.questionItem.multiple_choice) {
                    return createCheckboxList(
                        widget.questionItem.choices[index],
                        widget.questionItem.groupValue[index]);
                  } else {
                    return createRadioList(widget.questionItem.choices[index],
                        widget.questionItem.groupValue[index]);
                  }
                },
              )*/
        ],
      ),
    );
  }

  CheckboxListTile createCheckboxList(String choice, bool groupValue) {
    return CheckboxListTile(
        title: Text(
          choice,
          style: const TextStyle(
              fontFamily: "Poppins", fontWeight: FontWeight.bold),
        ),
        value: groupValue,
        onChanged: (value) {
          setState(() {
            groupValue = !groupValue;
          });
        });
  }

  RadioListTile createRadioList(String choice, String groupValue) {
    return RadioListTile(
      title: Text(
        choice,
        style:
            const TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.bold),
      ),
      value: choice,
      groupValue: groupValue,
      onChanged: (value) {
        setState(() {
          groupValue = choice;
        });
      },
    );
  }
}
