/// Whether to generate null safe code.
bool generateNullSafeCode = false;

/// String representing `?` in optionally-null-safe code.
///
/// If generating null safe code, returns `?`. Otherwise returns ``.
String get orNull => generateNullSafeCode ? '?' : '';

/// String representing `!` in optionally-null-safe code.
///
/// If generating null safe code, returns `!`. Otherwise returns ``.
String get notNull => generateNullSafeCode ? '!' : '';
