// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cars.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CarsImpl _$$CarsImplFromJson(Map<String, dynamic> json) => _$CarsImpl(
      id: json['id'] as int,
      car: json['car'] as String,
      model: json['car_model'] as String,
      price: json['price'] as String,
      availability: json['availability'] as bool,
    );

Map<String, dynamic> _$$CarsImplToJson(_$CarsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'car': instance.car,
      'car_model': instance.model,
      'price': instance.price,
      'availability': instance.availability,
    };
