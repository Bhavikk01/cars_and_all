class ConstantData {

  ConstantData._();

  /// User SharedPreference Keys
  static String userIdKey = 'UserUID';
  static String userBearerToken = 'UserBearerToken';

  /// API error messages
  static String sendTimeout = "Send Timeout Exception";
  static String connectionTimeout = "Connection Timeout Exception";
  static String receiveTimeout = "Receive Timeout Exception";
  static String invalidStatusCode = "Received invalid status code";
  static String requestCancelled = "Request was cancelled";
}