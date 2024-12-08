# Nearby Landmarks App

The Nearby Landmarks App is a Flutter application that fetches the user's current location using GPS, displays the latitude and longitude, converts the coordinates into a human-readable address using geocoding, and allows users to save their current location as a favorite. These favorites persist locally using SharedPreferences.

---

## **Features**

- **Permission Handling:** Uses the `permission_handler` package to manage location permissions.
- **Fetch Current Location:** Retrieves the user's latitude and longitude using the device's GPS.
- **Geocoding:** Converts coordinates into a human-readable address (e.g., street, city).
- **Persist Data Locally:** Saves favorite locations using `SharedPreferences` for data persistence across app restarts.
- **View Saved Locations:** Displays a list of saved favorite locations.

---

## **Technologies Used**

- **Flutter:** Frontend framework for building the UI.
- **Dart:** Programming language for app logic.
- **Packages Used:**
  - `geolocator`: To fetch the user's GPS location.
  - `geocoding`: To convert coordinates into an address.
  - `shared_preferences`: For local data persistence.
  - `permission_handler`: For managing location permissions.

---

## **Setup Instructions**

### 1. Prerequisites
- Install Flutter: [Flutter Installation Guide](https://flutter.dev/docs/get-started/install)
- Install Android Studio or Visual Studio Code with Flutter and Dart plugins.
- Clone this repository:
  ```bash
  git clone https://github.com/ZiadAmerr/nearby-landmarks-mobile-app.git
  cd nearby-landmarks
  ```

### 2. Install Dependencies
Run the following command to install required packages:
```bash
flutter pub get
```

### 3. Configure Permissions
#### Android:
Update `android/app/src/main/AndroidManifest.xml` with:
```xml
<uses-permission android:name="android.permission.ACCESS_FINE_LOCATION" />
<uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION" />
```

#### iOS:
Update `ios/Runner/Info.plist` with:
```xml
<key>NSLocationWhenInUseUsageDescription</key>
<string>We need your location to display nearby landmarks.</string>
<key>NSLocationAlwaysUsageDescription</key>
<string>We need your location to provide accurate results.</string>
```

### 4. Run the App
Start the app on an emulator or physical device:
```bash
flutter run
```

---

## **App Screens**

1. **Home Screen**
   - Displays the current latitude, longitude, and human-readable address.
   - Fetches location data and allows users to save it as a favorite.

2. **Favorites Screen**
   - Shows a list of all saved favorite locations, including the latitude, longitude, and address.

---

## **File Structure**

```
lib/
  main.dart                # Entry point of the application
  screens/
    home_screen.dart       # Main screen for fetching and displaying location data
    favorites_screen.dart  # Screen for displaying saved favorite locations
  services/
    location_service.dart  # Service for fetching GPS location and geocoding
    storage_service.dart   # Service for saving and retrieving favorite locations
  widgets/
    location_display.dart  # Reusable widget for displaying location details
```

---

## **Learning Objectives**

By building this app, you will learn:
1. How to handle device permissions using `permission_handler`.
2. How to integrate GPS and geocoding features in a Flutter app.
3. Persisting data locally using `SharedPreferences`.
4. Managing state and asynchronous tasks in Flutter.
5. Debugging and handling errors in a Flutter application.

---

## **Contributing**

Contributions are welcome! To contribute:
1. Fork the repository.
2. Create a new branch:
   ```bash
   git checkout -b feature/your-feature-name
   ```
3. Commit your changes:
   ```bash
   git commit -m "Add your message"
   ```
4. Push to your branch:
   ```bash
   git push origin feature/your-feature-name
   ```
5. Open a pull request.

---

## **License**

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

## **Contact**

For questions or feedback, feel free to reach out:

- **Name:** Ziad Amerr
- **Email:** xeiad.amerr@yahoo.com
- **GitHub:** [@ZiadAmerr](https://github.com/ZiadAmerr)
