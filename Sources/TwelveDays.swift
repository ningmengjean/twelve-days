//Solution goes in Sources
import Foundation

class TwelveDaysSong {
    
    static let day = [1: "first",
               2: "second",
               3: "third",
               4: "fourth",
               5: "fifth",
               6: "sixth",
               7: "seventh",
               8: "eighth",
               9: "ninth",
               10: "tenth",
               11: "eleventh",
               12: "twelfth"]
    
    static let verseDic = [2: "two Turtle Doves, ",
                    3: "three French Hens, ",
                    4: "four Calling Birds, ",
                    5: "five Gold Rings, ",
                    6: "six Geese-a-Laying, ",
                    7:"seven Swans-a-Swimming, ",
                    8: "eight Maids-a-Milking, ",
                    9: "nine Ladies Dancing, ",
                    10: "ten Lords-a-Leaping, ",
                    11: "eleven Pipers Piping, ",
                    12: "twelve Drummers Drumming, "]
    
    static func verse(_ input: Int) -> String {
        var value = input
        guard let day = day[value] else { return "" }
        var verse = "On the \(day) day of Christmas my true love gave to me, "
        if input == 1 {
            return "On the first day of Christmas my true love gave to me, a Partridge in a Pear Tree.\n"
        } else {
            while value > 1 {
                verse.append(verseDic[value]!)
                value -= 1
            }
            return verse + "and a Partridge in a Pear Tree.\n"
        }
    }
    
    static func verses(_ num1: Int, _ num2: Int) -> String {
        var verses = verse(num1) + "\n"
        var result = num2 - num1
        while result > 1 {
            verses.append(verse(result))
            result -= 1
        }
        return verses + "\n" + verse(num2) + "\n"
    }
    
    static func sing() -> String {
        return verses(1, 12)
    }
}
