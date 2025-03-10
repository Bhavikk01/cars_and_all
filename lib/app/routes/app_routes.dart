enum AppRoutes{
  main('main', '/'),
  ;
  const AppRoutes(this.name,this.path);
  final String path;
  final String name;
}