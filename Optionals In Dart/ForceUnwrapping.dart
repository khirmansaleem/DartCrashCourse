void main(List<String> args) {
// "!" --> using force unwrapping operator forcing a nullable value to return some content
// it is 50% case that it is null or contain some content either.
  // a is optional string so we are forcing using "!" to get it's content
  // but this action will crash the code
  try {
    final String? a = null;
    print(a!);
  } catch (error) {
    print(error);
  }
}
