import 'package:starter_architecture_flutter_firebase/src/features/jobs/domain/job.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'entry.freezed.dart';
part 'entry.g.dart';

typedef EntryID = String;

@Freezed()
class Entry with _$Entry {
  const Entry._();
  const factory Entry({
    required EntryID id,
    required JobID jobId,
    @EpochDateTimeConverter() required DateTime start,
    @EpochDateTimeConverter() required DateTime end,
    required String comment,
  }) = _Entry;

  double get durationInHours =>
      end.difference(start).inMinutes.toDouble() / 60.0;

  factory Entry.fromJson(Map<String, dynamic> json) => _$EntryFromJson(json);
}

class EpochDateTimeConverter implements JsonConverter<DateTime, int> {
  const EpochDateTimeConverter();

  @override
  DateTime fromJson(int json) => DateTime.fromMillisecondsSinceEpoch(json);

  @override
  int toJson(DateTime object) => object.millisecondsSinceEpoch;
}
