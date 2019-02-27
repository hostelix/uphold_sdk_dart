/*
{
  "ask": "6420.05",
  "bid": "6419",
  "currency": "USD",
  "pair": "BTCUSD"
}
*/
class Currency {
  String _ask;
  String _bid;
  String _currency;
  String _pair;

  Currency({String ask, String bid, String currency, String pair}) {
    this._ask = ask;
    this._bid = bid;
    this._currency = currency;
    this._pair = pair;
  }

  String get ask => _ask;
  set ask(String ask) => _ask = ask;
  String get bid => _bid;
  set bid(String bid) => _bid = bid;
  String get currency => _currency;
  set currency(String currency) => _currency = currency;
  String get pair => _pair;
  set pair(String pair) => _pair = pair;

  Currency.fromJson(Map<String, dynamic> json) {
    _ask = json['ask'];
    _bid = json['bid'];
    _currency = json['currency'];
    _pair = json['pair'];
  }
}
