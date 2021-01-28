public void setup(){  
  String lines[] = {"test","rotator","rewriter","nurses run","Madam, I'm Adam!","A Man! A Plan! A Canal! Panama!"};
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) {
    if(palindrome(lines[i])==true){
      System.out.println(lines[i] + " IS a palindrome.");
    } else {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}

public boolean palindrome(String word){
  if(trueWord(word).equals(trueReverseWord(word))){
    return true;
  } else {
    return false;
  }
}

public String trueReverseWord(String answer){
  return noCapitals(noSpaces(onlyLetters(reverse(answer))));
}

public String trueWord(String answer){
  return noCapitals(noSpaces(onlyLetters(answer)));
}

public String reverse(String str){
    String sNew = new String();
    for(int i = str.length(); i > 0; i--){
      sNew += str.substring(i - 1, i);
    }
    return sNew;
}

public String onlyLetters(String sString){
  String ans = "";
  for(int i = 0; i < sString.length(); i++){
    if(Character.isLetter(sString.charAt(i))){
      ans += sString.charAt(i);
    }
  }
  return ans;
}

public String noSpaces(String sWord){
  String ans = "";
  for(int i = 0; i < sWord.length(); i++){
    if(sWord.charAt(i) == ' '){
      
    } else {
      ans += sWord.charAt(i);
    }
  }
  return ans;
}

public String noCapitals(String sWord){
  return sWord.toLowerCase();
}
