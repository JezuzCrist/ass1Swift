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
        for student in students{
            if(student.id == studentId){
                return student
            }
        }
        return nil
        
    }
    
    func deleteStudent(studentToRemove: String) -> Void {
        var removeIndex = 0
        for index in 0 ... (students.count - 1){
            if(self.students[index].id == studentToRemove){
                removeIndex = index
            }
        }
        students.remove(at: removeIndex )
    }
    
    func updateStudent(studentToUpdate: Student) -> Void {
        var changeIndex = 0
        for index in 0 ... (students.count - 1){
            if(self.students[index].id == studentToUpdate.id){
                changeIndex = index
            }
        }
        self.students[changeIndex] = studentToUpdate
    }
}
