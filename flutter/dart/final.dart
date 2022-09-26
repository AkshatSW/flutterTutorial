void main() {
  // print("Final vs const");

  // final name = 'Akshat'; //The final variable name can only be set once.

  // name='akshat srivastava'; //this won't work kyoki name variable final pe assigned haiv

  //final ke sath var bhi nahi use kar skte, cos var ka mtlb we can override this value and this is not possible with final
  // // final var name ='akshat'; //this also won't work

  // final String myName = 'Akshatboii';
  // print(myName);

  // myName = "akshat";//this also won't work cos alrady assigned hai

  const name = 'akshat'; //const ko initialised karna hi hoga starting me
// can not be reassigned again

  final names = ['akshat', 'abhay'];

  // names = ['akshat srivastava, abhay pandey']; //this won't work

  names.add('vertika'); //but this will work
}
