//============================================ STREAM.ToList ===============================================

void main() async {
  final allNames = await getNames()
      .toList(); // await basically wait here to produce entire list
  // if dont use await then allNames will contain future list of string.
  print(allNames); // THIS IS A LIST of string.
}

// CREATE A LIST OUT OF THE STREAM USING FUNCTION ON STREAMS CALLED TOlIST
Stream<String> getNames() async* {
  yield "ali";
  yield "amber";
  yield "khirman";
}
