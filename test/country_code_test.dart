import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:country_code_list/country_code.dart';

void main() {
  const MethodChannel channel = MethodChannel('country_code');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await CountryCode.platformVersion, '42');
  });
}
