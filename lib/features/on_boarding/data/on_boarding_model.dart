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
            'Shaghalni app connects employers and job seekers\n directly to achieve the best possible result.'),
    OnBoardingModel(
        imagePath: 'assets/images/onboarding_2.png',
        title: 'Looking for your dream job',
        subTitle:
            'You can search and communicate with\n advertisers easily without having to wait'),
    OnBoardingModel(
        imagePath: 'assets/images/onboarding_3.png',
        title: 'Looking for the ideal employee',
        subTitle:
            'Post your ad and receive applications quickly\n and easily without the need for a third party'),
    OnBoardingModel(
        imagePath: 'assets/images/onboarding_4.png',
        title: 'Register and start now',
        subTitle:
            'Start now and get the best talents\n or secure your dream opportunity')
  ];
}
