part of ex05;

/* Function for ex05_1 */
bool validateOnlyLetters(String text) {
  List myList = convertStringToList(text);
  
  for (int i = 0; i < myList.length; i++) {
    if (isLetterOrSpace(myList.elementAt(i)) == false) {
      return false;
    }
  }
  
  return true;
}

/* Function for ex05_2 */
String longestSentence(String text) {
  List myList = convertStringToList(text);
  
  String longest = "";
  String current = "";
  for (int i = 0; i < myList.length; i++) {
    if (myList.elementAt(i) == "." || i == myList.length - 1) {
      if (current.length > longest.length) {
        longest = current;
      }
      current = "";
    } else {
      current = current + myList.elementAt(i);
    }
  }
  
  return longest;
}

/* Function for ex05_3 */
String longestWord(String text) {
  List myList = convertStringToList(text);
  
  String longest = "";
  String current = "";
  for (int i = 0; i < myList.length; i++) {
    if (myList.elementAt(i) == " " || i == myList.length - 1) {
      if (current.length > longest.length) {
        longest = current;
      }
      current = "";
    } else {
      current = current + myList.elementAt(i);
    }
  }
  
  return longest;
}

/* Function for ex05_4 */
String timesTable(int multiple, int length) {
  List myList = new List();
  
  for (int i = 1; i <= length; i++) {
    myList.add("$multiple x $i = ${i * multiple}");
  }
  
  return convertListToString(myList, true);
}

/* Function for ex05_5 */
String balancedTree(int height) {
  String pyramid = "";
  int nbrCharacters = (height * 2) - 1;
  List myList = new List(nbrCharacters);
  
  myList.fillRange(0, myList.length, "*");
  pyramid = convertListToString(myList, false);
  
  int firstPosition = 0;
  int lastPosition = nbrCharacters - 1;
  
  for (int i = 1; i < height; i++) {
    myList[firstPosition] = " ";
    myList[lastPosition] = " ";
    firstPosition = firstPosition + 1;
    lastPosition = lastPosition - 1;
    pyramid = convertListToString(myList, false) + "\n" + pyramid;
  }
  
  return pyramid;
}

String convertListToString(List l, bool changeLine) {
  String returnValue = "";
  
  for (int i = 0; i < l.length; i++) {
    if (changeLine == true) {
      returnValue = returnValue + l.elementAt(i) + "\n";
    } else {
      returnValue = returnValue + l.elementAt(i);
    }
  }
  
  return returnValue;
}

List convertStringToList(String s) {
  List returnValue = new List();
  
  for (int i = 0; i < s.length; i++) {
    returnValue.add(s.substring(i, i + 1));
  }
  
  return returnValue;
}

bool isLetterOrSpace(String s) {
  switch (s) {
    case " ":
    case "a":
    case "b":
    case "c":
    case "d":
    case "e":
    case "f":
    case "g":
    case "h":
    case "i":
    case "j":
    case "k":
    case "l":
    case "m":
    case "n":
    case "o":
    case "p":
    case "q":
    case "r":
    case "s":
    case "t":
    case "u":
    case "v":
    case "w":
    case "x":
    case "y":
    case "z":
    case "A":
    case "B":
    case "C":
    case "D":
    case "E":
    case "F":
    case "G":
    case "H":
    case "I":
    case "J":
    case "K":
    case "L":
    case "M":
    case "N":
    case "O":
    case "P":
    case "Q":
    case "R":
    case "S":
    case "T":
    case "U":
    case "V":
    case "W":
    case "X":
    case "Y":
    case "Z":
      return true;
  }
  
  return false;
}