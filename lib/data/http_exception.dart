class HttpException {
  final int statusCode;
  final String responseBody;

  const HttpException({required this.responseBody,required this.statusCode,});

}