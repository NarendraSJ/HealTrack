import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _previousX = prefs.getDouble('ff_previousX') ?? _previousX;
    });
    _safeInit(() {
      _storedDate = prefs.containsKey('ff_storedDate')
          ? DateTime.fromMillisecondsSinceEpoch(prefs.getInt('ff_storedDate')!)
          : _storedDate;
    });
    _safeInit(() {
      _todaysStepCount = prefs.getInt('ff_todaysStepCount') ?? _todaysStepCount;
    });
    _safeInit(() {
      _userName = prefs.getString('ff_userName') ?? _userName;
    });
    _safeInit(() {
      _Age = prefs.getInt('ff_Age') ?? _Age;
    });
    _safeInit(() {
      _Gender = prefs.getString('ff_Gender') ?? _Gender;
    });
    _safeInit(() {
      _mobNo = prefs.getInt('ff_mobNo') ?? _mobNo;
    });
    _safeInit(() {
      _Doctor = prefs.getString('ff_Doctor') ?? _Doctor;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  double _previousX = 0.0;
  double get previousX => _previousX;
  set previousX(double value) {
    _previousX = value;
    prefs.setDouble('ff_previousX', value);
  }

  DateTime? _storedDate = DateTime.fromMillisecondsSinceEpoch(1747065720000);
  DateTime? get storedDate => _storedDate;
  set storedDate(DateTime? value) {
    _storedDate = value;
    value != null
        ? prefs.setInt('ff_storedDate', value.millisecondsSinceEpoch)
        : prefs.remove('ff_storedDate');
  }

  int _todaysStepCount = 0;
  int get todaysStepCount => _todaysStepCount;
  set todaysStepCount(int value) {
    _todaysStepCount = value;
    prefs.setInt('ff_todaysStepCount', value);
  }

  String _userName = '';
  String get userName => _userName;
  set userName(String value) {
    _userName = value;
    prefs.setString('ff_userName', value);
  }

  int _Age = 0;
  int get Age => _Age;
  set Age(int value) {
    _Age = value;
    prefs.setInt('ff_Age', value);
  }

  String _Gender = '';
  String get Gender => _Gender;
  set Gender(String value) {
    _Gender = value;
    prefs.setString('ff_Gender', value);
  }

  int _mobNo = 0;
  int get mobNo => _mobNo;
  set mobNo(int value) {
    _mobNo = value;
    prefs.setInt('ff_mobNo', value);
  }

  String _Doctor = '';
  String get Doctor => _Doctor;
  set Doctor(String value) {
    _Doctor = value;
    prefs.setString('ff_Doctor', value);
  }

  int _pulse = 0;
  int get pulse => _pulse;
  set pulse(int value) {
    _pulse = value;
  }

  int _heartrate = 0;
  int get heartrate => _heartrate;
  set heartrate(int value) {
    _heartrate = value;
  }

  int _spO2 = 0;
  int get spO2 => _spO2;
  set spO2(int value) {
    _spO2 = value;
  }

  int _stepCount = 0;
  int get stepCount => _stepCount;
  set stepCount(int value) {
    _stepCount = value;
  }

  double _sleepduration = 0.0;
  double get sleepduration => _sleepduration;
  set sleepduration(double value) {
    _sleepduration = value;
  }

  String _sleepQuality = '';
  String get sleepQuality => _sleepQuality;
  set sleepQuality(String value) {
    _sleepQuality = value;
  }

  double _sittingDuration = 0.0;
  double get sittingDuration => _sittingDuration;
  set sittingDuration(double value) {
    _sittingDuration = value;
  }

  int _standingDuration = 0;
  int get standingDuration => _standingDuration;
  set standingDuration(int value) {
    _standingDuration = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
