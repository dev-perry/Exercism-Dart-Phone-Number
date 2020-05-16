class PhoneNumber {
  // Put your code here
  String clean(String input) {
    //This takes the string and gets rid of unwanted characters
    input = strip(input);

    //This escapes the function if there are any letters found in the number
    if (!isNum(input)) return null;

    // If the length of the number is 11 and starts with a 1, it is still valid
    //just take off the one
    if (input.length==11 && input.startsWith('1')) {
      input = input.substring(1);
    }
    //If the length of the number is not 10, this is not
    //a valid input. Return null.
      if (input.length!=10) {
        return null;
      }

      //This applies to an input number that has already been processed by the
    //strip() function and is the appropriate length. This returns null if the
    //area code starts with a 1 or 0 by checking the first element of the string
    //and also returns null if the escape code is 1 or 0 by checking the third element
    //of the string
      if (['0', '1'].contains(input[0]) || ['0', '1'].contains(input[3])) return null;

      //If the input passes all the conditions above return it
      return input;
    }

//  The strip() function removes unwanted characters
////  This method takes in a string, and breaks it into an array of characters
////  that are not unwanted characters(split). Then it takes that array of characters
////  and combines it into a single, new string (fold).
  String strip(String str) => str
      .split('')
      .where((ch) => ![".", " ", "(", ")", "-", "+"].contains(ch))
      .fold("", (str, elem) => str + elem);

  //The isDigit() function checks a given character to see if it is a number
  bool isDigit (String ch) => ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'].contains(ch);

  //The isNum() function splits a string into an array and checks each element
  //with the the isDigit() function. Any non-number found in the array returns false
  bool isNum(String str) => str.split('').every(isDigit);
  }
