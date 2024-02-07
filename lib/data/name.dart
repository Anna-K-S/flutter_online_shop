class Name {
  final String? firstName;
  final String? finalName;

  Name({
    required this.firstName,
    required this.finalName,
  });

  factory Name.fromJson(Map<String, dynamic> json) {
    return Name(
      firstName: json['firstname'] as String,
      finalName: json['finalname'] as String,
    );
  }
}
