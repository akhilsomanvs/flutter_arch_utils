part of flutter_arch_utils;
extension JsonCheck on Map<String, dynamic> {
  checkAndReturn(String key) {
    if (this.containsKey(key)) {
      return this[key];
    } else {
      return null;
    }
  }
}
