extension JsonCheck on Map<String, dynamic> {
  checkAndReturn(String key) {
    if (this.containsKey(key)) {
      return this[key];
    } else {
      return null;
    }
  }
}
