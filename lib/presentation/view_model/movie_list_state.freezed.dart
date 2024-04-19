// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieListState _$MovieListStateFromJson(Map<String, dynamic> json) {
  return _MovieListState.fromJson(json);
}

/// @nodoc
mixin _$MovieListState {
  List<Movie> get movie => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieListStateCopyWith<MovieListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieListStateCopyWith<$Res> {
  factory $MovieListStateCopyWith(
          MovieListState value, $Res Function(MovieListState) then) =
      _$MovieListStateCopyWithImpl<$Res, MovieListState>;
  @useResult
  $Res call({List<Movie> movie, bool isLoading});
}

/// @nodoc
class _$MovieListStateCopyWithImpl<$Res, $Val extends MovieListState>
    implements $MovieListStateCopyWith<$Res> {
  _$MovieListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movie = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      movie: null == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieListStateImplCopyWith<$Res>
    implements $MovieListStateCopyWith<$Res> {
  factory _$$MovieListStateImplCopyWith(_$MovieListStateImpl value,
          $Res Function(_$MovieListStateImpl) then) =
      __$$MovieListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Movie> movie, bool isLoading});
}

/// @nodoc
class __$$MovieListStateImplCopyWithImpl<$Res>
    extends _$MovieListStateCopyWithImpl<$Res, _$MovieListStateImpl>
    implements _$$MovieListStateImplCopyWith<$Res> {
  __$$MovieListStateImplCopyWithImpl(
      _$MovieListStateImpl _value, $Res Function(_$MovieListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movie = null,
    Object? isLoading = null,
  }) {
    return _then(_$MovieListStateImpl(
      movie: null == movie
          ? _value._movie
          : movie // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieListStateImpl implements _MovieListState {
  const _$MovieListStateImpl(
      {final List<Movie> movie = const [], this.isLoading = false})
      : _movie = movie;

  factory _$MovieListStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieListStateImplFromJson(json);

  final List<Movie> _movie;
  @override
  @JsonKey()
  List<Movie> get movie {
    if (_movie is EqualUnmodifiableListView) return _movie;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movie);
  }

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'MovieListState(movie: $movie, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieListStateImpl &&
            const DeepCollectionEquality().equals(other._movie, _movie) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_movie), isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieListStateImplCopyWith<_$MovieListStateImpl> get copyWith =>
      __$$MovieListStateImplCopyWithImpl<_$MovieListStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieListStateImplToJson(
      this,
    );
  }
}

abstract class _MovieListState implements MovieListState {
  const factory _MovieListState(
      {final List<Movie> movie, final bool isLoading}) = _$MovieListStateImpl;

  factory _MovieListState.fromJson(Map<String, dynamic> json) =
      _$MovieListStateImpl.fromJson;

  @override
  List<Movie> get movie;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$MovieListStateImplCopyWith<_$MovieListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
