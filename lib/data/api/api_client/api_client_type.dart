import 'package:dio/dio.dart';
import 'package:quiche_vpn/data/api/response/brand_response.dart';
import 'package:quiche_vpn/data/api/response/dish_response.dart';
import 'package:retrofit/retrofit.dart' as retrofit;
part 'api_client_type.g.dart';

@retrofit.RestApi()
abstract class APIClientType {
  factory APIClientType(Dio dio, {String baseUrl}) = _APIClientType;

  @retrofit.GET('/brand/{id}')
  Future<BrandResponse> getBrand({
    @retrofit.Path('id') required int id
  });

  @retrofit.GET('/recommend-dishes/{id}')
  Future<List<DishResponse>> getRecommendDishes({
    @retrofit.Path('id') required int id
  });
}
