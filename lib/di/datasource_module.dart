import 'package:quiche_vpn/data/datasource/sliver/sliver_datasource.dart';
import 'package:quiche_vpn/data/datasource/sliver/sliver_datasource_type.dart';
import 'package:quiche_vpn/di/client_module.dart';

mixin DatasourceModule on ClientModule {
  /// SliverDataSource
  SliverDataSourceType get sliverDataSource {
    return SliverDataSource(apiClient: apiClient);
  }
}