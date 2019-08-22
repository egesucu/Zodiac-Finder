//
//  ViewController.swift
//  FindYourZodiacSign
//
//  Created by Ege Sucu on 21.03.2018.
//  Updated on 22.08.2019
//  Copyright © 2018 Ege Sucu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var birthDateText: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var showResultButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setupUI()
        
    }
    
    
    private func setupUI(){
        
        self.view.backgroundColor = UIColor(named: "Background")
        showResultButton.backgroundColor = UIColor(named: "ButtonBackground")
        showResultButton.clipsToBounds = true
        showResultButton.layer.cornerRadius = 5
        showResultButton.setTitleColor(UIColor(named: "ButtonTextColor"), for: .normal)
        
    }
    
    private func findZodiac()->String{
        
        guard let birthDate = birthDateText.text else {return "No Input Given"}
        
        
        switch birthDate.hasSuffix("") {
        case (birthDate.hasSuffix("January")):
            return (birthDate.prefix(2)>="20") ? "Aquarius" : "Capricorn"
            
        case birthDate.hasSuffix("February"):
            return (birthDate.prefix(2)>="18") ? "Pisces" : "Aquarius"
     
        case birthDate.hasSuffix("March"):
            return (birthDate.prefix(2)>="20") ? "Aries" : "Pisces"
           
        case birthDate.hasSuffix("April"):
            return (birthDate.prefix(2)>="20") ? "Taurus" : "Aries"
            
        case birthDate.hasSuffix("May"):
            return (birthDate.prefix(2)>="21") ? "Gemini" : "Taurus"
            
        case birthDate.hasSuffix("June"):
            return (birthDate.prefix(2)>="21") ? "Cancer" : "Gemini"
            
        case birthDate.hasSuffix("July"):
           return (birthDate.prefix(2)>="23") ? "Leo" : "Cancer"

        case birthDate.hasSuffix("August"):
            return (birthDate.prefix(2)>="23") ? "Virgo" : "Leo"
            
        case birthDate.hasSuffix("September"):
            return (birthDate.prefix(2)>="23") ? "Libra" : "Virgo"
            
        case birthDate.hasSuffix("October"):
            return (birthDate.prefix(2)>="23") ? "Scorpio" : "Libra"
            
        case birthDate.hasSuffix("November"):
            return (birthDate.prefix(2)>="22") ? "Sagittarius" : "Scorpio"
            
        default:
            return (birthDate.prefix(2)>="23") ? "Capricorn" : "Sagittarius"
            
        }
        
    }
    
    @IBAction func showZodiac(_ sender: UIButton) {
        let zodiac = findZodiac()
        resultLabel.text = "Your zodiac sign is: \(zodiac)"
        birthDateText.text = ""
    }
}

