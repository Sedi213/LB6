import 'package:flutter_test/flutter_test.dart';
import 'package:lab_5/validator.dart';

void main() {
  group(
    'Password validator',
    () {
      final validator = Validator();
      test('Correct password returns true', () {
        const mock = 'Checkabc23{llllllll';
        final res = validator.validate(mock);
        expect(res, true);
      });
      test('No upper latin fails', () {
        const mock = 'asd23{llllllll';
        final res = validator.validate(mock);
        expect(res, false);
      });
      test('No lower latin fails', () {
        const mock = 'CHECK23{LLLLLLLLLLLLLLLLLLLLL';
        final res = validator.validate(mock);
        expect(res, false);
      });
      test('No number fails', () {
        const mock = 'Checkasd{llllllll';
        final res = validator.validate(mock);
        expect(res, false);
      });
      test('No special fails', () {
        const mock = 'Checkasd23llllllll';
        final res = validator.validate(mock);
        expect(res, false);
      });
      test('Not valid length fails', () {
        const mock = 'Chkads{';
        final res = validator.validate(mock);
        expect(res, false);
      });
    },
  );
}
