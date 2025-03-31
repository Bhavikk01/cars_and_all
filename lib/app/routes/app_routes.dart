enum AppRoutes{
  login('login', '/login'),
  getStarted('GetStarted', '/getStarted'),
  userSelection('UserSelection', '/userSelection'),
  splashScreen('splashScreen', '/splashScreen'),
  signUpScreen('signUpScreen','/signUpScreen'),
  home('home', '/');
  const AppRoutes(this.name,this.path);
  final String path;
  final String name;
}