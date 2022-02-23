import 'dart:convert';

String prettyJsonEncode(Object? object) =>
    const JsonEncoder.withIndent(' ').convert(object);
