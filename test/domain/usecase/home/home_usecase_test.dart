/*
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:quiche_vpn/data/api/response/quiche_response.dart';
import 'package:quiche_vpn/data/error_response.dart';
import 'package:quiche_vpn/domain/model/failure.dart';
import 'package:quiche_vpn/domain/model/quiche.dart';
import 'package:quiche_vpn/domain/translator/home_translator.dart';
import 'package:quiche_vpn/domain/usecase/home/home_usecase.dart';
import 'package:quiche_vpn/domain/usecase/home/home_usecase_type.dart';
import 'package:quiche_vpn/repository/home/home_repository.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import '../../../mock/home_responses_mock.dart';
import 'home_usecase_test.mocks.dart';

class MockHomeRepository extends Mock implements HomeRepository { }

@GenerateMocks(<Type>[MockHomeRepository])
void main() {
  late MockMockHomeRepository mockHomeRepository;
  late quicheResponse quicheResponse;
  setUp(() {
    mockHomeRepository = MockMockHomeRepository();
    quicheResponse = HomeResponsesMock.quicheResponse;
  });
  group('HomeUseCase', () {
    test('getquicheDoctor should return a quicheDoctor response', () async {
      when(
          mockHomeRepository
              .getquicheDoctor())
          .thenAnswer((_) async => right(quicheResponse)
      );
      final HomeUseCaseType homeUseCase = HomeUseCase(repository: mockHomeRepository);
      final Either<Failure, quiche> response = await homeUseCase.getquicheDoctor();
      expect(HomeTranslator.toModel(response: quicheResponse), response.toOption().toNullable());
    });

    test('getquicheDoctor should return a Failure', () async {
      when(
          mockHomeRepository
              .getquicheDoctor())
          .thenAnswer((_) async => left(const UnknownErrorResponse())
      );
      final HomeUseCaseType homeUseCase = HomeUseCase(repository: mockHomeRepository);
      final Either<Failure, quiche> response = await homeUseCase.getquicheDoctor();
      expect(response.isLeft(), isTrue);
    });
  });
}
 */