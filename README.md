# Service Dashboard App

<p align="center">
  <img src="app_image/Simulator%20Screenshot%20-%20iPhone%2017%20-%202026-07-18%20at%2012.40.56.png" width="18%" alt="Login screen" />
  <img src="app_image/Simulator%20Screenshot%20-%20iPhone%2017%20-%202026-07-18%20at%2012.41.09.png" width="18%" alt="Registration screen" />
  <img src="app_image/Simulator%20Screenshot%20-%20iPhone%2017%20-%202026-07-18%20at%2012.41.26.png" width="18%" alt="Dashboard overview" />
  <img src="app_image/Simulator%20Screenshot%20-%20iPhone%2017%20-%202026-07-18%20at%2012.41.45.png" width="18%" alt="Delivery management" />
  <img src="app_image/Simulator%20Screenshot%20-%20iPhone%2017%20-%202026-07-18%20at%2012.41.38.png" width="18%" alt="Dashboard menu" />
</p>

A complete Flutter frontend for managing service-based businesses from one mobile dashboard. The app provides separate Vendor and Service Provider experiences with responsive screens for authentication, revenue insights, orders, services, bookings, deliveries, customers, messaging, payouts, and account settings.

## Features

- Vendor and Service Provider role-based flows
- Login, registration, OTP verification, and password recovery
- Revenue, order, product, and delivery dashboard overview
- Product, service, booking, order, and delivery management
- Analytics, earnings, and payout screens
- Customer and controller management
- Provider messaging and chat interface
- Personal, business, professional, and service profiles
- Security, legal, support, and Stripe connection screens
- Responsive UI designed from a `393 × 852` mobile canvas

## Project Structure

```text
service_dashboard_app/
├── android/                     # Android platform configuration
├── ios/                         # iOS platform configuration
├── assets/
│   ├── icons/                   # SVG icons used across the app
│   └── images/                  # Application image assets
├── app_image/                   # README and feature screenshots
├── lib/
│   ├── core/
│   │   ├── component/           # Shared buttons, text, app bars, and images
│   │   ├── const/               # Asset paths, colors, text, and demo data
│   │   ├── route/               # GetX routes and dependency bindings
│   │   ├── service/             # Local storage services
│   │   ├── theme/               # Global application theme
│   │   └── utils/               # Formatting and helper utilities
│   ├── features/
│   │   ├── auth/                # Login, registration, OTP, and Stripe setup
│   │   ├── provider/            # Service Provider dashboard and modules
│   │   └── vendor/              # Vendor dashboard and modules
│   ├── main.dart                # Application entry point
│   └── my_app.dart              # Root widget and app configuration
├── test/                        # Flutter tests
└── pubspec.yaml                 # Packages, assets, and project metadata
```

Each feature follows a presentation-focused structure:

```text
feature/
└── presentation/
    ├── controller/              # GetX state and screen logic
    ├── ui/                      # Full screens
    └── widget/                  # Feature-specific reusable widgets
```

## Packages Used

- [`get`](https://pub.dev/packages/get) — state management, dependency injection, and navigation.
- [`dio`](https://pub.dev/packages/dio) — HTTP client for API communication.
- [`pretty_dio_logger`](https://pub.dev/packages/pretty_dio_logger) — readable Dio request and response logs.
- [`get_storage`](https://pub.dev/packages/get_storage) — lightweight local key-value storage.
- [`flutter_screenutil`](https://pub.dev/packages/flutter_screenutil) — responsive sizing across screen dimensions.
- [`google_fonts`](https://pub.dev/packages/google_fonts) — Google Fonts integration.
- [`flutter_svg`](https://pub.dev/packages/flutter_svg) — SVG icon rendering.
- [`cached_network_image`](https://pub.dev/packages/cached_network_image) — network image caching and placeholders.
- [`shimmer_animation`](https://pub.dev/packages/shimmer_animation) — loading-state shimmer effects.
- [`flutter_otp_text_field`](https://pub.dev/packages/flutter_otp_text_field) — OTP input UI.
- [`geolocator`](https://pub.dev/packages/geolocator) and [`geocoding`](https://pub.dev/packages/geocoding) — device location and address conversion.
- [`permission_handler`](https://pub.dev/packages/permission_handler) — runtime permission handling.
- [`image_picker`](https://pub.dev/packages/image_picker) — image selection from camera or gallery.
- [`flutter_html`](https://pub.dev/packages/flutter_html) — rendering HTML content in Flutter.
- [`intl`](https://pub.dev/packages/intl) — date, time, and number formatting.
- [`mime`](https://pub.dev/packages/mime) and [`http_parser`](https://pub.dev/packages/http_parser) — file type detection and HTTP media types.
- [`flutter_native_splash`](https://pub.dev/packages/flutter_native_splash) — native splash screen generation.
- [`cupertino_icons`](https://pub.dev/packages/cupertino_icons) — iOS-style icons.

## Getting Started

### Prerequisites

- Flutter SDK compatible with Dart `^3.11.5`
- Xcode for iOS development or Android Studio for Android development
- A configured simulator, emulator, or physical device

### Run the App

```bash
git clone <repository-url>
cd service_dashboard_app
flutter pub get
flutter run
```

## Useful Commands

```bash
flutter analyze
flutter test
flutter build apk
flutter build ios
```

## Current Scope

This repository contains the complete mobile frontend and demo presentation data. Connect the existing Dio client and controllers to your backend endpoints to use live authentication, dashboard, order, booking, delivery, messaging, and payout data.
