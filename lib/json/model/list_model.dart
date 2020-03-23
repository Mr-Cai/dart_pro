import 'package:json_annotation/json_annotation.dart';

part 'list_model.g.dart';

@JsonSerializable()
class ListResponse {
  ListResponse({this.msg, this.data});

  final String msg;
  final Data data;

  factory ListResponse.fromJson(Map<String, dynamic> json) =>
      _$ListResponseFromJson(json);

  Map<String, dynamic> toJson(ListResponse instance) =>
      _$ListResponseToJson(instance);
}

@JsonSerializable()
class Data {
  Data({
    this.hot,
    this.personal,
    this.recent,
    this.plugin,
    this.guess,
    this.leisure,
    this.raise,
    this.explore,
  });
  final List<IconTile> hot;
  final List<IconTile> personal;
  final List<IconTile> recent;
  final List<Plugin> plugin;
  final List<IconTile> guess;
  final List<IconTile> leisure;
  final List<IconTile> raise;
  final List<IconTile> explore;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson(Data instance) => _$DataToJson(instance);
}

@JsonSerializable()
class Plugin {
  Plugin({this.cover});

  final String cover;

  factory Plugin.fromJson(Map<String, dynamic> json) => _$PluginFromJson(json);

  Map<String, dynamic> toJson(Plugin instance) => _$PluginToJson(instance);
}

@JsonSerializable()
class IconTile {
  IconTile({this.icon, this.name, this.desc, this.link});

  final String icon;
  final String name;
  final String desc;
  final String link;

  factory IconTile.fromJson(Map<String, dynamic> json) =>
      _$IconTileFromJson(json);

  Map<String, dynamic> toJson(IconTile instance) => _$IconTileToJson(instance);
}
