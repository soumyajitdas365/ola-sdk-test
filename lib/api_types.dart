abstract class ApiType {}

class AutoComplete implements ApiType {
  final int? radius;
  final bool? strictbounds;
  final String? location;
  const AutoComplete({
    this.location,
    this.radius,
    this.strictbounds,
  });
}

class SearchText implements ApiType {
  final int? radius;
  final String? location;
  final String? types;
  final int? size;
  const SearchText({
    this.location,
    this.radius,
    this.size,
    this.types,
  });
}
