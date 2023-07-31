import 'dart:html';

class user {
  String _NameEmployee = "";
  String _Offical = "";
  String _Rank = "";
  String _TypeOfWork = "";
  String _Email = "";
  String _Status = "";
  String _Creator = "";
  String _DateCreated = "";

  user(String NameEmployee, String Offical, String Rank, String TypeOfWork,
      String Email, String Status, String Creator, String DateCreated) {
    this._NameEmployee = NameEmployee;
    this._Offical = Offical;
    this._Rank = Rank;
    this._TypeOfWork = TypeOfWork;
    this._Email = Email;
    this._Status = Status;
    this._Creator = Creator;
    this._DateCreated = DateCreated;
  }

  get getNameEmployee {
    return _NameEmployee;
  }

  get getOffical {
    return _Offical;
  }

  get getRank {
    return _Rank;
  }

  get getTypeOfWork {
    return _TypeOfWork;
  }

  get getEmail {
    return _Email;
  }

  get getStatus {
    return _Status;
  }

  get getCreator {
    return _Creator;
  }

  get getDateCreated {
    return _DateCreated;
  }

  // Setter

  set setNameEmployee(value) {
    this._NameEmployee = value;
  }

  set setOffical(value) {
    this._Offical = value;
  }

  set setRank(value) {
    this._Rank = value;
  }

  set setTypeOfWork(value) {
    this._TypeOfWork = value;
  }

  set setEmail(value) {
    this._Email = value;
  }

  set setStatus(value) {
    this.setStatus = value;
  }

  set setCreator(value) {
    this.setCreator = value;
  }

  set getDateCreated(value) {
    this._DateCreated = value;
  }
}
