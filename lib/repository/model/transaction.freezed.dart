// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Transaction _$TransactionFromJson(Map<String, dynamic> json) {
  return _Transaction.fromJson(json);
}

/// @nodoc
class _$TransactionTearOff {
  const _$TransactionTearOff();

  _Transaction call(
      {required int id,
      required String currency,
      required String shortName,
      required String price,
      required String date,
      required String transectionType}) {
    return _Transaction(
      id: id,
      currency: currency,
      shortName: shortName,
      price: price,
      date: date,
      transectionType: transectionType,
    );
  }

  Transaction fromJson(Map<String, Object?> json) {
    return Transaction.fromJson(json);
  }
}

/// @nodoc
const $Transaction = _$TransactionTearOff();

/// @nodoc
mixin _$Transaction {
  int get id => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  String get shortName => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get transectionType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionCopyWith<Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCopyWith<$Res> {
  factory $TransactionCopyWith(
          Transaction value, $Res Function(Transaction) then) =
      _$TransactionCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String currency,
      String shortName,
      String price,
      String date,
      String transectionType});
}

/// @nodoc
class _$TransactionCopyWithImpl<$Res> implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._value, this._then);

  final Transaction _value;
  // ignore: unused_field
  final $Res Function(Transaction) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? currency = freezed,
    Object? shortName = freezed,
    Object? price = freezed,
    Object? date = freezed,
    Object? transectionType = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      shortName: shortName == freezed
          ? _value.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      transectionType: transectionType == freezed
          ? _value.transectionType
          : transectionType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TransactionCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$TransactionCopyWith(
          _Transaction value, $Res Function(_Transaction) then) =
      __$TransactionCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String currency,
      String shortName,
      String price,
      String date,
      String transectionType});
}

/// @nodoc
class __$TransactionCopyWithImpl<$Res> extends _$TransactionCopyWithImpl<$Res>
    implements _$TransactionCopyWith<$Res> {
  __$TransactionCopyWithImpl(
      _Transaction _value, $Res Function(_Transaction) _then)
      : super(_value, (v) => _then(v as _Transaction));

  @override
  _Transaction get _value => super._value as _Transaction;

  @override
  $Res call({
    Object? id = freezed,
    Object? currency = freezed,
    Object? shortName = freezed,
    Object? price = freezed,
    Object? date = freezed,
    Object? transectionType = freezed,
  }) {
    return _then(_Transaction(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      shortName: shortName == freezed
          ? _value.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      transectionType: transectionType == freezed
          ? _value.transectionType
          : transectionType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Transaction implements _Transaction {
  const _$_Transaction(
      {required this.id,
      required this.currency,
      required this.shortName,
      required this.price,
      required this.date,
      required this.transectionType});

  factory _$_Transaction.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionFromJson(json);

  @override
  final int id;
  @override
  final String currency;
  @override
  final String shortName;
  @override
  final String price;
  @override
  final String date;
  @override
  final String transectionType;

  @override
  String toString() {
    return 'Transaction(id: $id, currency: $currency, shortName: $shortName, price: $price, date: $date, transectionType: $transectionType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Transaction &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.currency, currency) &&
            const DeepCollectionEquality().equals(other.shortName, shortName) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality()
                .equals(other.transectionType, transectionType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(currency),
      const DeepCollectionEquality().hash(shortName),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(transectionType));

  @JsonKey(ignore: true)
  @override
  _$TransactionCopyWith<_Transaction> get copyWith =>
      __$TransactionCopyWithImpl<_Transaction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionToJson(this);
  }
}

abstract class _Transaction implements Transaction {
  const factory _Transaction(
      {required int id,
      required String currency,
      required String shortName,
      required String price,
      required String date,
      required String transectionType}) = _$_Transaction;

  factory _Transaction.fromJson(Map<String, dynamic> json) =
      _$_Transaction.fromJson;

  @override
  int get id;
  @override
  String get currency;
  @override
  String get shortName;
  @override
  String get price;
  @override
  String get date;
  @override
  String get transectionType;
  @override
  @JsonKey(ignore: true)
  _$TransactionCopyWith<_Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}
