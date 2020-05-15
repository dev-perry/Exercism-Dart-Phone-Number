class PhoneNumber {
  // Put your code here
  String clean(String input){
    String res;
    for(int i=0; i <input.length; i++){
      var char = input[i];
      if(char.contains(new RegExp(r'[0-9]'))){
        res = res + char;
      }
    };
    return res;
  }
}
