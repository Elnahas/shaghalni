 class OnBoardingModel {
  final String imagePath;
  final String title;
  final String subTitle;

  OnBoardingModel(
      {required this.imagePath, required this.title, required this.subTitle});

  static List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(
        imagePath: 'assets/images/onboarding_1.png',
        title: 'Welcome to Shaghalni',
        subTitle:
            'Shaghalni is an innovative platform aimed at simplifying\n the hiring process and connecting employers with the right candidates'),
    OnBoardingModel(
        imagePath: 'assets/images/onboarding_2.png',
        title: 'Looking for a new job opportunity?',
        subTitle:
            'Explore thousands of available jobs and connect\n with employers easily and effortlessly'),
    OnBoardingModel(
        imagePath: 'assets/images/onboarding_3.png',
        title: 'Want to find the perfect candidate?',
        subTitle:
            'Posting job ads on Shaghalni allows you to reach\n a wide range of talents quickly and easily.'),
    OnBoardingModel(
        imagePath: 'assets/images/onboarding_4.png',
        title: 'Join Now',
        subTitle:
            'Start your journey with Shaghalni\n and take advantage of the best services to hire talents')
  ];
}
