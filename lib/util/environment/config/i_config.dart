abstract class IConfig {
  String get host;
  String get userPath => '$host/user';
}
