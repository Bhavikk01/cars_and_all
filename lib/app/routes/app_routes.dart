enum AppRoutes{
  home('home', '/'),
  ;
  const AppRoutes(this.name,this.path);
  final String path;
  final String name;
}