Quiche VPN

### [Getting Started](#getting-started)

* Flutter (Channel stable, 3.3.7)
* Dart 2.18.4
* Cocoapods 1.11.3

### [Main Packages](#main-packages)
* [`flutter_bloc`](https://pub.dev/packages/flutter_bloc): State management package.
* [`dio`](https://pub.dev/packages/dio): A powerful Http client for Dart.
* [`mockito`](https://pub.dev/packages/mockito): A mock framework with APIs for Fakes, Mocks, behavior verification, and stubbing.

### [Usage](#usage)

#### Run App with a specific environment.
* Development: `flutter run --flavor dev -t lib/main_dev.dart`
* Production: `flutter run --flavor prod -t lib/main_prod.dart`

### [Pitfalls](#pitfalls)
- Make sure `flutter pub get` before you run the app.
- Run the `flutter pub run build_runner build --delete-conflicting-outputs` in order for generating necessary files.

### [Project Structure](#project-structure)
```
.
├── README.md
├── {project_name}
│   ├── asssets
│   │   ├── fonts
│   │   ├── icons
│   │   ├── images
│   │   └── locales
│   └── lib
│       ├── config
│       │   ├── app_config.dart
│       │   ├── app_config_type.dart
│       │   ├── app_secure_config.dart
│       │   └── app_secure_config_type.dart
│       ├── data
│       │   ├── api
│       │   │   ├── api_client
│       │   │   │   ├── interceptor
│       │   │   │   │   ├── curl_log.dart
│       │   │   │   │   └── query.dart
│       │   │   │   ├── api_client.dart
│       │   │   │   ├── api_client_type.dart
│       │   │   │   └── api_client_type.g.dart
│       │   │   ├── graphql_client
│       │   │   │   ├── graphql_client.dart
│       │   │   │   └── graphql_client_type.dart
│       │   │   ├── request
│       │   │   │   └── dummy_request.dart
│       │   │   └── response
│       │   │       ├── dummy_response.dart
│       │   │       └── dummy_response.g.dart
│       │   ├── datasource
│       │   │   └── dummy
│       │   │       ├── dummy_datasource.dart
│       │   │       └── dummy_datasource_type.dart
│       │   └── error_response.dart
│       ├── di
│       │   ├── client_module.dart
│       │   ├── config_module.dart
│       │   ├── datasource_module.dart
│       │   ├── repository_module.dart
│       │   └── usecase_module.dart
│       ├── domain
│       │   ├── model
│       │   │   ├── empty.dart
│       │   │   ├── failure.dart
│       │   │   └── dummy.dart
│       │   ├── translator
│       │   │   └── dummy_translator.dart
│       │   └── usecase
│       │       └── dummy
│       │           ├── dummy_usecase.dart
│       │           └── dummy_usecase_type.dart
│       ├── environment
│       │   ├── development
│       │   │   └── development_env.dart
│       │   ├── production
│       │   │   └── production_env.dart
│       │   └── environment.dart
│       ├── presentation
│       │   └── dummy
│       │       ├── dummy_page.dart
│       │       └── dummy_bloc.dart
│       ├── repository
│       │   └── dummy
│       │       ├── dummy_repository.dart
│       │       └── dummy_repository_type.dart
│       ├── router
│       │   ├── gen_route.dart
│       │   ├── named_route.dart
│       │   ├── navigation_controller.dart
│       │   └── routes.dart
│       ├── util
│       │   ├── assets
│       │   │   ├── app_color.dart
│       │   │   ├── app_icon.dart
│       │   │   ├── app_image.dart
│       │   │   ├── app_locale.dart
│       │   │   └── app_text.dart
│       │   ├── extension
│       │   ├── widget
│       │   ├── app_global.dart
│       │   ├── app_mixin.dart
│       │   ├── app_router.dart
│       │   └── util.dart
│       ├── main.dart
│       ├── main_dev.dart
│       ├── main_prod.dart
│       └── my_app.dart
└── test
    ├── domain
    │   ├── usecase
    │   │   └── dummy
    │   │       ├── dummy_usecase_test.dart
    │   │       └── dummy_usecase_test.mocks.dart
    └── mock
        └── dummy_response_mock.dart
```

### [Unit Testing](#unit-testing)
```
  group('describes what component you are testing', () {
    test('describes the purpose of the test or the current state of an object', () {
    
      // stub a mock method before interacting
      when('mock.doMock()').thenAnswer((_) => 'stub');
      
      // the expected result of the test
      expect('actual', 'matcher');
    });
  });
``` 

### [Archive](#archive)
#### iOS
* Development: `flutter build ipa --flavor dev -t lib/main_dev.dart --export-method [...]`
* Production: `flutter build ipa --flavor prod -t lib/main_prod.dart --export-method [...]`
* [`--export-method`](https://docs.flutter.dev/deployment/ios#create-an-app-bundle)
#### Android
* Development: `flutter build apk --flavor dev -t lib/main_dev.dart`
* Production: `flutter build apk --flavor prod -t lib/main_prod.dart`

### [Troubleshooting](#troubleshooting)
- The connectivity always throw `none` result on iOS Simulator: [`> see this issue`](https://github.com/fluttercommunity/plus_plugins/issues/852)

### [Practice](#practice)
- [`Flutter x Magic Sliver Widgets`](https://github.com/dubydu/magic-sliver)