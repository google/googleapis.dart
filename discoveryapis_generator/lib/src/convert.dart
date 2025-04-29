/// Utilities to assist with JSON encoding and decoding.
library;

/// Encode 'float` and `double` values into JSON.
Object? encodeDouble(double? value) {
  if (value == null) {
    return null;
  }

  return value.isNaN || value.isInfinite ? '$value' : value;
}

/// Decode a `double` value.
double decodeDouble(dynamic value) {
  if (value is String) {
    if (value == 'NaN' || value == 'Infinity' || value == '-Infinity') {
      return double.parse(value);
    } else {
      throw const FormatException('expected NaN, Infinity, or -Infinity');
    }
  } else {
    return (value as num).toDouble();
  }
}
