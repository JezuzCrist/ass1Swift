//
//  assignment1Tests.swift
//  assignment1Tests
//
//  Created by macDevMachinVB on 29/11/2016.
//  Copyright © 2016 macDevMachinVB. All rights reserved.
//

import XCTest
@testable import assignment1

class assignment1Tests: XCTestCase {
    var studentDB : StudentDB? = nil
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        studentDB = StudentDB()
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testAddStudent() {
        let student1 = Student()
        student1.firstName = "omer"
        student1.lastName = "mintz"
        student1.id = "311"
        student1.phoneNumber = "1234567"
        
        self.studentDB?.addStudent(studentToAdd: student1)
        
        
        XCTAssert(self.studentDB?.students[0].id == "311")
        
        XCTAssert(self.studentDB?.students[0].firstName == "omer")
        
        XCTAssert(self.studentDB?.students[0].lastName == "mintz")
        
        XCTAssert(self.studentDB?.students[0].phoneNumber == "1234567")
        
    }
    func testGetStudent() {
        let student1 = Student()
        student1.firstName = "omer"
        student1.lastName = "mintz"
        student1.id = "311"
        student1.phoneNumber = "1234567"
        
        self.studentDB?.students.append(student1)
        
        let studentGotten = self.studentDB?.getStudent(studentId: "311")
        
        XCTAssert(studentGotten?.id == "311")
        
        XCTAssert(studentGotten?.firstName == "omer")
        
        XCTAssert(studentGotten?.lastName == "mintz")
        
        XCTAssert(studentGotten?.phoneNumber == "1234567")
        
    }
    func testDeleteStudent() {
        let student1 = Student()
        student1.firstName = "omer"
        student1.lastName = "mintz"
        student1.id = "311"
        student1.phoneNumber = "1234567"
        
        self.studentDB?.students.append(student1)
        self.studentDB?.deleteStudent(studentToRemove: student1.id)
        
        XCTAssert(self.studentDB?.students.count == 0)
        
        
    }
    func testUpdateStudent() {

        let student1 = Student()
        student1.firstName = "omer"
        student1.lastName = "mintz"
        student1.id = "311"
        student1.phoneNumber = "1234567"
        
        let student2 = Student()
        student2.id="311"
        student2.firstName = "Nissim"
        
        self.studentDB?.students.append(student1)
        self.studentDB?.updateStudent(studentToUpdate: student2)
        
        XCTAssert(self.studentDB?.students.count == 1)
        XCTAssert(self.studentDB?.students[0].firstName == student2.firstName)
        
    }
    
    //    func testPerformanceExample() {
        //        // This is an example of a performance test case.
        //        self.measure {
            //            // Put the code you want to measure the time of here.
            //        }
            //    }

        }
