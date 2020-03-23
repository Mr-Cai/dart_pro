// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListResponse _$ListResponseFromJson(Map<String, dynamic> json) {
  return ListResponse(
    json['data'] == null
        ? null
        : Data.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ListResponseToJson(ListResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    (json['hot'] as List)
        ?.map((e) =>
            e == null ? null : IconTile.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'hot': instance.hot,
    };

IconTile _$IconTileFromJson(Map<String, dynamic> json) {
  return IconTile(
    json['icon'] as String,
  );
}

Map<String, dynamic> _$IconTileToJson(IconTile instance) => <String, dynamic>{
      'icon': instance.icon,
    };
