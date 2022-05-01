// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Transaction _$$_TransactionFromJson(Map<String, dynamic> json) =>
    _$_Transaction(
      id: json['id'] as int,
      currency: json['currency'] as String,
      shortName: json['shortName'] as String,
      price: json['price'] as String,
      date: json['date'] as String,
      transectionType: json['transectionType'] as String,
    );

Map<String, dynamic> _$$_TransactionToJson(_$_Transaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'currency': instance.currency,
      'shortName': instance.shortName,
      'price': instance.price,
      'date': instance.date,
      'transectionType': instance.transectionType,
    };
