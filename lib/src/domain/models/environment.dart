/// Represents the different environments available for the Archethic network.
///
/// Each environment has a unique label and endpoint, allowing the user to
/// differentiate between Mainnet, Testnet, and Devnet.
///
/// Example:
/// ```dart
/// final env = Environment.mainnet;
/// print(env.label); // Output: Archethic Mainnet
/// print(env.endpoint); // Output: https://mainnet.archethic.net
///
/// // Retrieve an environment by its endpoint.
/// final testEnv = Environment.byEndpoint('https://testnet.archethic.net');
/// print(testEnv.label); // Output: Archethic Testnet
/// ```
enum Environment {
  /// The production network (Mainnet) of Archethic.
  mainnet(
    label: 'Archethic Mainnet',
    endpoint: 'https://mainnet.archethic.net',
    displayName: 'Archethic Main Network',
  ),

  /// The test network (Testnet) of Archethic.
  testnet(
    label: 'Archethic Testnet',
    endpoint: 'https://testnet.archethic.net',
    displayName: 'Archethic Test Network',
  ),

  /// The development network (Devnet) for local testing.
  devnet(
    label: 'Archethic Devnet',
    endpoint: 'http://localhost:4000',
    displayName: 'Archethic Dev Network',
  );

  /// Creates an [Environment] with a specific [label] and [endpoint].
  const Environment({
    required this.label,
    required this.endpoint,
    required this.displayName,
  });

  /// The human-readable name of the environment.
  final String label;

  /// The URL endpoint for the environment.
  final String endpoint;

  /// The name of the environment.
  final String displayName;

  /// Retrieves the [Environment] corresponding to the given [endpoint].
  ///
  /// Throws a [StateError] if no environment matches the provided endpoint.
  static Environment byEndpoint(final String endpoint) =>
      Environment.values.firstWhere(
        (final environment) => environment.endpoint == endpoint,
        orElse:
            () =>
                throw StateError('No environment found for endpoint $endpoint'),
      );

  String get notificationBackendUrl {
    return 'https://push.archethic.net';
  }

  String get aeHostingUri {
    return '$endpoint/api/web_hosting/';
  }
}
