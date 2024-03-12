import 'package:freezed_annotation/freezed_annotation.dart';

part 'cars.freezed.dart';
part 'cars.g.dart';

@freezed
class Cars with _$Cars {

  factory Cars({

    required int id,
    required String car,
    @JsonKey(name: 'car_model') required String model,
    required String price,
    required bool availability,

  }) = _Cars;

  factory Cars.fromJson(Map<String, dynamic> json) => _$CarsFromJson(json);
}