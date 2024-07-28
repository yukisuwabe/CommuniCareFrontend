//
//  FilterViewViewModel.swift
//  CommuniCare
//
//  Created by Hsia Lu wu on 7/14/24.
//

import Foundation

enum Distance: String, CaseIterable {
    case lessThanOneMile = "< 1 mile"
    case oneToThreeMiles = "1 - 3 miles"
    case threeToFiveMiles = "3 - 5 miles"
    case fiveToSevenMiles = "5 - 7 miles"
    case moreThanSevenMiles = "> 7 miles"
}

enum MedicalHistory: String, CaseIterable {
    case cardiovascularDisease = "Cardiovascular disease"
    case hypertension = "Hypertension"
    case diabetes = "Diabetes"
    case kidneyDisease = "Kidney Disease"
    case obesity = "Obesity"
}
