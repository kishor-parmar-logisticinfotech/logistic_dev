import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logistic_dev/logistic_dev.dart';

void main() {
  const MethodChannel channel = MethodChannel('logistic_dev');

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
    expect(await LogisticDev.platformVersion, '42');
  });
}
