//Methods and Classes Library for Homework #2

//Validate passport number
bool passCheck(String passnum) {
  if(passnum.length != 9 || int.tryParse(passnum) == null){
    print("Error: Your passport input must be 9 integers.");
    return false;
  }
  else(print(passnum + " is a valid passport!"));
  return true;
}

//Validate card number
bool cardCheck(String cardnum) {
  if(cardnum.length != 16 || int.tryParse(cardnum) == null){
    print("Error: Please enter a valid 16 digit card number.");
    return false;
  }
  else(print(cardnum + " ACCEPTED!"));
  return true;
}


class DestStats{
//Class for determining shipping cost of a destination.
String placeName;
String globalStatus; // "i" for international, "d" for domestic.
String cost;
String morningTime;
String noonTime;
String eveTime;
//Constructor for this class
DestStats(this.placeName, this.globalStatus, this.cost, this.morningTime, this.noonTime, this.eveTime);
}

//Constructing Objects for each location
var egypt = new DestStats("Egypt", "i", "\$832", "4am", "1pm", "10pm");
var britain = new DestStats("Britain", "i", "\$672", "2am", "3pm", "11pm");
var australia = new DestStats("Australia", "i", "\$1200", "6am", "12pm", "8pm");
var dubai = new DestStats("Dubai", "i", "\$521", "1am", "11am", "7pm");
var losAngeles = new DestStats("Los Angeles", "d", "\$530", "9am", "2pm", "10pm");
var miami = new DestStats("Miami", "d", "\$389", "7am", "5pm", "9pm");
var phoenix = new DestStats("Phoenix", "d", "\$490", "6am", "12pm", "8pm");
var sanFrancisco = new DestStats("San Francisco", "d", "\$521", "4am", "10pm", "7pm");

//Mapping string entries to objects
Map destinations = {
  "Egypt" : egypt,
  "Britain" : britain,
  "Australia" : australia,
  "Dubai" : dubai,
  "Los Angeles" : losAngeles,
  "Miami" : miami,
  "Phoenix" : phoenix,
  "San Francisco" : sanFrancisco
};