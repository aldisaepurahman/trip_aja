class QuestionItem {
  String question;
  List<String> choices;
  dynamic groupValue;
  bool multiple_choice;

  QuestionItem({required this.question, required this.choices, required this.groupValue, required this.multiple_choice});
}

final question = [
  QuestionItem(
      question: "🔥 If you want to go get some healing done, who do you want to do it with ?",
      choices: [
        "Travels Alone",
        "A Couple",
        "Family With Children",
        "Family Without Children",
        "Group Of Friends"
      ],
      groupValue: "",
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
      groupValue: <bool>[false, false, false, false, false],
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
      groupValue: <bool>[false, false, false, false, false, false, false, false],
      multiple_choice: true
  ),
  QuestionItem(
      question: "🏊 Are you going to do sports too during your healing ?",
      choices: ["No Sports", "Traditional sports (Swimming, Hiking, Golf)"],
      groupValue: "",
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
      groupValue: "",
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
      groupValue: "",
      multiple_choice: false
  ),
  QuestionItem(
      question: "♀️♂️ Which of the following most accurately describe you ?",
      choices: ["Female", "Male"],
      groupValue: "",
      multiple_choice: false
  ),
  QuestionItem(
      question: "💰 How much budget can you allocate ?",
      choices: ["< 500rb", "500rb - 3jt", "4jt - 7.5jt", "> 7.5jt"],
      groupValue: "",
      multiple_choice: false
  )
];