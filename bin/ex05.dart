library ex05;

part 'functions.dart';

void main() {
  String testString;
  bool testBool;
  
  //Test of ex05_1
  print("\n====================");
  print("Test of ex05_1");
  print("====================\n");
  testBool = validateOnlyLetters("Sentence with only letters and spaces");
  print(testBool);
  testBool = validateOnlyLetters("Sentence with punctuation.");
  print(testBool);
  
  //Test of ex05_2
  print("\n====================");
  print("Test of ex05_2");
  print("====================\n");
  testString = longestSentence("Short sentence. Middle length sentence. This is the longest length sentence.");
  print(testString);
  testString = longestSentence("Short sentence. This is the longest length sentence. Middle length sentence.");
  print(testString);
  testString = longestSentence("This is the longest length sentence. Short sentence. Middle length sentence.");
  print(testString);
  
  //Test of ex05_3
  print("\n====================");
  print("Test of ex05_3");
  print("====================\n");
  testString = longestWord("Sentence with a longest word at start");
  print(testString);
  testString = longestWord("One with a long word at the ending");
  print(testString);
  testString = longestWord("One with the longest word at middle");
  print(testString);
  
  //Test of ex05_4
  print("\n====================");
  print("Test of ex05_4");
  print("====================\n");
  testString = timesTable(8, 20);
  print(testString);
  
  //Test of ex05_5
  print("\n====================");
  print("Test of ex05_5");
  print("====================\n");
  testString = balancedTree(6);
  print(testString);
}
