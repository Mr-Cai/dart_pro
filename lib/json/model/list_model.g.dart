// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListResponse _$ListResponseFromJson(Map<String, dynamic> json) {
  return ListResponse(
    msg: json['msg'] as String,
    data: json['data'] == null
        ? null
        : Data.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ListResponseToJson(ListResponse instance) =>
    <String, dynamic>{
      'msg': instance.msg,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    hot: (json['hot'] as List)
        ?.map((e) =>
            e == null ? null : IconTile.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    personal: (json['personal'] as List)
        ?.map((e) =>
            e == null ? null : IconTile.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    recent: (json['recent'] as List)
        ?.map((e) =>
            e == null ? null : IconTile.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    plugin: (json['plugin'] as List)
        ?.map((e) =>
            e == null ? null : Plugin.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    guess: (json['guess'] as List)
        ?.map((e) =>
            e == null ? null : IconTile.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    leisure: (json['leisure'] as List)
        ?.map((e) =>
            e == null ? null : IconTile.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    raise: (json['raise'] as List)
        ?.map((e) =>
            e == null ? null : IconTile.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    explore: (json['explore'] as List)
        ?.map((e) =>
            e == null ? null : IconTile.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'hot': instance.hot,
      'personal': instance.personal,
      'recent': instance.recent,
      'plugin': instance.plugin,
      'guess': instance.guess,
      'leisure': instance.leisure,
      'raise': instance.raise,
      'explore': instance.explore,
    };

Plugin _$PluginFromJson(Map<String, dynamic> json) {
  return Plugin(
    cover: json['cover'] as String,
  );
}

Map<String, dynamic> _$PluginToJson(Plugin instance) => <String, dynamic>{
      'cover': instance.cover,
    };

IconTile _$IconTileFromJson(Map<String, dynamic> json) {
  return IconTile(
    icon: json['icon'] as String,
    name: json['name'] as String,
    desc: json['desc'] as String,
    link: json['link'] as String,
  );
}

Map<String, dynamic> _$IconTileToJson(IconTile instance) => <String, dynamic>{
      'icon': instance.icon,
      'name': instance.name,
      'desc': instance.desc,
      'link': instance.link,
    };
