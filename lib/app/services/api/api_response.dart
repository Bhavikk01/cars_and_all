class ApiResponse<T> {
  final T? data;
  final String? errorMessage;

  ApiResponse({this.data, this.errorMessage});

  bool get isSuccess => errorMessage == null;
}