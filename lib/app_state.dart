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
    _email = prefs.getString('ff_email') ?? _email;
    _traffic =
        prefs.getStringList('ff_traffic')?.map(int.parse).toList() ?? _traffic;
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

  String _email = '';
  String get email => _email;
  set email(String _value) {
    _email = _value;
    prefs.setString('ff_email', _value);
  }

  List<int> _traffic = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> get traffic => _traffic;
  set traffic(List<int> _value) {
    _traffic = _value;
    prefs.setStringList('ff_traffic', _value.map((x) => x.toString()).toList());
  }

  void addToTraffic(int _value) {
    _traffic.add(_value);
    prefs.setStringList(
        'ff_traffic', _traffic.map((x) => x.toString()).toList());
  }

  void removeFromTraffic(int _value) {
    _traffic.remove(_value);
    prefs.setStringList(
        'ff_traffic', _traffic.map((x) => x.toString()).toList());
  }

  List<int> time = [1, 2, 4, 6, 8, 2, 1, 9, 7, 4];
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
