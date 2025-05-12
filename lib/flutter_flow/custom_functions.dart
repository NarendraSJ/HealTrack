import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

double stepsCounter(
  double? currentX,
  double? todaysStepCount,
  DateTime? storedDate,
  double? previousX,
  DateTime currentDate,
) {
  // If same day, increment step count
  if (storedDate != null &&
      storedDate.year == currentDate.year &&
      storedDate.month == currentDate.month &&
      storedDate.day == currentDate.day) {
    todaysStepCount = todaysStepCount! + (currentX! - previousX!).abs() / 0.5;
    previousX = currentX;
    return todaysStepCount;
  } else {
    // New day: reset step count to 1
    storedDate = currentDate;
    todaysStepCount = (currentX! - previousX!).abs() / 0.5;
    previousX = currentX;
    return todaysStepCount;
  }
}
