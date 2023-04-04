class DataResponse<T> {
  Status status;
  T? data;

  DataResponse.loading() : status = Status.loading;

  DataResponse.offline() : status = Status.offline;

  DataResponse.completed({this.data}) : status = Status.completed;

  DataResponse.error() : status = Status.error;

  DataResponse.canceled() : status = Status.canceled;
}

enum Status {
  loading,
  completed,
  error,
  canceled,
  offline,
}
