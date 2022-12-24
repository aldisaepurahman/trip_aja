class SystemStatus<T> {
  final String message;
  final T datastore;

  SystemStatus({this.message = "", required this.datastore});
}