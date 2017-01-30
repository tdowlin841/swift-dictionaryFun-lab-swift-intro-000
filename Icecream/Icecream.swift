//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    
    var favoriteFlavorsOfIceCream = ["Joe": "Peanut Butter and Chocolate",
                                     "Tim": "Natural Vanilla",
                                     "Sophie": "Mexican Chocolate",
                                     "Deniz": "Natural Vanilla",
                                     "Tom": "Mexican Chocolate",
                                     "Jim": "Natural Vanilla",
                                     "Susan": "Cookies 'N' Cream"]
    
    
    // 2.
    func names(forFlavor:String) -> [String]{
        
        var listOfNames: [String] = []
        
        for (key,value) in favoriteFlavorsOfIceCream {
            if forFlavor == value {
                listOfNames.append(key)
            }
        }
        
        return listOfNames
    }
    
    
    // 3.
    func count(forFlavor:String) -> Int {
        
        var numberOfppl  = 0
        
        for (iceCream) in favoriteFlavorsOfIceCream {
            if forFlavor.contains(iceCream.value) {
            numberOfppl += 1
            }
        }
        
        return numberOfppl
    }
    
    
    // 4.
    func flavor(forPerson person:String ) -> String? {
      /*
        var flavor:String? = ""
        
        for (name,iceCream) in favoriteFlavorsOfIceCream {
            if person == name {
                flavor = iceCream
            }
        }
        return flavor
    }*/
        return favoriteFlavorsOfIceCream[person]
        
    }
    
    
    // 5.
    func replace(flavor:String, forPerson:String) -> Bool {
        
        let thisList = favoriteFlavorsOfIceCream.keys
        
        for name in thisList {
            
            if forPerson == name {
                favoriteFlavorsOfIceCream[forPerson] = flavor
        
                return true
            }
        }
        return false
    }
    
    
    // 6.
    func remove(person:String) -> Bool {
        var trueOrFalse = true
        
        for keyAndValue in favoriteFlavorsOfIceCream {
            if person == keyAndValue.key {
                favoriteFlavorsOfIceCream.removeValue(forKey: person)
        trueOrFalse = true
        } else {
        trueOrFalse = false
                }
        }
        return trueOrFalse
    }
    
    
// 7.
    func numberOfAttendees() -> Int {
        var count = 0
        count = favoriteFlavorsOfIceCream.count
        return count
    }
    
// 8.
    func add(person:String, withFlavor:String) -> Bool {
        var trueOrFalse = true
        for keyValue in favoriteFlavorsOfIceCream {
            if person == favoriteFlavorsOfIceCream[keyValue.key] {
        trueOrFalse = false
            } else {
        favoriteFlavorsOfIceCream[person] = withFlavor
            }
        }
        return trueOrFalse
    }
    
// 9.
    func attendeeList() -> String {
        var formatedList = ""
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        var count = 0
        
        for (rsvp) in allNames {
            
            //
            if let iceCreamFlavor = favoriteFlavorsOfIceCream[rsvp]{
            
            //
            count += 1
            //
            if (count < favoriteFlavorsOfIceCream.keys.count){
                formatedList += "\(rsvp) likes \(iceCreamFlavor)\n"
                
            } else {
                    formatedList += "\(rsvp) likes \(iceCreamFlavor)"
                }
              
            }
            

    }
        print(formatedList)
        return formatedList
}
}
