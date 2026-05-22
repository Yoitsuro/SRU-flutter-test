# Flutter News App

A Flutter mobile application that fetches and displays news articles from NewsAPI.

This project was created as part of a Flutter technical test. The app focuses on clean UI, simple architecture, API integration, article search, detail page navigation, dark mode support, and basic error handling.

## Features

### Main Features

- Fetch top headlines from NewsAPI.
- Display news in a clean list layout with image, title, and short description.
- Search news articles by title using the API and local title filtering.
- Open article detail page when a news item is tapped.
- Error handling for failed requests and unavailable data.
- Dark mode support.
- Pull-to-refresh support.

### Notes

- NewsAPI does not provide full article content in most cases. The `content` field is only a shortened preview, so the detail page shows article preview rather than the full original article.

## Screenshots

![front page](<Screenshot 2026-05-22 144135.png>)

## Tech Stack

- Flutter
- Dart
- flutter_riverpod
- dio
- go_router
- cached_network_image

## Getting Started

### Prerequisites

Make sure these are installed:

- Flutter SDK
- Dart SDK
- Android SDK / Android toolchain if running on Android device
- A NewsAPI account and API key.

## API Key Setup

This project uses `--dart-define` so the API key is not stored directly in source code or committed to GitHub, which is safer for public repositories.

## Build / Run

### Run on Android device

```bash
flutter run --dart-define-from-file=env.json
```

### Run on Chrome

```bash
flutter run -d chrome --dart-define-from-file=env.json
```

## Search Behavior

- If the search field is empty, the app loads top headlines.
- If the user types a keyword, the app fetches results using the NewsAPI search endpoint and filters article titles for better relevance.

## Limitations

- NewsAPI free plan has usage limitations and may restrict some development or deployment scenarios depending on plan type.
- Full article content is usually not available from the API response because NewsAPI returns preview content only.
- This app currently focuses on the required technical test scope and core user flow.

## Future Improvements

- Pagination / infinite scroll.
- Open original article in external browser.
- Offline caching.
- Better article detail presentation.
- Better search debounce and filtering.
- Unit and widget tests.

## Submission Notes

This project was built to match the requested test requirements:

- API integration
- clean and maintainable code structure
- state management
- search feature
- detail page
- error handling
- user-friendly interface

## License

This project is for technical test and evaluation purposes only.
