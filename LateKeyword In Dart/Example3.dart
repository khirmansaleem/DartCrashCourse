// Late Variables in Classes
void main(List<String> args) {
// when we are using late variables as properties in our classes, they are only resolved when they are

  Book book = Book();
  book.description;
  print(book.description); // in class late variable is resolved when it is used
}

class Book {
  late String description = explainDescription();
  int bookNumber = 0;
  // special method called when instance of class is created is the constructor
  Book({this.bookNumber = 20}) {
    print("constructor is called");
    print(bookNumber);
  }

  String explainDescription() {
    return 'This is the detailed description';
  }
}
