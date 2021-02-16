//
//  FireStoreTest.swift
//  DartCounterSwiftUITests
//
//  Created by Jonas Schlauch on 06.02.21.
//

@testable import DartCounterSwiftUI
import Firebase
import XCTest

class FireStoreTest: XCTestCase {
    
    var fireStore: FireStore!
    
    /**
     Clears the whole emulator database
     */
    
    override class func setUp() {
        // TODO: setup the tests
        let settings = Firestore.firestore().settings
        settings.host = "localhost:8080"
        settings.isPersistenceEnabled = false
        settings.isSSLEnabled = false
        Firestore.firestore().settings = settings
        
    }
    
    override class func tearDown() {
        // TODO: cleanup the tests
    }
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        fireStore = FireStore()
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        fireStore = nil
        clearFirestore()
    }
    
    func testAdd() throws {
      /**
         // Adds data to Firestore and checks if it exists in Firestore afterwards
         
         // MARK: - ARRANGE
         
         var receivedData: TestData?
         let sentData = TestData(testKey: "testValue")
         
         // MARK: - ACT
         fireStore.add(collection: "testCollection", document: "testDocument", data: sentData)
         
         let expectation = self.expectation(description: "testAdd()")
         
         fireStore.fetch(collection: "testCollection", document: "testDocument", completion: {(data: TestData?) -> Void in
             receivedData = data
             expectation.fulfill()
         })
         
         waitForExpectations(timeout: 1, handler: nil)
         
         // MARK: - ASSERT
         XCTAssertEqual(receivedData, sentData)
         */
    }
    
    
    func testFetch() throws {
        /**
         // Fetches data from Firestore and checks if the received data equals the expected data
         
         // MARK: - ARRANGE
        
         var received: TestData?
         let expected = TestData(testKey: "testValue")
         
         // MARK: - ACT
         let expectation = self.expectation(description: "testFetch()")
         
         fireStore.fetch(collection: "testCollection", document: "testDocument", completion: { (data: TestData?) -> Void in
             received = data
             expectation.fulfill()
         })
         
         waitForExpectations(timeout: 1, handler: nil)
         
         // MARK: - ASSERT
         XCTAssertEqual(received, expected)
         */
    }
    
    func testUpdate() throws {
        // TODO: add test description
        
        // MARK: - ARRANGE
 
        // MARK: - ACT
        
        // MARK: - ASSERT
    }
    
    func testObserve() throws {
       /**
         // Observes data from Firestore and checks if the amount of received updates equal the amount of expected updates
         
         // MARK: - ARRANGE
        
         var updatesReceived = 0
         let updatesExpected = 2
         
         // MARK: - ACT
         let expectation = self.expectation(description: "testObserve()")
         
         fireStore.observe(collection: "testCollection", document: "testDocument", completion: { (data: TestData?) -> Void in
             
             updatesReceived+=1
             
             if updatesReceived == 1 {
                 expectation.fulfill()
             }
         })
         
         // TODO: update data 2 times to trigger 2 updates
         
         waitForExpectations(timeout: 1, handler: nil)

         // MARK: - ASSERT
         XCTAssertEqual(updatesReceived, updatesExpected)
         */
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
