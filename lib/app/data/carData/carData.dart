import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:listdata/app/data/cars.dart';


part 'carData.freezed.dart';
part 'carData.g.dart';

@freezed
class CarData with _$CarData {

  factory CarData({
    required List<Cars> cars
  }) = _CarData;

  factory CarData.fromJson(Map<String, dynamic> json) => _$CarDataFromJson(json);
}