//
//  TestMethodWasCalledDemoTests.swift
//  TestMethodWasCalledDemoTests
//
//  Created by Andrew Bancroft on 12/15/14.
//  Copyright (c) 2014 Andrew Bancroft. All rights reserved.
//

import UIKit
import XCTest

class TestMethodWasCalledDemoTests: XCTestCase {
	override func setUp() {
		super.setUp()
		// Put setup code here. This method is called before the invocation of each test method in the class.
	}
	
	override func tearDown() {
		// Put teardown code here. This method is called after the invocation of each test method in the class.
		super.tearDown()
	}
	
	func testUIAlertViewShowsAfterViewLoads() {
		class FakeAlertView: UIAlertView {
			var showWasCalled = false
			
			private override func show() {
				showWasCalled = true
			}
		}
		
		let vc = ViewController()
		vc.alertView = FakeAlertView()
		
		vc.viewDidLoad()
		XCTAssertTrue((vc.alertView as! FakeAlertView).showWasCalled, "Show was not called.")
	}
}