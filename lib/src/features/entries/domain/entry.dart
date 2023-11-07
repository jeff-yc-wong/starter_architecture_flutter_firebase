import 'package:starter_architecture_flutter_firebase/src/features/jobs/domain/job.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'entry.freezed.dart';

typedef EntryID = String;

@Freezed()
class Entry with _$Entry {
  const Entry._();
  const factory Entry({
    required EntryID id,
    required JobID jobId,
    required DateTime start,
    required DateTime end,
    required String comment,
  }) = _Entry;

  double get durationInHours =>
      end.difference(start).inMinutes.toDouble() / 60.0;

  factory Entry.fromJson(Map<dynamic, dynamic> json, EntryID id) {
    final startMilliseconds = json['start'] as int;
    final endMilliseconds = json['end'] as int;
    return Entry(
      id: id,
      jobId: json['jobId'] as String,
      start: DateTime.fromMillisecondsSinceEpoch(startMilliseconds),
      end: DateTime.fromMillisecondsSinceEpoch(endMilliseconds),
      comment: json['comment'] as String? ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'jobId': jobId,
      'start': start.millisecondsSinceEpoch,
      'end': end.millisecondsSinceEpoch,
      'comment': comment,
    };
  }
}
