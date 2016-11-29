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

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        StudentDB.instance.students = []
        
        
        
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
        
        StudentDB.instance.addStudent(studentToAdd: student1)
        
        XCTAssert(StudentDB.instance.students[0].id == "311")
        XCTAssert(StudentDB.instance.students[0].firstName == "omer")
        XCTAssert(StudentDB.instance.students[0].lastName == "mintz")
        XCTAssert(StudentDB.instance.students[0].phoneNumber == "1234567")
        
    }
    func testAddMasterStudent() {
        let student1 = MasterStudent()
        student1.firstName = "omer"
        student1.lastName = "mintz"
        student1.id = "311"
        student1.phoneNumber = "1234567"
        student1.mscDegree = "yolo"
        student1.thisis = "i love ios"
        
        StudentDB.instance.addStudent(studentToAdd: student1)
        
        
        XCTAssert(StudentDB.instance.students[0].id == "311")
        XCTAssert(StudentDB.instance.students[0].firstName == "omer")
        XCTAssert(StudentDB.instance.students[0].lastName == "mintz")
        XCTAssert(StudentDB.instance.students[0].phoneNumber == "1234567")
        XCTAssert((StudentDB.instance.students[0] as? MasterStudent)?.mscDegree == "yolo")
        XCTAssert((StudentDB.instance.students[0] as? MasterStudent)?.thisis == "i love ios")
        
    }
     func testAddPhdStudent() {
        let student1 = PhdStudent()
        student1.firstName = "omer"
        student1.lastName = "mintz"
        student1.id = "311"
        student1.phoneNumber = "1234567"
        student1.mscDegree = "yolo"
        student1.thisis = "i love ios"
        student1.phdDegree = "ios is the best"
        
        StudentDB.instance.addStudent(studentToAdd: student1)
        
        XCTAssert(StudentDB.instance.students[0].id == "311")
        XCTAssert(StudentDB.instance.students[0].firstName == "omer")
        XCTAssert(StudentDB.instance.students[0].lastName == "mintz")
        XCTAssert(StudentDB.instance.students[0].phoneNumber == "1234567")
        XCTAssert((StudentDB.instance.students[0] as? PhdStudent)?.mscDegree == "yolo")
        XCTAssert((StudentDB.instance.students[0] as? PhdStudent)?.thisis == "i love ios")
        XCTAssert((StudentDB.instance.students[0] as? PhdStudent)?.phdDegree == "ios is the best")
        
    }
    func testGetStudent() {
        let student1 = Student()
        student1.firstName = "omer"
        student1.lastName = "mintz"
        student1.id = "311"
        student1.phoneNumber = "1234567"
        
        StudentDB.instance.students.append(student1)
        
        let studentGotten = StudentDB.instance.getStudent(studentId: "311")
        
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
        
        StudentDB.instance.students.append(student1)
        StudentDB.instance.deleteStudent(studentToRemove: student1.id)
        
        XCTAssert(StudentDB.instance.students.count == 0)
        
        
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
        
        StudentDB.instance.students.append(student1)
        StudentDB.instance.updateStudent(studentToUpdate: student2)
        
        XCTAssert(StudentDB.instance.students.count == 1)
        XCTAssert(StudentDB.instance.students[0].firstName == student2.firstName)
        
    }
}
