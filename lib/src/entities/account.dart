/*{
  "billing": {
    "name": "Abigail Davis"
  },
  "brand": "visa",
  "currency": "USD",
  "id": "0874745c-f0bf-4973-a3d9-9832aeaae087",
  "label": "Savings Account",
  "status": "ok",
  "type": "card"
}*/
class Account {
  Map<String, String> _billing;
  String _brand;
  String _currency;
  String _id;
  String _label;
  String _status;
  String _type;

  Map<String, String> get billing => _billing;
  String get brand => _brand;
  String get currency => _currency;
  String get id => _id;
  String get label => _label;
  String get type => _type;
  String get status => _status;

  Account.fromJson(Map<String, dynamic> data) {
    _billing = data['billing'];
    _brand = data['brand'];
    _currency = data['currency'];
    _id = data['id'];
    _label = data['label'];
    _status = data['status'];
    _type = data['type'];
  }
}
