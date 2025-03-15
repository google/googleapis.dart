import 'package:googleapis_auth/auth_browser.dart';

// Initialize the browser oauth2 flow functionality then use it to obtain credentials.
Future<AccessCredentials> obtainCredentials() => requestAccessCredentials(
      clientId: '....apps.googleusercontent.com',
      scopes: ['scope1', 'scope2'],
    );
