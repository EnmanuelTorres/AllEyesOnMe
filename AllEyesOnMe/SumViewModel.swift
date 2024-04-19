//
//  SumViewModel.swift
//  AllEyesOnMe
//
//  Created by ENMANUEL TORRES on 18/04/24.
//

import SwiftUI

class SumViewModel: ObservableObject {
    @Published var number1: String = ""
    @Published var number2: String = ""
    @Published var result: Int = 0
    
    func sum(){
        if let num1 = Int(number1), let num2 = Int(number2) {
            result = num1 + num2
        }else {
            result = 0
        }
    }
}
