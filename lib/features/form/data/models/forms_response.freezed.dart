// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forms_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FormsResponse _$FormsResponseFromJson(Map<String, dynamic> json) {
  return _FormsResponse.fromJson(json);
}

/// @nodoc
mixin _$FormsResponse {
  List<FormModel> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FormsResponseCopyWith<FormsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormsResponseCopyWith<$Res> {
  factory $FormsResponseCopyWith(
          FormsResponse value, $Res Function(FormsResponse) then) =
      _$FormsResponseCopyWithImpl<$Res, FormsResponse>;
  @useResult
  $Res call({List<FormModel> results});
}

/// @nodoc
class _$FormsResponseCopyWithImpl<$Res, $Val extends FormsResponse>
    implements $FormsResponseCopyWith<$Res> {
  _$FormsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<FormModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FormsResponseCopyWith<$Res>
    implements $FormsResponseCopyWith<$Res> {
  factory _$$_FormsResponseCopyWith(
          _$_FormsResponse value, $Res Function(_$_FormsResponse) then) =
      __$$_FormsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FormModel> results});
}

/// @nodoc
class __$$_FormsResponseCopyWithImpl<$Res>
    extends _$FormsResponseCopyWithImpl<$Res, _$_FormsResponse>
    implements _$$_FormsResponseCopyWith<$Res> {
  __$$_FormsResponseCopyWithImpl(
      _$_FormsResponse _value, $Res Function(_$_FormsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_$_FormsResponse(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<FormModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FormsResponse implements _FormsResponse {
  _$_FormsResponse({required final List<FormModel> results})
      : _results = results;

  factory _$_FormsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_FormsResponseFromJson(json);

  final List<FormModel> _results;
  @override
  List<FormModel> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'FormsResponse(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FormsResponse &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FormsResponseCopyWith<_$_FormsResponse> get copyWith =>
      __$$_FormsResponseCopyWithImpl<_$_FormsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FormsResponseToJson(
      this,
    );
  }
}

abstract class _FormsResponse implements FormsResponse {
  factory _FormsResponse({required final List<FormModel> results}) =
      _$_FormsResponse;

  factory _FormsResponse.fromJson(Map<String, dynamic> json) =
      _$_FormsResponse.fromJson;

  @override
  List<FormModel> get results;
  @override
  @JsonKey(ignore: true)
  _$$_FormsResponseCopyWith<_$_FormsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
