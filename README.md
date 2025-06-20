# Flutter Networking App

A Flutter application that demonstrates HTTP networking operations using the JSONPlaceholder API. This project showcases how to perform GET and POST requests in Flutter with proper state management using the Provider pattern.

## Features

- **GET Requests**: Fetch and display posts from the JSONPlaceholder API
- **POST Requests**: Create new posts and send them to the API
- **State Management**: Uses Provider pattern for efficient state management
- **Clean UI**: Material Design interface with intuitive navigation
- **Error Handling**: Graceful handling of network errors and API responses

## Screenshots

The app consists of three main screens:
1. **Home Page**: Navigation hub with buttons to access GET and POST functionality
2. **Get Page**: Displays a list of posts fetched from the API
3. **Post Page**: Form to create and submit new posts

## Getting Started

### Prerequisites

- Flutter SDK (>=2.18.2)
- Dart SDK
- Android Studio / VS Code
- Android Emulator or iOS Simulator

### Installation

1. Clone the repository:
```bash
git clone <repository-url>
cd Aplicaciones-Moviles-Actividad-Networking
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run the application:
```bash
flutter run
```

## Project Structure

```
lib/
├── main.dart                 # App entry point
├── pages/
│   ├── home_page.dart        # Main navigation page
│   ├── get_page.dart         # GET requests page
│   └── post_page.dart        # POST requests page
└── providers/
    └── request_provider.dart # State management and API calls
```

## Dependencies

- **flutter**: Core Flutter framework
- **http**: ^0.13.5 - For making HTTP requests
- **provider**: ^6.0.3 - For state management
- **cupertino_icons**: ^1.0.2 - iOS-style icons

## API Usage

The app uses the [JSONPlaceholder](https://jsonplaceholder.typicode.com/) API for demonstration purposes:

- **GET Endpoint**: `https://jsonplaceholder.typicode.com/posts`
- **POST Endpoint**: `https://jsonplaceholder.typicode.com/posts`

### GET Request
Fetches all posts and displays them in a scrollable list with:
- Post ID (displayed in a circular container)
- Title
- Body content (truncated to 2 lines)
- User ID

### POST Request
Allows users to create new posts by providing:
- User ID
- Title
- Content

The response is displayed below the form after submission.

## State Management

The app uses the Provider pattern for state management:

- `RequestProvider` manages the list of posts and API responses
- Uses `ChangeNotifier` to notify widgets of state changes
- Handles both GET and POST operations
- Includes error handling for network failures

## Development

This project was created as part of a mobile applications course to demonstrate:
- HTTP networking in Flutter
- State management patterns
- UI/UX design principles
- API integration best practices


## License

This project is for educational purposes.
