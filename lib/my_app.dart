import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiche_vpn/di/client_module.dart';
import 'package:quiche_vpn/di/config_module.dart';
import 'package:quiche_vpn/di/datasource_module.dart';
import 'package:quiche_vpn/di/repository_module.dart';
import 'package:quiche_vpn/di/usecase_module.dart';
import 'package:quiche_vpn/presentation/sliver/sliver_provider.dart';
import 'package:quiche_vpn/router/gen_route.dart';
import 'package:quiche_vpn/router/navigation_controller.dart';
import 'package:quiche_vpn/util/app_global.dart' as global;
import 'package:quiche_vpn/util/util.dart';

Future<void> myMain() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  runApp(
      EasyLocalization(
        supportedLocales: const [AppLocales.en, AppLocales.zh],
        path: AppLocales.path,
        fallbackLocale: AppLocales.zh,
        child: const MyApp(),
      )
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp>
    with ConfigModule,
        ClientModule,
        DatasourceModule,
        RepositoryModule,
        UseCaseModule {

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => SliverProvider(
              sliverUseCase: sliverUseCase
          ))
        ],
        child: MaterialApp(
          scrollBehavior: BaseScrollable(),
          debugShowCheckedModeBanner: false,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          navigatorObservers: [global.navigationObserver],
          theme: global.theme,
          onGenerateRoute: generateRoute,
          navigatorKey: NavigationController.globalNavigatorKey,
          scaffoldMessengerKey: global.scaffoldMessengerKey,
        )
    );
  }
}