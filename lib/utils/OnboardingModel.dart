class UnbordingModel {
  String image;
  String title;
  String description;

  UnbordingModel({required this.image, required this.title, required this.description});
}

List<UnbordingModel> contents = [
  UnbordingModel(
      title: 'Find Your Next Trip Destination',
      image: 'assets/images/onboarding1.png',
      description: "Welcome to TripAja, where you can find your perfect destination. Explore the world at your fingertips."
  ),
  UnbordingModel(
      title: 'Explore The Unexplored',
      image: 'assets/images/onboarding2.png',
      description: "Unlock new travel possibilities and discover the world's hidden gems."
  ),
  UnbordingModel(
      title: 'Trip Recommendation',
      image: 'assets/images/onboarding3.png',
      description: "Find your next great escape according to your preferences."
  ),
];