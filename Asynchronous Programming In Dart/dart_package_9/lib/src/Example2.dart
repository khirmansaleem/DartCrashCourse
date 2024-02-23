// ========================> FUTURE ERROR HANDLING  <================================

void main() async {
  try {
    print(await getFullName(firstName: 'khirman', lastName: ''));
  } on FirstNameOrLastNameMissingException {
    print("First name or last name is missing");
  }
}

Future<String> getFullName(
    {required String firstName, required String lastName}) {
  if (firstName.isEmpty || lastName.isEmpty) {
    throw FirstNameOrLastNameMissingException();
  } else {
    return Future.value('$firstName $lastName');
  }
}

class FirstNameOrLastNameMissingException {
  const FirstNameOrLastNameMissingException();
}
