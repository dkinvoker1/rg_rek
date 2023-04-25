import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rg_rek/core/errors/exceptions.dart';
import 'package:rg_rek/features/events/data/data_sources/remote/client/body_models/event_quick_search_body_model.dart';
import 'package:rg_rek/features/events/data/data_sources/remote/client/event_client.dart';
import 'package:rg_rek/features/events/data/data_sources/remote/default_remote_event_data_source.dart';
import 'package:rg_rek/features/events/data/models/response_model.dart';

import '../../../mock_data_objects/mock_models.dart';
import 'default_remote_event_data_source_test.mocks.dart';

@GenerateMocks([EventClient])
void main() {
  late MockEventClient mockClient;
  late DefaultRemoteEventDataSource dataSource;

  setUp(() {
    mockClient = MockEventClient();
    dataSource = DefaultRemoteEventDataSource(mockClient);
  });

  group(
    'getEventsByCategory',
    () {
      const tCategoryId = '1';

      void setUpResponseCode200() {
        when(mockClient.getEventsByCategory(tCategoryId)).thenAnswer(
          (_) async => tResponseModel,
        );
      }

      test(
        'should preform a GET request on a URL https://fuksiarz.pl/rest/market/categories/multi/{categoryId}/events',
        () async {
          //arrange
          setUpResponseCode200();
          //act
          dataSource.getEventsByCategory(tCategoryId);
          //assert
          verify(
            mockClient.getEventsByCategory(tCategoryId),
          );

          verifyNoMoreInteractions(mockClient);
        },
      );

      test(
        'should return List<EventModel> when the response code is 200',
        () async {
          // arrange
          setUpResponseCode200();

          // act
          final result = await dataSource.getEventsByCategory(tCategoryId);
          // assert
          expect(result, equals(tEventModel));
        },
      );

      void setUpResponseException() {
        when(mockClient.getEventsByCategory(tCategoryId))
            .thenThrow(Exception('an error ocured'));
      }

      test(
        'should throw ServerException when the response throws exception',
        () async {
          // arrange
          setUpResponseException();

          // act
          final call = dataSource.getEventsByCategory;
          // assert
          expect(() => call(tCategoryId),
              throwsA(const TypeMatcher<ServerException>()));
        },
      );
    },
  );

  group(
    'getEventSnapshotsByPhrase',
    () {
      const tPhrase = 'Mad';

      final tBody = EventQuickSearchBodyModel(
        pattern: tPhrase,
      );

      var tResponseModel = ResponseModel(
        code: 200,
        description: 'description',
        data: tSnapshotModelList,
      );

      void setUpResponseCode200() {
        when(
          mockClient.getEventSnapshotsByPhrase(tBody),
        ).thenAnswer(
          (_) async => tResponseModel,
        );
      }

      test(
        'should preform a GET request on a URL https://fuksiarz.pl/rest/search/events/quick-search',
        () async {
          //arrange
          setUpResponseCode200();
          //act
          dataSource.getEventSnapshotsByPhrase(tPhrase);
          //assert
          verify(
            mockClient.getEventSnapshotsByPhrase(tBody),
          );

          verifyNoMoreInteractions(mockClient);
        },
      );

      test(
        'should return List<EventSnapshotModel> when the response code is 200',
        () async {
          // arrange
          setUpResponseCode200();
          // act
          final result = await dataSource.getEventSnapshotsByPhrase(tPhrase);
          // assert
          expect(result, equals(tSnapshotModelList));
        },
      );

      void setUpResponseException() {
        when(mockClient.getEventSnapshotsByPhrase(tBody))
            .thenThrow(Exception('an error ocured'));
      }

      test(
        'should throw ServerException when the response is exception',
        () async {
          // arrange
          setUpResponseException();

          // act
          final call = dataSource.getEventSnapshotsByPhrase;
          // assert
          expect(() => call(tPhrase),
              throwsA(const TypeMatcher<ServerException>()));
        },
      );
    },
  );
}
