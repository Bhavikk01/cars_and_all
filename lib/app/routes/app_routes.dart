enum AppRoutes{
  home('home', '/'),
  signup('signup','/signup')
  ;
  const AppRoutes(this.name,this.path);
  final String path;
  final String name;
}