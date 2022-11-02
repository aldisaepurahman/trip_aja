class QuestionItem {
  String question;
  List<String> choices;
  dynamic groupValue;
  bool multiple_choice;

  QuestionItem({required this.question, required this.choices, required this.groupValue, required this.multiple_choice});
}