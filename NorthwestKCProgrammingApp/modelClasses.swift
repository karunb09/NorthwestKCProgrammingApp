//
//  modelClasses.swift
//  NorthwestKCProgrammingApp
//
//  Created by Bourishetty,Karun on 3/12/19.
//  Copyright © 2019 Bourishetty,Karun. All rights reserved.
//

import Foundation

class Schools {

    private var schools:[School]
    
    private init(){
        self.schools = []
    }
    
    func numSchools()->Int{
        return schools.count
    }
    
    subscript(school:Int)->School{
        return schools[school]
    }
    
    func add(school:School){
        schools.append(school)
    }
    
    func delete(school:School){
        for i in 0 ..< schools.count {
            if school.name == schools[i].name{
                schools.remove(at: i)
            }
        }
    }
    
    static var shared = Schools()
}

class School{
    var name:String
    var coach:String
    var teams:[Team] = []
    
    init(name:String,coach:String){
        self.name = name
        self.coach = coach
        self.teams=[]
    }
    
//    func add(name:String,coach:String){
//        self.name = name
//        self.coach = coach
//    }
    
    subscript(team:Int)->Team{
        return teams[team]
    }
    
    func addTeam(name:String, students:[String]){
        teams.append(Team.init(names: name, students: students))
    }
    
}


class Team{
    var teamName:String
    var teamStudents:[String]
    
     init(names:String,students:[String]){
        self.teamName = names
        self.teamStudents = students
    }
    
}
