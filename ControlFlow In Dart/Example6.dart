// FOR LOOP OVER MAP
// modern for loop over map
// map is pretty much like a dictionary of values
// it is in key value pairs
void main() {
  const info = {
    'name': 'khirman saleem',
    'address': {'street': '24'},
    'age': '34'
  };
  for (final entry in info.entries) {
    print(' ${entry.key}   : ${entry.value}');
  }
}

// if you want to loop over the entries of the map then you do this by accessing the entries of that map
// map.entries
