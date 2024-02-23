//=======================FUTURE===================================
//Asynchronous operations allow your program to do other tasks while waiting for a certain task to finish,
// instead of just sitting idle.
// It's like reading a book while waiting for your coffee to brew.
// FUTURE REPRESENT A SINGLE VALUE THAT WILL BE AVAILABLE AT SOME TIME IN FUTURE.
void main() async {
  //calling the function will not return it's value, you need to consume it
  print(getName()); // it returns the "instance of Future<String>"

  // one way to print the result is using await, it will wait for the result and return it
  // await basically disolves the future, and to use await , you need to have a async function
  print(await getName());
  print(await getAdress());
  //print(await getPhoneNumber());
  print(await getCity());
}

// futures are pieces of functionality that will complete your work in future
// you give input to the function, perform some action, when the function is done it returns the result
// from the function.
// in case of normal function, when you call some function it stops the execution of main function untill
//it return some value from the caller function that is called inside main.
// if your caller function returns future, the execution of caller function just continue,
//it does not really care when that future ends. unless you ask app to await for result.

// there are different ways for functions to return futures

// when asyn is appended to future return function then you can simply return value from that function
// act as normal function
Future<String> getName() async {
  print("hellow mello");
  return 'khirman';
}

// another way of returning future :
Future<String> getAdress() => Future.value('street 22 near gojra');
// both of the above functions returning futures, but they immediately return the value and no waiting is
// involve there

// future function that returns the phone number, but actually do the calculation in 10s
// so there will be pointing of returning future that you could do something in future.
Future<String> getPhoneNumber() =>
    Future.delayed(const Duration(seconds: 10), () => '03190485412');

// method 3: of creating futures
// AWAIT: TO KICK START FUTURE AND GRAB IT'S FINAL VALUE, YOU HAVE TO USE AWAIT
// you need to write await with futures to kick start them and get their value.

Future<String> getCity() async {
  await Future.delayed(const Duration(
      seconds: 5)); // you need to write await with future to kick start it
  // if you dont use await here, then it will return without delay
  return 'muzaffarabad';
}

// USING future delayed and async --> then async does not really contribute anything
