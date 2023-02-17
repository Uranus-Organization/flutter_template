import 'package:quiche_vpn/di/datasource_module.dart';
import 'package:quiche_vpn/repository/sliver/sliver_repository.dart';
import 'package:quiche_vpn/repository/sliver/sliver_repository_type.dart';

mixin RepositoryModule on DatasourceModule {
  /// SliverRepository
  SliverRepositoryType get sliverRepository {
    return SliverRepository(dataSource: sliverDataSource);
  }
}