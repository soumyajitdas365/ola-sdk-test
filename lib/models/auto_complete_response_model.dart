import 'package:json_annotation/json_annotation.dart';

part 'auto_complete_response_model.g.dart';

@JsonSerializable()
class AutoCompleteResponseModel {
  @JsonKey(name: 'description')
  String address;
  @JsonKey(name: 'place_id')
  String placeId;
  double? lat;
  double? lng;
  AutoCompleteResponseModel({
    required this.address,
    required this.placeId,
    this.lat,
    this.lng,
  });

  factory AutoCompleteResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AutoCompleteResponseModelFromJson(json);
  Map<String, dynamic> toJson() => _$AutoCompleteResponseModelToJson(this);

  @override
  String toString() {
    return address;
  }
}
