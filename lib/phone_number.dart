class PhoneNumber {
  // Put your code here
  String clean(String input) {
    input = strip(input);

    if (!isNum(input)) return null;

    // Length 11 + area code ! check
    if (input.length==11 && input.startsWith('1')) {
      input = input.substring(1);
    }
    //Less than 9 check
      if (input.length!=10) {
        return null;
      }

      //Exchange code check
      if (['0', '1'].contains(input[0]) || ['0', '1'].contains(input[3])) return null;

      return input;
    }

  //Remove unwanted characters
  String strip(String str) => str
      .split('')
      .where((ch) => ![".", " ", "(", ")", "-", "+"].contains(ch))
      .fold("", (str, elem) => str + elem);
  //Individual digit checker
  bool isDigit (String ch) => ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'].contains(ch);
  //Total number checker
  bool isNum(String str) => str.split('').every(isDigit);
  }
