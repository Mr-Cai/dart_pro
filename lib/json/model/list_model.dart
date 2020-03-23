import 'package:json_annotation/json_annotation.dart';
part 'list_model.g.dart';

@JsonSerializable()
class ListResponse {
  ListResponse(this.data);

  final Data data;

  factory ListResponse.fromJson(Map<String, dynamic> json) =>
      _$ListResponseFromJson(json);
  Map<String, dynamic> toJson(ListResponse instance) =>
      _$ListResponseToJson(instance);
}

@JsonSerializable()
class Data {
  Data(this.hot);

  final List<IconTile> hot;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson(Data instance) => _$DataToJson(instance);
}

@JsonSerializable()
class IconTile {
  IconTile(this.icon);

  final String icon;

  factory IconTile.fromJson(Map<String, dynamic> json) =>
      _$IconTileFromJson(json);
      
  Map<String, dynamic> toJson(IconTile instance) => _$IconTileToJson(instance);
}
