// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auto_complete_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AutoCompleteResponseModel _$AutoCompleteResponseModelFromJson(
        Map<String, dynamic> json) =>
    AutoCompleteResponseModel(
      address: json['description'] as String,
      placeId: json['place_id'] as String,
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$AutoCompleteResponseModelToJson(
        AutoCompleteResponseModel instance) =>
    <String, dynamic>{
      'description': instance.address,
      'place_id': instance.placeId,
      'lat': instance.lat,
      'lng': instance.lng,
    };
