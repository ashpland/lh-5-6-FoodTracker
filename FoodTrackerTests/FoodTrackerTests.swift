//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Andrew on 2017-11-05.
//  Copyright © 2017 hearthedge. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
  
    //MARK: Meal Class Tests
    
    // Confirm that the Meal inititalizer returns a Meal object when passed valid parameters
    func testMealIntializationSucceeds() {
       let zeroRatingMeal = Meal.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        
        let positiveRatingMeal = Meal.init(name: "Positive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingMeal)
    }
    
    func testMealIntializationFails() {
        let negativeRaintMeal = Meal.init(name: "Negative", photo: nil, rating: -1)
        XCTAssertNil(negativeRaintMeal)
        
        let emptyStringMeal = Meal.init(name: "", photo: nil, rating: 0)
        XCTAssertNil(emptyStringMeal)
        
        let largeRatingMeal = Meal.init(name: "Large", photo: nil, rating: 6)
        XCTAssertNil(largeRatingMeal)
    }
    
    
    
}
