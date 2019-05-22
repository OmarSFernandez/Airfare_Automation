import 'package:Homework2/travel.dart' as travel; //Methods and Classes Library for Homework #2
import 'dart:io'; //Needed for user input

main(List<String> arguments) {
    var selectedDest;
    var passport;
    var cardnum;
    bool validPass;
    bool validCard;
    var departTime;
    var cardType;

    //User input for destination
    print("PLEASE ENTER DISIRED DESTINATION");
    travel.destinations.forEach((k, v) => print(k));
    selectedDest = stdin.readLineSync();
    bool containKey = travel.destinations.containsKey(selectedDest);


    if(containKey == false){
        print(selectedDest + " is an INVALID DESTINATION");
        print("PROGRAM EXIT");
        return exit;
    }
    else(print("You've selected: " + selectedDest));
    var selectedVal = travel.destinations[selectedDest];


    //User input for passport
    if(selectedVal.globalStatus == "i"){
        print("You're going international! Please enter a valid 9-digit passport number:");
        passport = stdin.readLineSync();
        validPass = travel.passCheck(passport);
        if(validPass == false){
            print("PROGRAM EXIT");
            return exit;
        }
    }
    //User input for departure time
    print("PLEASE TYPE 1, 2, OR 3 FOR DESIRED DEPARTURE TIME: 1)"
        + selectedVal.morningTime
        + " 2)" + selectedVal.noonTime
        + " 3)" + selectedVal.eveTime);
    departTime = stdin.readLineSync();

    Map departTimesMap = {
        "1" : selectedVal.morningTime,
        "2" : selectedVal.noonTime,
        "3" : selectedVal.eveTime
    };

    if(departTimesMap.containsKey(departTime) == false){
        print("INVALID SELECTION, PROGRAM EXIT");
        return exit;
    }
    else(departTime = departTimesMap[departTime].toString());
    print("Your depart time is: " + departTime);

    //User input for card type
    print("PLEASE TYPE 1 OR 2 FOR DESIRED PAYMENT METHOD: 1)DEBIT 2)CREDIT");
    cardType = stdin.readLineSync();

    Map cardTypes = {
        "1" : "DEBIT",
        "2" : "CREDIT"
    };

    if(cardTypes.containsKey(cardType) == false){
        print("INVALID SELECTION, PROGRAM EXIT");
        return exit;
    }
    else(cardType = cardTypes[cardType].toString());

    //User input for card number
    print("Please enter a valid 16-digit " + cardType + " number:");
    cardnum = stdin.readLineSync();
    validCard = travel.cardCheck(cardnum);
    if(validCard == false){
        print("INVALID CARD NUMBER, PROGRAM EXIT");
        return exit;
    }

    //FINAL PRINT OUT
    print("CONGRATULATIONS! You are on your way to " + selectedDest + " at " + departTime);
    if(selectedVal.globalStatus == "i"){
        print("You are going international and your passport numner " + passport + " is valid.");
    }
    print("Card Type: " + cardType);
    print("Card number " + cardnum);

}






