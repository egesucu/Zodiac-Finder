//
//  ViewController.swift
//  FindYourZodiacSign
//
//  Created by Ege Sucu on 21.03.2018.
//  Copyright © 2018 Ege Sucu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var birthDateText: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    var zodiac : String = ""
    var birthDate = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func findZodiac(){
        
        birthDate = birthDateText.text!
        
        switch birthDate.hasSuffix("") {
        case (birthDate.hasSuffix("January")):
            if (birthDate.prefix(2) >= "20" ) {
                zodiac = "Aquarius"
            } else {
                zodiac = "Capricorn"
            }
        case birthDate.hasSuffix("February"):
            if (birthDate.prefix(2) >= "18" ) {
                zodiac = "Pisces"
            } else {
                zodiac = "Aquarius"
            }
        case birthDate.hasSuffix("March"):
            if (birthDate.prefix(2) >= "20" ) {
                zodiac = "Aries"
            } else {
                zodiac = "Pisces"
            }
        case birthDate.hasSuffix("April"):
            if (birthDate.prefix(2) >= "20" ) {
                zodiac = "Taurus"
            } else {
                zodiac = "Aries"
            }
        case birthDate.hasSuffix("May"):
            if (birthDate.prefix(2) >= "21" ) {
                zodiac = "Gemini"
            } else {
                zodiac = "Taurus"
            }
        case birthDate.hasSuffix("June"):
            if (birthDate.prefix(2) >= "21" ) {
                zodiac = "Cancer"
            } else {
                zodiac = "Gemini"
            }
        case birthDate.hasSuffix("July"):
            if (birthDate.prefix(2) >= "23" ) {
                zodiac = "Leo"
            } else {
                zodiac = "Cancer"
            }
        case birthDate.hasSuffix("August"):
            if (birthDate.prefix(2) >= "23" ) {
                zodiac = "Virgo"
            } else {
                zodiac = "Leo"
            }
        case birthDate.hasSuffix("September"):
            if (birthDate.prefix(2) >= "23" ) {
                zodiac = "Libra"
            } else {
                zodiac = "Virgo"
            }
        case birthDate.hasSuffix("October"):
            if (birthDate.prefix(2) >= "23" ) {
                zodiac = "Scorpio"
            } else {
                zodiac = "Libra"
            }
        case birthDate.hasSuffix("November"):
            if (birthDate.prefix(2) >= "22" ) {
                zodiac = "Sagittarius"
            } else {
                zodiac = "Scorpio"
            }
        default:
            if (birthDate.prefix(2) >= "23" ) {
                zodiac = "Capricorn"
            } else {
                zodiac = "Sagittarius"
            }
        }
        
    }
    
    @IBAction func showZodiac(_ sender: UIButton) {
        findZodiac()
        resultLabel.text = "Your zodiac sign is: \(zodiac)"
        birthDateText.text = ""
    }
}

