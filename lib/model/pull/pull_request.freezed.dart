// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pull_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PullRequest _$PullRequestFromJson(Map<String, dynamic> json) {
  return _PullRequest.fromJson(json);
}

/// @nodoc
mixin _$PullRequest {
  String get title => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PullRequestCopyWith<PullRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PullRequestCopyWith<$Res> {
  factory $PullRequestCopyWith(
          PullRequest value, $Res Function(PullRequest) then) =
      _$PullRequestCopyWithImpl<$Res, PullRequest>;
  @useResult
  $Res call({String title, String url});
}

/// @nodoc
class _$PullRequestCopyWithImpl<$Res, $Val extends PullRequest>
    implements $PullRequestCopyWith<$Res> {
  _$PullRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PullRequestImplCopyWith<$Res>
    implements $PullRequestCopyWith<$Res> {
  factory _$$PullRequestImplCopyWith(
          _$PullRequestImpl value, $Res Function(_$PullRequestImpl) then) =
      __$$PullRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String url});
}

/// @nodoc
class __$$PullRequestImplCopyWithImpl<$Res>
    extends _$PullRequestCopyWithImpl<$Res, _$PullRequestImpl>
    implements _$$PullRequestImplCopyWith<$Res> {
  __$$PullRequestImplCopyWithImpl(
      _$PullRequestImpl _value, $Res Function(_$PullRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? url = null,
  }) {
    return _then(_$PullRequestImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PullRequestImpl extends _PullRequest {
  _$PullRequestImpl({required this.title, required this.url}) : super._();

  factory _$PullRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$PullRequestImplFromJson(json);

  @override
  final String title;
  @override
  final String url;

  @override
  String toString() {
    return 'PullRequest(title: $title, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PullRequestImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PullRequestImplCopyWith<_$PullRequestImpl> get copyWith =>
      __$$PullRequestImplCopyWithImpl<_$PullRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PullRequestImplToJson(
      this,
    );
  }
}

abstract class _PullRequest extends PullRequest {
  factory _PullRequest(
      {required final String title,
      required final String url}) = _$PullRequestImpl;
  _PullRequest._() : super._();

  factory _PullRequest.fromJson(Map<String, dynamic> json) =
      _$PullRequestImpl.fromJson;

  @override
  String get title;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$PullRequestImplCopyWith<_$PullRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
