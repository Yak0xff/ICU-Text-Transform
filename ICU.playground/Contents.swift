//: Playground - noun: a place where people can play

import Foundation

func transformString(input: String, transform: String) -> String {
    return input.stringByApplyingTransform(transform, reverse: false)!
}

//MARK: - The conversion from Chinese to Latin
let latinString = transformString("上海", transform: NSStringTransformToLatin)


//MARK: - Convert non-ASCII characters to ASCII,convert to lowercase, delete spaces
let ASCIIString = transformString("Café au lait", transform: "Latin-ASCII; Lower; [:Separator:] Remove")


//MAKR: - Convert to lowercase
let lowerWords01 = transformString("HELLO WORLD", transform: "Lower")


//MAKR: - Convert only vowels to lowercase
let lowerWords02 = transformString("HELLO WORLD", transform: "[AEIOU] Lower")



//MARK: -Convert to Latin, then to ASCII, then to lowercase
let outputString01 = transformString("上海", transform: "Any-Latin; Latin-ASCII; Lower")


let outputString02 = transformString("København", transform: "Any-Latin; Latin-ASCII; Lower")


let outputString03 = transformString("กรุงเทพมหานคร", transform: "Any-Latin; Latin-ASCII; Lower")


let outputString04 = transformString("Αθήνα", transform: "Any-Latin; Latin-ASCII; Lower")


let outputString05 = transformString("“Æ « © 1984”", transform: "Any-Latin; Latin-ASCII; Lower")



//MARK: -Delete punctuation
let result01 = transformString("“Make it so,” said Picard.", transform: "[:Punctuation:] Remove")



//MARK: -Delete everything that is not a letter
let result02 = transformString("5 plus 6 equals 11 👍!", transform: "[:^Letter:] Remove")



//MARK: -Convert to typographical punctuation
let result03 = transformString("\"How's it going?\"", transform: "Publishing")



//MARK: -Convert to hex representation
let result04 = transformString("😃!", transform: "Hex")


let result05 = transformString("😃!", transform: "Hex/Java")


let result06 = transformString("😃!", transform: "Hex/Unicode")


let result07 = transformString("😃!", transform: "Hex/Perl")


let result08 = transformString("😃!", transform: "Hex/XML")

 

//MARK: -Normalize to different normalization forms
let result09 = transformString("é", transform: "NFD; Hex/Unicode")


let result10 = transformString("é", transform: "NFC; Hex/Unicode")


let result11 = transformString("2⁸", transform: "NFKD")


let result12 = transformString("2⁸", transform: "NFKC")

