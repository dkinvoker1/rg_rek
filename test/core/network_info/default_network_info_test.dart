import 'package:flutter_test/flutter_test.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rg_rek/core/network_info/default_network_info.dart';

import 'default_network_info_test.mocks.dart';

@GenerateMocks([InternetConnectionChecker])
void main() {
  late MockInternetConnectionChecker mockInternetConnectionChecker;
  late DefaultNetworkInfo networkInfo;

  setUp(() {
    mockInternetConnectionChecker = MockInternetConnectionChecker();
    networkInfo = DefaultNetworkInfo(mockInternetConnectionChecker);
  });

  test(
    'should forward hasConnection value',
    () async {
      //arrange
      final tHasConnectionFuture = Future.value(true);
      when(mockInternetConnectionChecker.hasConnection)
          .thenAnswer((_) => tHasConnectionFuture);
      //act
      final result = networkInfo.isConnected;
      //assert
      verify(mockInternetConnectionChecker.hasConnection);
      verifyNoMoreInteractions(mockInternetConnectionChecker);
      expect(result, tHasConnectionFuture);
    },
  );
}
