// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_days_usecase_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WorkoutDaysUseCaseResponseDTO _$$_WorkoutDaysUseCaseResponseDTOFromJson(
        Map<String, dynamic> json) =>
    _$_WorkoutDaysUseCaseResponseDTO(
      WorkoutDays: (json['WorkoutDays'] as List<dynamic>?)
          ?.map((e) => ResponseWorkoutDay.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_WorkoutDaysUseCaseResponseDTOToJson(
        _$_WorkoutDaysUseCaseResponseDTO instance) =>
    <String, dynamic>{
      'WorkoutDays': instance.WorkoutDays,
    };

_$_ResponseWorkoutDay _$$_ResponseWorkoutDayFromJson(
        Map<String, dynamic> json) =>
    _$_ResponseWorkoutDay(
      Id: json['Id'] as String?,
      DayOfWeek: json['DayOfWeek'] as String?,
      DayTitle: json['DayTitle'] as String?,
      IsRestDay: json['IsRestDay'] as int?,
      LastFinishedRecord: json['LastFinishedRecord'] as int?,
      Moves: (json['Moves'] as List<dynamic>?)
          ?.map((e) => ResponseWorkoutMove.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ResponseWorkoutDayToJson(
        _$_ResponseWorkoutDay instance) =>
    <String, dynamic>{
      'Id': instance.Id,
      'DayOfWeek': instance.DayOfWeek,
      'DayTitle': instance.DayTitle,
      'IsRestDay': instance.IsRestDay,
      'LastFinishedRecord': instance.LastFinishedRecord,
      'Moves': instance.Moves,
    };

_$_ResponseWorkoutMove _$$_ResponseWorkoutMoveFromJson(
        Map<String, dynamic> json) =>
    _$_ResponseWorkoutMove(
      Id: json['Id'] as String?,
      Type: json['Type'] as String?,
      Title: json['Title'] as String?,
      Moves: (json['Moves'] as List<dynamic>?)
          ?.map((e) => ResponseWorkoutMove.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ResponseWorkoutMoveToJson(
        _$_ResponseWorkoutMove instance) =>
    <String, dynamic>{
      'Id': instance.Id,
      'Type': instance.Type,
      'Title': instance.Title,
      'Moves': instance.Moves,
    };
