//======================= SPECIALIZING GENERIC TYPE DEFINITIONS ==========================
void main() {
  // we are constraining the json to one type of values by defining a generic type for values in the
  // map
  const JSON<String> json = {'name': 'khirman', 'address': 'muzaffarabad'};
}

typedef JSON<T> = Map<String, T>;

// SPECIALIZED GENERIC TYPE DEF AND ONLY ONE PART OF IT AS GENERIC
// WE WANT TO CREATE JSON VALUES AND WANT ALL THE VALUES OF SAME TYPE
// VALUES ASSOCIATED WITH KEYS SHOULD BE OF SAME TYPE.

// CONSTRAINING THE MAP TO HAVE ALL THE VALUES OF SAME TYPE ,
// SO MAP DO NOT CONTAIN ANY OTHER VALUE
