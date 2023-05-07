// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'choice_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChoiceModel _$ChoiceModelFromJson(Map<String, dynamic> json) {
  return _ChoiceModel.fromJson(json);
}

/// @nodoc
mixin _$ChoiceModel {
  int get id => throw _privateConstructorUsedError;
  String get choice => throw _privateConstructorUsedError;
  bool get is_answer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChoiceModelCopyWith<ChoiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChoiceModelCopyWith<$Res> {
  factory $ChoiceModelCopyWith(
          ChoiceModel value, $Res Function(ChoiceModel) then) =
      _$ChoiceModelCopyWithImpl<$Res, ChoiceModel>;
  @useResult
  $Res call({int id, String choice, bool is_answer});
}

/// @nodoc
class _$ChoiceModelCopyWithImpl<$Res, $Val extends ChoiceModel>
    implements $ChoiceModelCopyWith<$Res> {
  _$ChoiceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? choice = null,
    Object? is_answer = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      choice: null == choice
          ? _value.choice
          : choice // ignore: cast_nullable_to_non_nullable
              as String,
      is_answer: null == is_answer
          ? _value.is_answer
          : is_answer // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChoiceModelCopyWith<$Res>
    implements $ChoiceModelCopyWith<$Res> {
  factory _$$_ChoiceModelCopyWith(
          _$_ChoiceModel value, $Res Function(_$_ChoiceModel) then) =
      __$$_ChoiceModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String choice, bool is_answer});
}

/// @nodoc
class __$$_ChoiceModelCopyWithImpl<$Res>
    extends _$ChoiceModelCopyWithImpl<$Res, _$_ChoiceModel>
    implements _$$_ChoiceModelCopyWith<$Res> {
  __$$_ChoiceModelCopyWithImpl(
      _$_ChoiceModel _value, $Res Function(_$_ChoiceModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? choice = null,
    Object? is_answer = null,
  }) {
    return _then(_$_ChoiceModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      choice: null == choice
          ? _value.choice
          : choice // ignore: cast_nullable_to_non_nullable
              as String,
      is_answer: null == is_answer
          ? _value.is_answer
          : is_answer // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChoiceModel implements _ChoiceModel {
  _$_ChoiceModel(
      {required this.id, required this.choice, required this.is_answer});

  factory _$_ChoiceModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChoiceModelFromJson(json);

  @override
  final int id;
  @override
  final String choice;
  @override
  final bool is_answer;

  @override
  String toString() {
    return 'ChoiceModel(id: $id, choice: $choice, is_answer: $is_answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChoiceModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.choice, choice) || other.choice == choice) &&
            (identical(other.is_answer, is_answer) ||
                other.is_answer == is_answer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, choice, is_answer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChoiceModelCopyWith<_$_ChoiceModel> get copyWith =>
      __$$_ChoiceModelCopyWithImpl<_$_ChoiceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChoiceModelToJson(
      this,
    );
  }
}

abstract class _ChoiceModel implements ChoiceModel {
  factory _ChoiceModel(
      {required final int id,
      required final String choice,
      required final bool is_answer}) = _$_ChoiceModel;

  factory _ChoiceModel.fromJson(Map<String, dynamic> json) =
      _$_ChoiceModel.fromJson;

  @override
  int get id;
  @override
  String get choice;
  @override
  bool get is_answer;
  @override
  @JsonKey(ignore: true)
  _$$_ChoiceModelCopyWith<_$_ChoiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}
