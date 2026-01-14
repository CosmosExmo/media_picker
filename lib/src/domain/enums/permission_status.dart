/// Represents the permission status for camera or media access
enum PermissionStatus {
  /// Permission status has not been determined yet
  notDetermined,

  /// Permission has been denied by the user
  denied,

  /// Permission has been granted by the user
  granted,

  /// Permission is permanently restricted (iOS)
  restricted,

  /// Permission is limited (iOS 14+ Photos limited access)
  limited,
}
