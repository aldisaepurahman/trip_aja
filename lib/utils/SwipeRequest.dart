class SwipeRequest {
  int id;
  double interested;

  SwipeRequest({required this.id, required this.interested});

  Map<String, dynamic> toJson() {
    return {
      "index_item": id,
      "score": interested
    };
  }
}