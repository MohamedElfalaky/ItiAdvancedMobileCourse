class ServerErrorModel {
  final int statusCode;
  final String statusMessage;
  final bool success;

  ServerErrorModel({
    required this.statusCode,
    required this.statusMessage,
    required this.success,
  });

  // Factory constructor to create an instance of ServerErrorModel from JSON
  factory ServerErrorModel.fromJson(Map<String, dynamic> json) {
    return ServerErrorModel(
      statusCode: json['status_code'],
      statusMessage: json['status_message'],
      success: json['success'],
    );
  }

  // Method to convert an instance of ServerErrorModel to JSON
  Map<String, dynamic> toJson() {
    return {
      'status_code': statusCode,
      'status_message': statusMessage,
      'success': success,
    };
  }
}
