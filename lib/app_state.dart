import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _alertsHandledToday =
        prefs.getInt('ff_alertsHandledToday') ?? _alertsHandledToday;
    _avgLogs = prefs.getInt('ff_avgLogs') ?? _avgLogs;
    _uidref = prefs.getString('ff_uidref') ?? _uidref;
  }

  late SharedPreferences prefs;

  String test = 'https://demo.elastic.co/app/kibana_overview#/';

  int _alertsHandledToday = 0;
  int get alertsHandledToday => _alertsHandledToday;
  set alertsHandledToday(int _value) {
    _alertsHandledToday = _value;
    prefs.setInt('ff_alertsHandledToday', _value);
  }

  int _avgLogs = 0;
  int get avgLogs => _avgLogs;
  set avgLogs(int _value) {
    _avgLogs = _value;
    prefs.setInt('ff_avgLogs', _value);
  }

  String _uidref = '';
  String get uidref => _uidref;
  set uidref(String _value) {
    _uidref = _value;
    prefs.setString('ff_uidref', _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
