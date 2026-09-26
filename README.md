# DocApp

Flutter application foundation demonstrating authentication, REST API integration, Cubit state management, feature-based project structure, dependency injection, and centralized networking.

## Features

- Onboarding
- Login
- User registration
- REST API integration
- Cubit state management
- Repository layer
- Dio and Retrofit networking
- Centralized API error handling
- Freezed API result states
- GetIt dependency injection
- Centralized routing
- Responsive UI with Flutter ScreenUtil
- Centralized theming and reusable widgets

## Tech Stack

- Flutter / Dart
- flutter_bloc / Cubit
- Dio
- Retrofit
- GetIt
- Freezed
- json_serializable
- Flutter ScreenUtil
- flutter_svg
- Pretty Dio Logger

## Architecture

```text
lib/
├── core/
│   ├── di/
│   ├── helpers/
│   ├── networking/
│   ├── routing/
│   ├── theming/
│   └── widgets/
├── features/
│   ├── onboarding/
│   ├── login/
│   │   ├── data/
│   │   ├── logic/
│   │   └── ui/
│   ├── sign_up/
│   │   ├── data/
│   │   ├── logic/
│   │   └── ui/
│   └── home/
├── doc_app.dart
├── main_development.dart
└── main_production.dart
```

The project uses a feature-based structure with a shared core layer. Each feature separates data, state/business logic, and UI responsibilities.

## Authentication Flow

```text
UI
 ↓
Cubit
 ↓
Repository
 ↓
Retrofit ApiService
 ↓
Dio
 ↓
REST API
 ↓
Typed Response Model
 ↓
Cubit State
```

Implemented authentication endpoints:

- POST auth/login
- POST auth/register

Login and registration repositories convert networking failures into the application's typed error/result model before returning them to the Cubits.

## Networking

The networking layer is centralized under core/networking.

- DioFactory creates the shared Dio client.
- Retrofit defines the API contract.
- PrettyDioLogger provides development request/response logging.
- ApiErrorHandler maps common Dio/network failures into application error models.
- ApiResult represents success and failure results using Freezed.

## Dependency Injection

GetIt provides dependencies such as:

- ApiService
- LoginRepo
- LoginCubit
- SignupRepo
- SignupCubit

This keeps dependency creation outside the UI layer.

## Routing

Navigation is centralized through AppRouter and route constants.

Current routes include onboarding, login, sign up, and home.

## Code Generation

The project uses generated code for Retrofit implementations, JSON serialization, and Freezed classes.

```bash
dart run build_runner build --delete-conflicting-outputs
```

## Getting Started

### Install dependencies

```bash
flutter pub get
```

### Generate code

```bash
dart run build_runner build --delete-conflicting-outputs
```

### Run development build

```bash
flutter run -t lib/main_development.dart
```

### Run production entry point

```bash
flutter run -t lib/main_production.dart
```

## Current Scope

The repository currently represents an application foundation with onboarding and authentication flows. The Home screen is still a basic placeholder, so unfinished application features are intentionally not presented as completed.

## What This Project Demonstrates

- Feature-based Flutter architecture
- Cubit state management
- REST API integration
- Dio and Retrofit
- Repository pattern
- Dependency injection with GetIt
- Centralized error handling
- Freezed result modeling
- JSON serialization
- Responsive UI
- Routing and theming
- Code generation
- Separate development and production entry points

## Author

**Ahmed Elsalhy**

Flutter Developer

GitHub: [AhmedElsalhy](https://github.com/AhmedElsalhy)
