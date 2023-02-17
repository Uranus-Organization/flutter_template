import 'package:quiche_vpn/di/repository_module.dart';
import 'package:quiche_vpn/domain/usecase/sliver/sliver_usecase.dart';
import 'package:quiche_vpn/domain/usecase/sliver/sliver_usecase_type.dart';

mixin UseCaseModule on RepositoryModule {
  /// SliverUseCase
  SliverUseCaseType get sliverUseCase {
    return SliverUseCase(repository: sliverRepository);
  }
}