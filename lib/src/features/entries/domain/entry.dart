import 'package:starter_architecture_flutter_firebase/src/features/jobs/domain/job.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'entry_freezed.dart';
import 'entry.g.dart';

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



  // double get durationInHours =>
  //     end.difference(start).inMinutes.toDouble() / 60.0;

  // factory Entry.fromMap(Map<dynamic, dynamic> value, EntryID id) {
  //   final startMilliseconds = value['start'] as int;
  //   final endMilliseconds = value['end'] as int;
  //   return Entry(
  //     id: id,
  //     jobId: value['jobId'] as String,
  //     start: DateTime.fromMillisecondsSinceEpoch(startMilliseconds),
  //     end: DateTime.fromMillisecondsSinceEpoch(endMilliseconds),
  //     comment: value['comment'] as String? ?? '',
  //   );
  // }

  factory Entry.fromJson(Map<dynamic, dynamic> value) {
    value['start'] = DateTime.fromMillisecondsSinceEpoch(value['start'] as int);
    value['end'] = DateTime.fromMillisecondsSinceEpoch(value['end'] as int);
    return  _$EntryFromJson(value);
  }

  // Map<String, dynamic> toMap() {
  //   return <String, dynamic>{
  //     'jobId': jobId,
  //     'start': start.millisecondsSinceEpoch,
  //     'end': end.millisecondsSinceEpoch,
  //     'comment': comment,
  //   };
  // }
}
