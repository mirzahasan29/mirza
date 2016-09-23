//
//  Database.m
//  SQLITEProject
//
//  Created by Vivian Aranha on 7/13/16.
//  Copyright © 2016 Vivian Aranha. All rights reserved.
//


//http://www.galloway.me.uk/tutorials/singleton-classes/
#import "Database.h"

@implementation Database

static Database *database;


-(NSArray *) getMeAllStudents {
    NSMutableArray *arrayOfAllStudents = [[NSMutableArray alloc] init];
    
    NSString *query = @"SELECT * FROM Students;";
    
    sqlite3_stmt *statement;
    
    if(sqlite3_prepare_v2(database, [query UTF8String], -1, &statement, nil) == SQLITE_OK){
        
        while (sqlite3_step(statement) == SQLITE_ROW) {
            int stuId = sqlite3_column_int(statement, 0);
            char *stuName =(char *) sqlite3_column_text(statement, 1);
            NSString *name = [[NSString alloc] initWithUTF8String:stuName];
            
            Student *student = [[Student alloc] init];
            student.studentId = stuId;
            student.studentName = name;
            
            [arrayOfAllStudents addObject:student];
            
        }
        sqlite3_finalize(statement);

    } else {
        NSLog(@"Error");
    }
    
    return arrayOfAllStudents;
}


-(void) addThisNewStudentWithName:(NSString *) stName {
    
    NSString *query = [NSString stringWithFormat:@"INSERT INTO Students (StudentName) VALUES ('%@');",stName];
    
    sqlite3_stmt *statement;
    
    if(sqlite3_prepare_v2(database, [query UTF8String], -1, &statement, nil) == SQLITE_OK){
        if (sqlite3_step(statement) == SQLITE_DONE)
        {
        }
        sqlite3_finalize(statement);
    }
}

-(void) updateStudent:(Student *) student withNewName:(NSString *) str {
    
    NSString *query = [NSString stringWithFormat:@"UPDATE Students SET StudentName ='%@' WHERE StudentID = %d;",str, student.studentId];
    
    sqlite3_stmt *statement;
    
    if(sqlite3_prepare_v2(database, [query UTF8String], -1, &statement, nil) == SQLITE_OK){
        if (sqlite3_step(statement) == SQLITE_DONE)
        {
        }
        sqlite3_finalize(statement);
    }

    
}

-(void) deleteStudent:(Student *) student {
    
    NSString *query = [NSString stringWithFormat:@"DELETE FROM Students WHERE StudentID = %d;", student.studentId];
    
    sqlite3_stmt *statement;
    
    if(sqlite3_prepare_v2(database, [query UTF8String], -1, &statement, nil) == SQLITE_OK){
        if (sqlite3_step(statement) == SQLITE_DONE)
        {
        }
        sqlite3_finalize(statement);
    }

}


- (instancetype)init
{
    self = [super init];
    if (self) {
        
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        NSString *documentsDirectory = [paths objectAtIndex:0];
        
        NSString *pathToDb = [documentsDirectory stringByAppendingPathComponent:@"myDatabase"];

//        NSString *pathToDb = [[NSBundle mainBundle] pathForResource:@"myDatabase" ofType:@""];
        
        if(sqlite3_open([pathToDb UTF8String], &database) != SQLITE_OK){
            NSLog(@"Failed to open DB");
        }

    }
    return self;
}

+(Database *) sharedObject {
//    static Database *sharedMyManager = nil;
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//        sharedMyManager = [[self alloc] init];
//    });
//    return sharedMyManager;
    
    
    if(!database){
        database = [[Database alloc] init];
    }
    return database;
}




@end
