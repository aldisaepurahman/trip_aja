import 'package:flutter/cupertino.dart';
import 'package:heal_and_go/utils/QuestionItem.dart';

class QuestionTab extends StatefulWidget {
  const QuestionTab(
      {super.key,
      required this.pageIndex,
      required this.questionItem});

  final int pageIndex;
  final QuestionItem questionItem;

  @override
  State<QuestionTab> createState() => _QuestionState();
}

class _QuestionState extends State<QuestionTab> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
