void main() {
  print('FUNCTIONS!');

  var myC = myClass();
  myC.myFunc('akshat'); //function calling

  myC.myFunc('muhahahah');

  myC.add(3, 4);
}

class myClass {
  void myFunc(String name) {
    //void kyoki yaha ham kuch return nahi kar rahe per agar ham log int likenge to naya hofa
    //declaration of a function
    print(name); //definition of a function
  }

  int add(a, b) {
    //ye program execute hone pe hame output end me ek integer lena hai isliye ham void ki jagha void likenge
    int sum = a + b;
    print(sum);
    return sum;
    //iske aage jo bhi likhoge isko dead code kaha jayega, aur consider nahi kiya jayega
  }
}
