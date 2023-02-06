class ClassName {
  static ClassName? _instance;

  // Avoid self instance
  ClassName._();

  static ClassName get instance {
    _instance ??= ClassName._();
    return _instance!;
  }
}
