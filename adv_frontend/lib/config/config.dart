class Config {
  static const String baseUrl = String.fromEnvironment(
    'API_BASE_URL',
    defaultValue: 'http://127.0.0.1:8000',
  );

  static String getPlatformUrl() => baseUrl;

  static const String apiVersion = 'v1';
  static const Duration timeout = Duration(seconds: 30);
}
