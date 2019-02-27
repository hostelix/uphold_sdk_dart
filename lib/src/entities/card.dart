/*
{
  "address": {
    "bitcoin": "ms22VBPSahNTxHZNkYo2d4Rmw1Tgfx6ojr"
  },
  "available": "146.38",
  "balance": "146.38",
  "currency": "EUR",
  "id": "bc9b3911-4bc1-4c6d-ac05-0ae87dcfc9b3",
  "label": "EUR card",
  "lastTransactionAt": "2018-08-01T09:53:51.258Z",
  "normalized": [{
    "available": "170.96",
    "balance": "170.96",
    "currency": "USD"
  }],
  "settings": {
    "position": 2,
    "protected": false,
    "starred": true
  }
}
*/
class Card {
  Map<String, String> _address;
  String _available;
  String _balance;
  String _currency;
  String _id;
  String _label;
  String _lastTransactionAt;
  List<Normalized> _normalized;
  Settings _settings;

  Card(
      {Map<String, String> address,
      String available,
      String balance,
      String currency,
      String id,
      String label,
      String lastTransactionAt,
      List<Normalized> normalized,
      Settings settings}) {
    this._address = address;
    this._available = available;
    this._balance = balance;
    this._currency = currency;
    this._id = id;
    this._label = label;
    this._lastTransactionAt = lastTransactionAt;
    this._normalized = normalized;
    this._settings = settings;
  }

  Map<String, String> get address => _address;
  set address(Map<String, String> address) => _address = address;
  String get available => _available;
  set available(String available) => _available = available;
  String get balance => _balance;
  set balance(String balance) => _balance = balance;
  String get currency => _currency;
  set currency(String currency) => _currency = currency;
  String get id => _id;
  set id(String id) => _id = id;
  String get label => _label;
  set label(String label) => _label = label;
  String get lastTransactionAt => _lastTransactionAt;
  set lastTransactionAt(String lastTransactionAt) =>
      _lastTransactionAt = lastTransactionAt;
  List<Normalized> get normalized => _normalized;
  set normalized(List<Normalized> normalized) => _normalized = normalized;
  Settings get settings => _settings;
  set settings(Settings settings) => _settings = settings;

  Card.fromJson(Map<String, dynamic> json) {
    _address = json['address'];
    _available = json['available'];
    _balance = json['balance'];
    _currency = json['currency'];
    _id = json['id'];
    _label = json['label'];
    _lastTransactionAt = json['lastTransactionAt'];
    if (json['normalized'] != null) {
      _normalized = new List<Normalized>();
      json['normalized'].forEach((v) {
        _normalized.add(new Normalized.fromJson(v));
      });
    }
    _settings = json['settings'] != null
        ? new Settings.fromJson(json['settings'])
        : null;
  }
}

class Address {
  String _bitcoin;

  Address({String bitcoin}) {
    this._bitcoin = bitcoin;
  }

  String get bitcoin => _bitcoin;
  set bitcoin(String bitcoin) => _bitcoin = bitcoin;

  Address.fromJson(Map<String, dynamic> json) {
    _bitcoin = json['bitcoin'];
  }
}

class Normalized {
  String _available;
  String _balance;
  String _currency;

  Normalized({String available, String balance, String currency}) {
    this._available = available;
    this._balance = balance;
    this._currency = currency;
  }

  String get available => _available;
  set available(String available) => _available = available;
  String get balance => _balance;
  set balance(String balance) => _balance = balance;
  String get currency => _currency;
  set currency(String currency) => _currency = currency;

  Normalized.fromJson(Map<String, dynamic> json) {
    _available = json['available'];
    _balance = json['balance'];
    _currency = json['currency'];
  }
}

class Settings {
  int _position;
  bool _protected;
  bool _starred;

  Settings({int position, bool protected, bool starred}) {
    this._position = position;
    this._protected = protected;
    this._starred = starred;
  }

  int get position => _position;
  set position(int position) => _position = position;
  bool get protected => _protected;
  set protected(bool protected) => _protected = protected;
  bool get starred => _starred;
  set starred(bool starred) => _starred = starred;

  Settings.fromJson(Map<String, dynamic> json) {
    _position = json['position'];
    _protected = json['protected'];
    _starred = json['starred'];
  }
}
