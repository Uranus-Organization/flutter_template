import 'package:quiche_vpn/data/api/api_client/api_client.dart';
import 'package:quiche_vpn/data/api/api_client/api_client_type.dart';
import 'package:quiche_vpn/di/config_module.dart';

mixin ClientModule on ConfigModule {
  /// API/REST Client
  APIClientType get apiClient {
    return APIClient.apiClient(
        baseDomain: appConfig.baseDomain,
        authToken: appSecureConfig.authToken
    );
  }
  // GraphQL Client
  /*
  GraphqlClientType get graphqlClient {
    return GraphqlClient(
        endPoint: appConfig.graphqlEndPoint,
        authToken: appSecureConfig.graphqlAuthToken
    );
  }
   */
}