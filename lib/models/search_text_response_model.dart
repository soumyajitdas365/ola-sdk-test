import 'package:json_annotation/json_annotation.dart';
part 'search_text_response_model.g.dart';

@JsonSerializable()
class SearchTextResponseModel {
  @JsonKey(name: 'formatted_address')
  final String address;
  @JsonKey(name: 'place_id')
  final String placeId;
  final String? name;
  final double? lat;
  final double? lng;
  final List<String>? types;
  SearchTextResponseModel(
      {required this.address,
      required this.placeId,
      this.lat,
      this.lng,
      this.name,
      this.types});
  factory SearchTextResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SearchTextResponseModelFromJson(json);
  Map<String, dynamic> toJson() => _$SearchTextResponseModelToJson(this);
  @override
  String toString() {
    return address;
  }
}
