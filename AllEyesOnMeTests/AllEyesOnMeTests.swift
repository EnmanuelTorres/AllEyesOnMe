//
//  AllEyesOnMeTests.swift
//  AllEyesOnMeTests
//
//  Created by ENMANUEL TORRES on 18/04/24.
//

import XCTest
@testable import AllEyesOnMe

final class AllEyesOnMeTests: XCTestCase {

    func test_sum_func_returns_succeed_result(){
        //Given
        let sut = SumViewModel()
        sut.number1 = "2"
        sut.number2 = "1"
        
        //When
        sut.sum()
        
        //Then
        XCTAssertEqual(sut.result, 3)
        
    }

}
