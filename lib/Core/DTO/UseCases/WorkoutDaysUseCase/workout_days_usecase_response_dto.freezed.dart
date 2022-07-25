// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'workout_days_usecase_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WorkoutDaysUseCaseResponseDTO _$WorkoutDaysUseCaseResponseDTOFromJson(
    Map<String, dynamic> json) {
  return _WorkoutDaysUseCaseResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$WorkoutDaysUseCaseResponseDTO {
  List<ResponseWorkoutDay>? get WorkoutDays =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkoutDaysUseCaseResponseDTOCopyWith<WorkoutDaysUseCaseResponseDTO>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutDaysUseCaseResponseDTOCopyWith<$Res> {
  factory $WorkoutDaysUseCaseResponseDTOCopyWith(
          WorkoutDaysUseCaseResponseDTO value,
          $Res Function(WorkoutDaysUseCaseResponseDTO) then) =
      _$WorkoutDaysUseCaseResponseDTOCopyWithImpl<$Res>;
  $Res call({List<ResponseWorkoutDay>? WorkoutDays});
}

/// @nodoc
class _$WorkoutDaysUseCaseResponseDTOCopyWithImpl<$Res>
    implements $WorkoutDaysUseCaseResponseDTOCopyWith<$Res> {
  _$WorkoutDaysUseCaseResponseDTOCopyWithImpl(this._value, this._then);

  final WorkoutDaysUseCaseResponseDTO _value;
  // ignore: unused_field
  final $Res Function(WorkoutDaysUseCaseResponseDTO) _then;

  @override
  $Res call({
    Object? WorkoutDays = freezed,
  }) {
    return _then(_value.copyWith(
      WorkoutDays: WorkoutDays == freezed
          ? _value.WorkoutDays
          : WorkoutDays // ignore: cast_nullable_to_non_nullable
              as List<ResponseWorkoutDay>?,
    ));
  }
}

/// @nodoc
abstract class _$$_WorkoutDaysUseCaseResponseDTOCopyWith<$Res>
    implements $WorkoutDaysUseCaseResponseDTOCopyWith<$Res> {
  factory _$$_WorkoutDaysUseCaseResponseDTOCopyWith(
          _$_WorkoutDaysUseCaseResponseDTO value,
          $Res Function(_$_WorkoutDaysUseCaseResponseDTO) then) =
      __$$_WorkoutDaysUseCaseResponseDTOCopyWithImpl<$Res>;
  @override
  $Res call({List<ResponseWorkoutDay>? WorkoutDays});
}

/// @nodoc
class __$$_WorkoutDaysUseCaseResponseDTOCopyWithImpl<$Res>
    extends _$WorkoutDaysUseCaseResponseDTOCopyWithImpl<$Res>
    implements _$$_WorkoutDaysUseCaseResponseDTOCopyWith<$Res> {
  __$$_WorkoutDaysUseCaseResponseDTOCopyWithImpl(
      _$_WorkoutDaysUseCaseResponseDTO _value,
      $Res Function(_$_WorkoutDaysUseCaseResponseDTO) _then)
      : super(_value, (v) => _then(v as _$_WorkoutDaysUseCaseResponseDTO));

  @override
  _$_WorkoutDaysUseCaseResponseDTO get _value =>
      super._value as _$_WorkoutDaysUseCaseResponseDTO;

  @override
  $Res call({
    Object? WorkoutDays = freezed,
  }) {
    return _then(_$_WorkoutDaysUseCaseResponseDTO(
      WorkoutDays: WorkoutDays == freezed
          ? _value._WorkoutDays
          : WorkoutDays // ignore: cast_nullable_to_non_nullable
              as List<ResponseWorkoutDay>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WorkoutDaysUseCaseResponseDTO
    implements _WorkoutDaysUseCaseResponseDTO {
  _$_WorkoutDaysUseCaseResponseDTO(
      {final List<ResponseWorkoutDay>? WorkoutDays})
      : _WorkoutDays = WorkoutDays;

  factory _$_WorkoutDaysUseCaseResponseDTO.fromJson(
          Map<String, dynamic> json) =>
      _$$_WorkoutDaysUseCaseResponseDTOFromJson(json);

  final List<ResponseWorkoutDay>? _WorkoutDays;
  @override
  List<ResponseWorkoutDay>? get WorkoutDays {
    final value = _WorkoutDays;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'WorkoutDaysUseCaseResponseDTO(WorkoutDays: $WorkoutDays)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkoutDaysUseCaseResponseDTO &&
            const DeepCollectionEquality()
                .equals(other._WorkoutDays, _WorkoutDays));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_WorkoutDays));

  @JsonKey(ignore: true)
  @override
  _$$_WorkoutDaysUseCaseResponseDTOCopyWith<_$_WorkoutDaysUseCaseResponseDTO>
      get copyWith => __$$_WorkoutDaysUseCaseResponseDTOCopyWithImpl<
          _$_WorkoutDaysUseCaseResponseDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorkoutDaysUseCaseResponseDTOToJson(
      this,
    );
  }
}

abstract class _WorkoutDaysUseCaseResponseDTO
    implements WorkoutDaysUseCaseResponseDTO {
  factory _WorkoutDaysUseCaseResponseDTO(
          {final List<ResponseWorkoutDay>? WorkoutDays}) =
      _$_WorkoutDaysUseCaseResponseDTO;

  factory _WorkoutDaysUseCaseResponseDTO.fromJson(Map<String, dynamic> json) =
      _$_WorkoutDaysUseCaseResponseDTO.fromJson;

  @override
  List<ResponseWorkoutDay>? get WorkoutDays;
  @override
  @JsonKey(ignore: true)
  _$$_WorkoutDaysUseCaseResponseDTOCopyWith<_$_WorkoutDaysUseCaseResponseDTO>
      get copyWith => throw _privateConstructorUsedError;
}

ResponseWorkoutDay _$ResponseWorkoutDayFromJson(Map<String, dynamic> json) {
  return _ResponseWorkoutDay.fromJson(json);
}

/// @nodoc
mixin _$ResponseWorkoutDay {
  String? get Id => throw _privateConstructorUsedError;
  String? get DayOfWeek => throw _privateConstructorUsedError;
  String? get DayTitle => throw _privateConstructorUsedError;
  int? get IsRestDay => throw _privateConstructorUsedError;
  int? get LastFinishedRecord => throw _privateConstructorUsedError;
  List<ResponseWorkoutMove>? get Moves => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseWorkoutDayCopyWith<ResponseWorkoutDay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseWorkoutDayCopyWith<$Res> {
  factory $ResponseWorkoutDayCopyWith(
          ResponseWorkoutDay value, $Res Function(ResponseWorkoutDay) then) =
      _$ResponseWorkoutDayCopyWithImpl<$Res>;
  $Res call(
      {String? Id,
      String? DayOfWeek,
      String? DayTitle,
      int? IsRestDay,
      int? LastFinishedRecord,
      List<ResponseWorkoutMove>? Moves});
}

/// @nodoc
class _$ResponseWorkoutDayCopyWithImpl<$Res>
    implements $ResponseWorkoutDayCopyWith<$Res> {
  _$ResponseWorkoutDayCopyWithImpl(this._value, this._then);

  final ResponseWorkoutDay _value;
  // ignore: unused_field
  final $Res Function(ResponseWorkoutDay) _then;

  @override
  $Res call({
    Object? Id = freezed,
    Object? DayOfWeek = freezed,
    Object? DayTitle = freezed,
    Object? IsRestDay = freezed,
    Object? LastFinishedRecord = freezed,
    Object? Moves = freezed,
  }) {
    return _then(_value.copyWith(
      Id: Id == freezed
          ? _value.Id
          : Id // ignore: cast_nullable_to_non_nullable
              as String?,
      DayOfWeek: DayOfWeek == freezed
          ? _value.DayOfWeek
          : DayOfWeek // ignore: cast_nullable_to_non_nullable
              as String?,
      DayTitle: DayTitle == freezed
          ? _value.DayTitle
          : DayTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      IsRestDay: IsRestDay == freezed
          ? _value.IsRestDay
          : IsRestDay // ignore: cast_nullable_to_non_nullable
              as int?,
      LastFinishedRecord: LastFinishedRecord == freezed
          ? _value.LastFinishedRecord
          : LastFinishedRecord // ignore: cast_nullable_to_non_nullable
              as int?,
      Moves: Moves == freezed
          ? _value.Moves
          : Moves // ignore: cast_nullable_to_non_nullable
              as List<ResponseWorkoutMove>?,
    ));
  }
}

/// @nodoc
abstract class _$$_ResponseWorkoutDayCopyWith<$Res>
    implements $ResponseWorkoutDayCopyWith<$Res> {
  factory _$$_ResponseWorkoutDayCopyWith(_$_ResponseWorkoutDay value,
          $Res Function(_$_ResponseWorkoutDay) then) =
      __$$_ResponseWorkoutDayCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? Id,
      String? DayOfWeek,
      String? DayTitle,
      int? IsRestDay,
      int? LastFinishedRecord,
      List<ResponseWorkoutMove>? Moves});
}

/// @nodoc
class __$$_ResponseWorkoutDayCopyWithImpl<$Res>
    extends _$ResponseWorkoutDayCopyWithImpl<$Res>
    implements _$$_ResponseWorkoutDayCopyWith<$Res> {
  __$$_ResponseWorkoutDayCopyWithImpl(
      _$_ResponseWorkoutDay _value, $Res Function(_$_ResponseWorkoutDay) _then)
      : super(_value, (v) => _then(v as _$_ResponseWorkoutDay));

  @override
  _$_ResponseWorkoutDay get _value => super._value as _$_ResponseWorkoutDay;

  @override
  $Res call({
    Object? Id = freezed,
    Object? DayOfWeek = freezed,
    Object? DayTitle = freezed,
    Object? IsRestDay = freezed,
    Object? LastFinishedRecord = freezed,
    Object? Moves = freezed,
  }) {
    return _then(_$_ResponseWorkoutDay(
      Id: Id == freezed
          ? _value.Id
          : Id // ignore: cast_nullable_to_non_nullable
              as String?,
      DayOfWeek: DayOfWeek == freezed
          ? _value.DayOfWeek
          : DayOfWeek // ignore: cast_nullable_to_non_nullable
              as String?,
      DayTitle: DayTitle == freezed
          ? _value.DayTitle
          : DayTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      IsRestDay: IsRestDay == freezed
          ? _value.IsRestDay
          : IsRestDay // ignore: cast_nullable_to_non_nullable
              as int?,
      LastFinishedRecord: LastFinishedRecord == freezed
          ? _value.LastFinishedRecord
          : LastFinishedRecord // ignore: cast_nullable_to_non_nullable
              as int?,
      Moves: Moves == freezed
          ? _value._Moves
          : Moves // ignore: cast_nullable_to_non_nullable
              as List<ResponseWorkoutMove>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResponseWorkoutDay implements _ResponseWorkoutDay {
  _$_ResponseWorkoutDay(
      {this.Id,
      this.DayOfWeek,
      this.DayTitle,
      this.IsRestDay,
      this.LastFinishedRecord,
      final List<ResponseWorkoutMove>? Moves})
      : _Moves = Moves;

  factory _$_ResponseWorkoutDay.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseWorkoutDayFromJson(json);

  @override
  final String? Id;
  @override
  final String? DayOfWeek;
  @override
  final String? DayTitle;
  @override
  final int? IsRestDay;
  @override
  final int? LastFinishedRecord;
  final List<ResponseWorkoutMove>? _Moves;
  @override
  List<ResponseWorkoutMove>? get Moves {
    final value = _Moves;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ResponseWorkoutDay(Id: $Id, DayOfWeek: $DayOfWeek, DayTitle: $DayTitle, IsRestDay: $IsRestDay, LastFinishedRecord: $LastFinishedRecord, Moves: $Moves)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseWorkoutDay &&
            const DeepCollectionEquality().equals(other.Id, Id) &&
            const DeepCollectionEquality().equals(other.DayOfWeek, DayOfWeek) &&
            const DeepCollectionEquality().equals(other.DayTitle, DayTitle) &&
            const DeepCollectionEquality().equals(other.IsRestDay, IsRestDay) &&
            const DeepCollectionEquality()
                .equals(other.LastFinishedRecord, LastFinishedRecord) &&
            const DeepCollectionEquality().equals(other._Moves, _Moves));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(Id),
      const DeepCollectionEquality().hash(DayOfWeek),
      const DeepCollectionEquality().hash(DayTitle),
      const DeepCollectionEquality().hash(IsRestDay),
      const DeepCollectionEquality().hash(LastFinishedRecord),
      const DeepCollectionEquality().hash(_Moves));

  @JsonKey(ignore: true)
  @override
  _$$_ResponseWorkoutDayCopyWith<_$_ResponseWorkoutDay> get copyWith =>
      __$$_ResponseWorkoutDayCopyWithImpl<_$_ResponseWorkoutDay>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseWorkoutDayToJson(
      this,
    );
  }
}

abstract class _ResponseWorkoutDay implements ResponseWorkoutDay {
  factory _ResponseWorkoutDay(
      {final String? Id,
      final String? DayOfWeek,
      final String? DayTitle,
      final int? IsRestDay,
      final int? LastFinishedRecord,
      final List<ResponseWorkoutMove>? Moves}) = _$_ResponseWorkoutDay;

  factory _ResponseWorkoutDay.fromJson(Map<String, dynamic> json) =
      _$_ResponseWorkoutDay.fromJson;

  @override
  String? get Id;
  @override
  String? get DayOfWeek;
  @override
  String? get DayTitle;
  @override
  int? get IsRestDay;
  @override
  int? get LastFinishedRecord;
  @override
  List<ResponseWorkoutMove>? get Moves;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseWorkoutDayCopyWith<_$_ResponseWorkoutDay> get copyWith =>
      throw _privateConstructorUsedError;
}

ResponseWorkoutMove _$ResponseWorkoutMoveFromJson(Map<String, dynamic> json) {
  return _ResponseWorkoutMove.fromJson(json);
}

/// @nodoc
mixin _$ResponseWorkoutMove {
  String? get Id => throw _privateConstructorUsedError;
  String? get Type => throw _privateConstructorUsedError;
  String? get Title => throw _privateConstructorUsedError;
  List<ResponseWorkoutMove>? get Moves => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseWorkoutMoveCopyWith<ResponseWorkoutMove> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseWorkoutMoveCopyWith<$Res> {
  factory $ResponseWorkoutMoveCopyWith(
          ResponseWorkoutMove value, $Res Function(ResponseWorkoutMove) then) =
      _$ResponseWorkoutMoveCopyWithImpl<$Res>;
  $Res call(
      {String? Id,
      String? Type,
      String? Title,
      List<ResponseWorkoutMove>? Moves});
}

/// @nodoc
class _$ResponseWorkoutMoveCopyWithImpl<$Res>
    implements $ResponseWorkoutMoveCopyWith<$Res> {
  _$ResponseWorkoutMoveCopyWithImpl(this._value, this._then);

  final ResponseWorkoutMove _value;
  // ignore: unused_field
  final $Res Function(ResponseWorkoutMove) _then;

  @override
  $Res call({
    Object? Id = freezed,
    Object? Type = freezed,
    Object? Title = freezed,
    Object? Moves = freezed,
  }) {
    return _then(_value.copyWith(
      Id: Id == freezed
          ? _value.Id
          : Id // ignore: cast_nullable_to_non_nullable
              as String?,
      Type: Type == freezed
          ? _value.Type
          : Type // ignore: cast_nullable_to_non_nullable
              as String?,
      Title: Title == freezed
          ? _value.Title
          : Title // ignore: cast_nullable_to_non_nullable
              as String?,
      Moves: Moves == freezed
          ? _value.Moves
          : Moves // ignore: cast_nullable_to_non_nullable
              as List<ResponseWorkoutMove>?,
    ));
  }
}

/// @nodoc
abstract class _$$_ResponseWorkoutMoveCopyWith<$Res>
    implements $ResponseWorkoutMoveCopyWith<$Res> {
  factory _$$_ResponseWorkoutMoveCopyWith(_$_ResponseWorkoutMove value,
          $Res Function(_$_ResponseWorkoutMove) then) =
      __$$_ResponseWorkoutMoveCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? Id,
      String? Type,
      String? Title,
      List<ResponseWorkoutMove>? Moves});
}

/// @nodoc
class __$$_ResponseWorkoutMoveCopyWithImpl<$Res>
    extends _$ResponseWorkoutMoveCopyWithImpl<$Res>
    implements _$$_ResponseWorkoutMoveCopyWith<$Res> {
  __$$_ResponseWorkoutMoveCopyWithImpl(_$_ResponseWorkoutMove _value,
      $Res Function(_$_ResponseWorkoutMove) _then)
      : super(_value, (v) => _then(v as _$_ResponseWorkoutMove));

  @override
  _$_ResponseWorkoutMove get _value => super._value as _$_ResponseWorkoutMove;

  @override
  $Res call({
    Object? Id = freezed,
    Object? Type = freezed,
    Object? Title = freezed,
    Object? Moves = freezed,
  }) {
    return _then(_$_ResponseWorkoutMove(
      Id: Id == freezed
          ? _value.Id
          : Id // ignore: cast_nullable_to_non_nullable
              as String?,
      Type: Type == freezed
          ? _value.Type
          : Type // ignore: cast_nullable_to_non_nullable
              as String?,
      Title: Title == freezed
          ? _value.Title
          : Title // ignore: cast_nullable_to_non_nullable
              as String?,
      Moves: Moves == freezed
          ? _value._Moves
          : Moves // ignore: cast_nullable_to_non_nullable
              as List<ResponseWorkoutMove>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResponseWorkoutMove implements _ResponseWorkoutMove {
  _$_ResponseWorkoutMove(
      {this.Id, this.Type, this.Title, final List<ResponseWorkoutMove>? Moves})
      : _Moves = Moves;

  factory _$_ResponseWorkoutMove.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseWorkoutMoveFromJson(json);

  @override
  final String? Id;
  @override
  final String? Type;
  @override
  final String? Title;
  final List<ResponseWorkoutMove>? _Moves;
  @override
  List<ResponseWorkoutMove>? get Moves {
    final value = _Moves;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ResponseWorkoutMove(Id: $Id, Type: $Type, Title: $Title, Moves: $Moves)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseWorkoutMove &&
            const DeepCollectionEquality().equals(other.Id, Id) &&
            const DeepCollectionEquality().equals(other.Type, Type) &&
            const DeepCollectionEquality().equals(other.Title, Title) &&
            const DeepCollectionEquality().equals(other._Moves, _Moves));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(Id),
      const DeepCollectionEquality().hash(Type),
      const DeepCollectionEquality().hash(Title),
      const DeepCollectionEquality().hash(_Moves));

  @JsonKey(ignore: true)
  @override
  _$$_ResponseWorkoutMoveCopyWith<_$_ResponseWorkoutMove> get copyWith =>
      __$$_ResponseWorkoutMoveCopyWithImpl<_$_ResponseWorkoutMove>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseWorkoutMoveToJson(
      this,
    );
  }
}

abstract class _ResponseWorkoutMove implements ResponseWorkoutMove {
  factory _ResponseWorkoutMove(
      {final String? Id,
      final String? Type,
      final String? Title,
      final List<ResponseWorkoutMove>? Moves}) = _$_ResponseWorkoutMove;

  factory _ResponseWorkoutMove.fromJson(Map<String, dynamic> json) =
      _$_ResponseWorkoutMove.fromJson;

  @override
  String? get Id;
  @override
  String? get Type;
  @override
  String? get Title;
  @override
  List<ResponseWorkoutMove>? get Moves;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseWorkoutMoveCopyWith<_$_ResponseWorkoutMove> get copyWith =>
      throw _privateConstructorUsedError;
}
