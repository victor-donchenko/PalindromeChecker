public void setup() {
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++)  {
    if(palindrome(lines[i])) {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}

public String normalize_word(String word) {
  String out = "";
  for (int i = 0; i < word.length(); ++i) {
    if (Character.isLetter(word.charAt(i))) {
      out = out + String.valueOf(word.charAt(i)).toLowerCase();
    }
  }
  return out;
}

public boolean palindrome(String word) {
  String norword = normalize_word(word);
  for (int i = 0; i < norword.length(); ++i) {
    if (norword.charAt(i) != norword.charAt(norword.length() - i - 1)) {
      return false;
    }
  }
  return true;
}
