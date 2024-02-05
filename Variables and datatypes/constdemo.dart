void main(List<String> args) {
  const mylist = [1, 2, 3, 4, 5];
  // it cannot add to an immutable list of const
  // constants cannot be assigned value and cannot either change it's internal value
  mylist.add(3);
}
