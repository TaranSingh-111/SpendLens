// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categories_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CategoriesEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoriesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoriesEvent()';
}


}

/// @nodoc
class $CategoriesEventCopyWith<$Res>  {
$CategoriesEventCopyWith(CategoriesEvent _, $Res Function(CategoriesEvent) __);
}


/// Adds pattern-matching-related methods to [CategoriesEvent].
extension CategoriesEventPatterns on CategoriesEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadCategories value)?  loadCategories,TResult Function( LoadCategoriesTotal value)?  loadCategoriesTotal,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadCategories() when loadCategories != null:
return loadCategories(_that);case LoadCategoriesTotal() when loadCategoriesTotal != null:
return loadCategoriesTotal(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadCategories value)  loadCategories,required TResult Function( LoadCategoriesTotal value)  loadCategoriesTotal,}){
final _that = this;
switch (_that) {
case LoadCategories():
return loadCategories(_that);case LoadCategoriesTotal():
return loadCategoriesTotal(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadCategories value)?  loadCategories,TResult? Function( LoadCategoriesTotal value)?  loadCategoriesTotal,}){
final _that = this;
switch (_that) {
case LoadCategories() when loadCategories != null:
return loadCategories(_that);case LoadCategoriesTotal() when loadCategoriesTotal != null:
return loadCategoriesTotal(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadCategories,TResult Function( DateTime startDate,  DateTime endDate)?  loadCategoriesTotal,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadCategories() when loadCategories != null:
return loadCategories();case LoadCategoriesTotal() when loadCategoriesTotal != null:
return loadCategoriesTotal(_that.startDate,_that.endDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadCategories,required TResult Function( DateTime startDate,  DateTime endDate)  loadCategoriesTotal,}) {final _that = this;
switch (_that) {
case LoadCategories():
return loadCategories();case LoadCategoriesTotal():
return loadCategoriesTotal(_that.startDate,_that.endDate);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadCategories,TResult? Function( DateTime startDate,  DateTime endDate)?  loadCategoriesTotal,}) {final _that = this;
switch (_that) {
case LoadCategories() when loadCategories != null:
return loadCategories();case LoadCategoriesTotal() when loadCategoriesTotal != null:
return loadCategoriesTotal(_that.startDate,_that.endDate);case _:
  return null;

}
}

}

/// @nodoc


class LoadCategories implements CategoriesEvent {
  const LoadCategories();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadCategories);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoriesEvent.loadCategories()';
}


}




/// @nodoc


class LoadCategoriesTotal implements CategoriesEvent {
  const LoadCategoriesTotal({required this.startDate, required this.endDate});
  

 final  DateTime startDate;
 final  DateTime endDate;

/// Create a copy of CategoriesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadCategoriesTotalCopyWith<LoadCategoriesTotal> get copyWith => _$LoadCategoriesTotalCopyWithImpl<LoadCategoriesTotal>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadCategoriesTotal&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate));
}


@override
int get hashCode => Object.hash(runtimeType,startDate,endDate);

@override
String toString() {
  return 'CategoriesEvent.loadCategoriesTotal(startDate: $startDate, endDate: $endDate)';
}


}

/// @nodoc
abstract mixin class $LoadCategoriesTotalCopyWith<$Res> implements $CategoriesEventCopyWith<$Res> {
  factory $LoadCategoriesTotalCopyWith(LoadCategoriesTotal value, $Res Function(LoadCategoriesTotal) _then) = _$LoadCategoriesTotalCopyWithImpl;
@useResult
$Res call({
 DateTime startDate, DateTime endDate
});




}
/// @nodoc
class _$LoadCategoriesTotalCopyWithImpl<$Res>
    implements $LoadCategoriesTotalCopyWith<$Res> {
  _$LoadCategoriesTotalCopyWithImpl(this._self, this._then);

  final LoadCategoriesTotal _self;
  final $Res Function(LoadCategoriesTotal) _then;

/// Create a copy of CategoriesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? startDate = null,Object? endDate = null,}) {
  return _then(LoadCategoriesTotal(
startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
