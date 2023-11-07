// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EntryImpl _$$EntryImplFromJson(Map<String, dynamic> json) => _$EntryImpl(
      id: json['id'] as String,
      jobId: json['jobId'] as String,
      start: const EpochDateTimeConverter().fromJson(json['start'] as int),
      end: const EpochDateTimeConverter().fromJson(json['end'] as int),
      comment: json['comment'] as String,
    );

Map<String, dynamic> _$$EntryImplToJson(_$EntryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'jobId': instance.jobId,
      'start': const EpochDateTimeConverter().toJson(instance.start),
      'end': const EpochDateTimeConverter().toJson(instance.end),
      'comment': instance.comment,
    };
