class ApiError {
  final int? statusCode;
  final String? error;
  final List<String> messages;

  ApiError({
    required this.statusCode,
    required this.error,
    required this.messages,
  });

  factory ApiError.fromJson(Map<String, dynamic> json) {
    return ApiError(
      statusCode: json['statusCode'],
      error: json['error'],
      messages: json['message'] is List
          ? List<String>.from(
              (json['message'] ?? []).map(
                (e) => '${e ?? 'UNKNOWN'}',
              ),
            )
          : ['${json['message'] ?? 'UNKNOWN'}'],
    );
  }
}
