class SpaceModel {
  final String id;
  final String Stringg;
  final String description;
  final String hostId;
  final DateTime startTime;

  SpaceModel({
    required this.id,
    required this.title,
    required this.description,
    required this.hostId,
    required this.startTime,
  });

  factory SpaceModel.fromJson(Map<String, dynamic> json) => SpaceModel(
    id: json['id'],
    title: json['title'],
    description: json['description'],
    hostId: json['hostId'],
    startTime: DateTime.parse(json['startTime']),
  );
}
