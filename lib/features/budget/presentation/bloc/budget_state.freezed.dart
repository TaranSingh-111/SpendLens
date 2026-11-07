// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'budget_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BudgetState {

 BudgetLoadStatus get loadStatus; BudgetSaveStatus get saveStatus; Budget? get budget; String? get loadError; String? get saveError;
/// Create a copy of BudgetState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BudgetStateCopyWith<BudgetState> get copyWith => _$BudgetStateCopyWithImpl<BudgetState>(this as BudgetState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BudgetState&&(identical(other.loadStatus, loadStatus) || other.loadStatus == loadStatus)&&(identical(other.saveStatus, saveStatus) || other.saveStatus == saveStatus)&&(identical(other.budget, budget) || other.budget == budget)&&(identical(other.loadError, loadError) || other.loadError == loadError)&&(identical(other.saveError, saveError) || other.saveError == saveError));
}


@override
int get hashCode => Object.hash(runtimeType,loadStatus,saveStatus,budget,loadError,saveError);

@override
String toString() {
  return 'BudgetState(loadStatus: $loadStatus, saveStatus: $saveStatus, budget: $budget, loadError: $loadError, saveError: $saveError)';
}


}

/// @nodoc
abstract mixin class $BudgetStateCopyWith<$Res>  {
  factory $BudgetStateCopyWith(BudgetState value, $Res Function(BudgetState) _then) = _$BudgetStateCopyWithImpl;
@useResult
$Res call({
 BudgetLoadStatus loadStatus, BudgetSaveStatus saveStatus, Budget? budget, String? loadError, String? saveError
});


$BudgetCopyWith<$Res>? get budget;

}
/// @nodoc
class _$BudgetStateCopyWithImpl<$Res>
    implements $BudgetStateCopyWith<$Res> {
  _$BudgetStateCopyWithImpl(this._self, this._then);

  final BudgetState _self;
  final $Res Function(BudgetState) _then;

/// Create a copy of BudgetState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? loadStatus = null,Object? saveStatus = null,Object? budget = freezed,Object? loadError = freezed,Object? saveError = freezed,}) {
  return _then(_self.copyWith(
loadStatus: null == loadStatus ? _self.loadStatus : loadStatus // ignore: cast_nullable_to_non_nullable
as BudgetLoadStatus,saveStatus: null == saveStatus ? _self.saveStatus : saveStatus // ignore: cast_nullable_to_non_nullable
as BudgetSaveStatus,budget: freezed == budget ? _self.budget : budget // ignore: cast_nullable_to_non_nullable
as Budget?,loadError: freezed == loadError ? _self.loadError : loadError // ignore: cast_nullable_to_non_nullable
as String?,saveError: freezed == saveError ? _self.saveError : saveError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of BudgetState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BudgetCopyWith<$Res>? get budget {
    if (_self.budget == null) {
    return null;
  }

  return $BudgetCopyWith<$Res>(_self.budget!, (value) {
    return _then(_self.copyWith(budget: value));
  });
}
}


/// Adds pattern-matching-related methods to [BudgetState].
extension BudgetStatePatterns on BudgetState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BudgetState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BudgetState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BudgetState value)  $default,){
final _that = this;
switch (_that) {
case _BudgetState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BudgetState value)?  $default,){
final _that = this;
switch (_that) {
case _BudgetState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BudgetLoadStatus loadStatus,  BudgetSaveStatus saveStatus,  Budget? budget,  String? loadError,  String? saveError)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BudgetState() when $default != null:
return $default(_that.loadStatus,_that.saveStatus,_that.budget,_that.loadError,_that.saveError);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BudgetLoadStatus loadStatus,  BudgetSaveStatus saveStatus,  Budget? budget,  String? loadError,  String? saveError)  $default,) {final _that = this;
switch (_that) {
case _BudgetState():
return $default(_that.loadStatus,_that.saveStatus,_that.budget,_that.loadError,_that.saveError);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BudgetLoadStatus loadStatus,  BudgetSaveStatus saveStatus,  Budget? budget,  String? loadError,  String? saveError)?  $default,) {final _that = this;
switch (_that) {
case _BudgetState() when $default != null:
return $default(_that.loadStatus,_that.saveStatus,_that.budget,_that.loadError,_that.saveError);case _:
  return null;

}
}

}

/// @nodoc


class _BudgetState implements BudgetState {
  const _BudgetState({this.loadStatus = BudgetLoadStatus.initial, this.saveStatus = BudgetSaveStatus.initial, this.budget, this.loadError, this.saveError});
  

@override@JsonKey() final  BudgetLoadStatus loadStatus;
@override@JsonKey() final  BudgetSaveStatus saveStatus;
@override final  Budget? budget;
@override final  String? loadError;
@override final  String? saveError;

/// Create a copy of BudgetState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BudgetStateCopyWith<_BudgetState> get copyWith => __$BudgetStateCopyWithImpl<_BudgetState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BudgetState&&(identical(other.loadStatus, loadStatus) || other.loadStatus == loadStatus)&&(identical(other.saveStatus, saveStatus) || other.saveStatus == saveStatus)&&(identical(other.budget, budget) || other.budget == budget)&&(identical(other.loadError, loadError) || other.loadError == loadError)&&(identical(other.saveError, saveError) || other.saveError == saveError));
}


@override
int get hashCode => Object.hash(runtimeType,loadStatus,saveStatus,budget,loadError,saveError);

@override
String toString() {
  return 'BudgetState(loadStatus: $loadStatus, saveStatus: $saveStatus, budget: $budget, loadError: $loadError, saveError: $saveError)';
}


}

/// @nodoc
abstract mixin class _$BudgetStateCopyWith<$Res> implements $BudgetStateCopyWith<$Res> {
  factory _$BudgetStateCopyWith(_BudgetState value, $Res Function(_BudgetState) _then) = __$BudgetStateCopyWithImpl;
@override @useResult
$Res call({
 BudgetLoadStatus loadStatus, BudgetSaveStatus saveStatus, Budget? budget, String? loadError, String? saveError
});


@override $BudgetCopyWith<$Res>? get budget;

}
/// @nodoc
class __$BudgetStateCopyWithImpl<$Res>
    implements _$BudgetStateCopyWith<$Res> {
  __$BudgetStateCopyWithImpl(this._self, this._then);

  final _BudgetState _self;
  final $Res Function(_BudgetState) _then;

/// Create a copy of BudgetState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? loadStatus = null,Object? saveStatus = null,Object? budget = freezed,Object? loadError = freezed,Object? saveError = freezed,}) {
  return _then(_BudgetState(
loadStatus: null == loadStatus ? _self.loadStatus : loadStatus // ignore: cast_nullable_to_non_nullable
as BudgetLoadStatus,saveStatus: null == saveStatus ? _self.saveStatus : saveStatus // ignore: cast_nullable_to_non_nullable
as BudgetSaveStatus,budget: freezed == budget ? _self.budget : budget // ignore: cast_nullable_to_non_nullable
as Budget?,loadError: freezed == loadError ? _self.loadError : loadError // ignore: cast_nullable_to_non_nullable
as String?,saveError: freezed == saveError ? _self.saveError : saveError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of BudgetState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BudgetCopyWith<$Res>? get budget {
    if (_self.budget == null) {
    return null;
  }

  return $BudgetCopyWith<$Res>(_self.budget!, (value) {
    return _then(_self.copyWith(budget: value));
  });
}
}

// dart format on
