import 'package:discoveryapis_generator/src/convert.dart';
import 'package:test/test.dart';

void main() {
  test('double', () {
    expect(decodeDouble(1), 1);
    expect(decodeDouble(1.1), 1.1);
    expect(decodeDouble(encodeDouble(1)), 1);
    expect(decodeDouble(encodeDouble(1.1)), 1.1);
  });

  test('double NaN', () {
    expect(decodeDouble('NaN'), isNaN);
    expect(decodeDouble('Infinity'), double.infinity);
    expect(decodeDouble('-Infinity'), double.negativeInfinity);

    // don't allow arbitrary strings for doubles
    expect(() => decodeDouble('1.0'), throwsFormatException);

    expect(encodeDouble(double.nan), 'NaN');
    expect(encodeDouble(double.infinity), 'Infinity');
    expect(encodeDouble(double.negativeInfinity), '-Infinity');
  });
}
