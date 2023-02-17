import 'package:flutter/foundation.dart';
import 'package:quiche_vpn/domain/usecase/sliver/sliver_usecase_type.dart';

class SliverProvider with ChangeNotifier {
  SliverProvider({required this.useCase});

  final SliverUseCaseType useCase;
}
