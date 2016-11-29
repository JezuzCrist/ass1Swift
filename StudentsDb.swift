//
//  StudentsDb.swift
//  assignment1
//
//  Created by macDevMachinVB on 29/11/2016.
//  Copyright © 2016 macDevMachinVB. All rights reserved.
//

import Foundation

class StudentDB {
    var students : [Student] = []
    
    func addStudent(studentToAdd: Student) -> Void {
        students.append(studentToAdd)
    }
    
    func getStudent(studentId: String) -> Student? {
        //return students[students.index(of: studentId)]
        for student in students{
            if(student.id == studentId){
                return student
            }
        }
        return nil
        
    }
    
    func deleteStudent(studentToAdd: Student) -> Void {
        //
    }
    
    func updateStudent(studentToUpdate: Student) -> Void {
        //
    }
    
    
    
}
