import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

String? status(int? alert) {
  // Add your function code here!
  if (alert == 4) return "LOW";

  if (alert == 3) return "MMODERATE";

  if (alert == 2) return "CONCERNING";

  if (alert == 1) return "HIGH";
}
