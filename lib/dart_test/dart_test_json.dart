void main(List<String> args) {
  var myMap = {
    "name": "phaengkham",
    "age": "28",
    "city": "laos",
    "address": [
      {"district": "Oudomxay", "city": "laos"},
      {"disdrict": "Vientiane", "Laos": "laos"}
    ]
  };
}

class person {
  String? name;
  double? age;
  String? city;
  List<Address>? address;

  person({this.name, this.age, this.city, this.address});
}

class Address {
  String? disdrict;
  String? city;
  Address({this.disdrict, this.city});
}
