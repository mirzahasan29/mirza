//
//  Database.h
//  SQLITEProject
//
//  Created by Vivian Aranha on 7/13/16.
//  Copyright © 2016 Vivian Aranha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "sqlite3.h"
#import "Student.h"

@interface Database : NSObject {
    
    sqlite3 *database;
    
}

+(Database *) sharedObject;
-(NSArray *) getMeAllStudents;

-(void) addThisNewStudentWithName:(NSString *) stName;
-(void) updateStudent:(Student *) student withNewName:(NSString *) str;
-(void) deleteStudent:(Student *) student;

@end
