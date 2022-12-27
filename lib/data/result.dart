enum Status {
  INITIAL,
  LOADING,
  SUCCESS,
  ERROR
}

class Result<T> {
  Status? status;
  T? data;
  String? message;

  Result({this.status, this.data, this.message});

  Result.initial() : status = Status.INITIAL;
  Result.loading() : status = Status.LOADING;
  Result.success(this.data) : status = Status.SUCCESS;
  Result.error(this.message) : status = Status.ERROR;
}