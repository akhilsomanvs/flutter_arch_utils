part of flutter_arch_utils;

extension ListSanityCheck on List {
  bool isNullOrEmpty() {
    return this == null || this.isEmpty;
  }

  String? listToJsonString() {
    return jsonEncode(List<dynamic>.from(this.map((x) => x.toJson())));
  }

  getRandomElement() {
    if (this == null || this.isEmpty) {
      return null;
    }
    final _random = new Random();
    return this[_random.nextInt(this.length)];
  }
}
