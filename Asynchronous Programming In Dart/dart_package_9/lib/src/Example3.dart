// ========================== FUTURE CHAINING =================================
// ============================================================================

void main() async {
  final name = await getFirstName('khirman').then(
    (value) => getfullName(
        value), // return value of first name is passed to full name and concatenated
    // string returned from getfullname()
  );
  print(name);
}

// YOU HAVE A FUTURE THAT CALCULATES A VALUE, AND THAT VALUE IS FED INTO ANOTHER FUTURE
// THAT CONSUMES THIS VALUE AND CREATE ANOTHER FUTURE
// FUTUREO A CHAINING IS THE POSSIBILITY OF FEEDING THE VALUE OF ONE FUTURE TNOTHER FUTURE.
// AND THAT FUTURE DO SAME SO ON SO FORTH, AND CREATE CHAIN OF FUTURES.
// " THEN " keyword allow to pass a future as  another future return value
Future<String> getFirstName(String name) {
  return Future.delayed(Duration(seconds: 3), () => name);
}

Future<String> getfullName(String name) {
  return Future.delayed(Duration(seconds: 3), () => '$name Saleem');
}
