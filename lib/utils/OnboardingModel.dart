class UnbordingModel {
  String image;
  String title;
  String description;

  UnbordingModel({required this.image, required this.title, required this.description});
}

List<UnbordingModel> contents = [
  UnbordingModel(
      title: 'Let\'s Travel',
      image: 'assets/images/onboarding1.jpg',
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce pellentesque imperdiet ante, ut finibus ex aliquet vel."
  ),
  UnbordingModel(
      title: 'Explore The Unknown',
      image: 'assets/images/onboarding2.jpg',
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce pellentesque imperdiet ante, ut finibus ex aliquet vel."
  ),
  UnbordingModel(
      title: 'Trip Recommendation',
      image: 'assets/images/onboarding3.jpg',
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce pellentesque imperdiet ante, ut finibus ex aliquet vel."
  ),
];