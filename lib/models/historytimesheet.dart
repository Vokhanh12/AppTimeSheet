class historytimesheet {
  String _timeRegister = "";
  String _timeNow = "";
  String _dateTime = "";

  historytimesheet(this._timeRegister, this._timeNow, this._dateTime);

  // Getter cho _timeRegister
  String get timeRegister => _timeRegister;

  // Setter cho _timeRegister
  set timeRegister(String value) {
    _timeRegister = value;
  }

  // Getter cho _timeNow
  String get timeNow => _timeNow;

  // Setter cho _timeNow
  set timeNow(String value) {
    _timeNow = value;
  }

  // Getter cho _dateTime
  String get dateTime => _dateTime;

  // Setter cho _dateTime
  set dateTime(String value) {
    _dateTime = value;
  }
}
