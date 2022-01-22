import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DemoLocalizations {
  DemoLocalizations(this.locale);

  final Locale locale;

  static DemoLocalizations of(BuildContext context) {
    if (context == null) return null;
    return Localizations.of<DemoLocalizations>(context, DemoLocalizations);
  }

  Map<String, String> _sentences;

  Future<bool> load() async {
    String data = await rootBundle
        .loadString('assets/lang/${this.locale.languageCode}.json');
    Map<String, dynamic> _result = json.decode(data);

    this._sentences = new Map();
    _result.forEach((String key, dynamic value) {
      this._sentences[key] = value.toString();
    });

    return true;
  }

  String translation(String key) {
    return this._sentences[key] == null ? '' : this._sentences[key];
  }
}
