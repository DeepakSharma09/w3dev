# w3dev

Flutter App with Google Login, Tabbed View, Notifications, and Splash Screen

**Overview**

This Flutter application includes the following features:

Google Login using Firebase Authentication

Tabbed View with Home, Profile, and Settings/Notifications screens

Local Notifications using flutter_local_notifications

Splash Screen for a better user experience on startup

Flutter App with Google Login, Tabbed View, Notifications, and Splash Screen

**Features**

1. **Google Login Integration**

Users can sign in using their Google account.

Displays user information (name, email, profile picture) after login.

Uses google_sign_in and firebase_auth for authentication.

Implements session management to keep users logged in.

2. **Tabbed View Navigation**

Home Screen: Displays a welcome message.

Profile Screen: Shows user details and a logout option.

Settings/Notifications Screen: Allows users to view and manage notifications.

Uses TabBar and TabBarView for smooth navigation.

3. **Local Notifications
**
Implements scheduled and instant notifications.

Uses flutter_local_notifications for notification handling.

Users can trigger notifications from the Settings tab.

4. **Splash Screen**

Displays a custom splash screen on app launch.

Uses flutter_native_splash for better user experience.

**Install Dependencies:**

flutter pub get

Set up Firebase Authentication:

Follow Firebase setup instructions.

Add google-services.json to the android/app directory.

Run the App:

flutter run

**Dependencies**

firebase_auth

google_sign_in

flutter_local_notifications

flutter_native_splash

