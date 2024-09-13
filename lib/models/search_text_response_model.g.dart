// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_text_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchTextResponseModel _$SearchTextResponseModelFromJson(
        Map<String, dynamic> json) =>
    SearchTextResponseModel(
      address: json['formatted_address'] as String,
      placeId: json['place_id'] as String,
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
      name: json['name'] as String?,
      types:
          (json['types'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$SearchTextResponseModelToJson(
        SearchTextResponseModel instance) =>
    <String, dynamic>{
      'formatted_address': instance.address,
      'place_id': instance.placeId,
      'name': instance.name,
      'lat': instance.lat,
      'lng': instance.lng,
      'types': instance.types,
    };
