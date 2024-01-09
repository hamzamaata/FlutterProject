class EventModel {
  String eventName;
  DateTime eventDateTime;
  String location;
  String sportType;
  int maxParticipants;
  String rules;

  EventModel({
    required this.eventName,
    required this.eventDateTime,
    required this.location,
    required this.sportType,
    required this.maxParticipants,
    required this.rules,
  });
}
