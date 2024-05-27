class AddressResult {
  final String title;
  final String id;
  final Map<String, dynamic> address;
  final Map<String, dynamic> position;

  AddressResult({
    required this.title,
    required this.id,
    required this.address,
    required this.position,
  });

  factory AddressResult.fromJson(Map<String, dynamic> json) {
    return AddressResult(
      title: json['title'],
      id: json['id'],
      address: json['address'],
      position: json['position'],
    );
  }
}
