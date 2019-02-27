/*
{
  "addresses": [
    "mtRwYWGKe1hYqNJ5fSTogXWPnFxoQrPYo6"
  ],
  "company": "Independent",
  "emails": [
    "han.solo@rebelalliance.org"
  ],
  "firstName": "Han",
  "id": "c4db98e4-c9e1-46dc-a927-17a26fb9772c",
  "lastName": "Solo",
  "name": "Han Solo"
}
*/
class Contact {
  List<String> _addresses;
  String _company;
  List<String> _emails;
  String _firstName;
  String _id;
  String _lastName;
  String _name;

  Contact(
      {List<String> addresses,
      String company,
      List<String> emails,
      String firstName,
      String id,
      String lastName,
      String name}) {
    this._addresses = addresses;
    this._company = company;
    this._emails = emails;
    this._firstName = firstName;
    this._id = id;
    this._lastName = lastName;
    this._name = name;
  }

  List<String> get addresses => _addresses;
  set addresses(List<String> addresses) => _addresses = addresses;
  String get company => _company;
  set company(String company) => _company = company;
  List<String> get emails => _emails;
  set emails(List<String> emails) => _emails = emails;
  String get firstName => _firstName;
  set firstName(String firstName) => _firstName = firstName;
  String get id => _id;
  set id(String id) => _id = id;
  String get lastName => _lastName;
  set lastName(String lastName) => _lastName = lastName;
  String get name => _name;
  set name(String name) => _name = name;

  Contact.fromJson(Map<String, dynamic> json) {
    _addresses = json['addresses'].cast<String>();
    _company = json['company'];
    _emails = json['emails'].cast<String>();
    _firstName = json['firstName'];
    _id = json['id'];
    _lastName = json['lastName'];
    _name = json['name'];
  }
}
