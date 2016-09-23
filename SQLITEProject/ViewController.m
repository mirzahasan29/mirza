//
//  ViewController.m
//  SQLITEProject
//
//  Created by Vivian Aranha on 7/7/16.
//  Copyright © 2016 Vivian Aranha. All rights reserved.
//

#import "ViewController.h"

#import "Database.h"
#import "Student.h"


@interface ViewController () {
    NSMutableArray *arrOfStudents;
    Student *selectedStudent;
}

@property (weak, nonatomic) IBOutlet UITableView *studentsTable;
@property (weak, nonatomic) IBOutlet UITextField *txtField;
@property (weak, nonatomic) IBOutlet UIButton *addbtn;
@property (weak, nonatomic) IBOutlet UIButton *updateBtn;


@end

@implementation ViewController

- (IBAction)addStudent:(id)sender {
    
    NSString *studentName = self.txtField.text;
    Database *db = [Database sharedObject];
    [db addThisNewStudentWithName:studentName];
    
    [arrOfStudents removeAllObjects];
    
    [arrOfStudents addObjectsFromArray:[db getMeAllStudents]];
    
    [self.studentsTable reloadData];
    
}

- (IBAction)updateStudent:(id)sender {
    Database *db = [Database sharedObject];
    [db updateStudent:selectedStudent withNewName:self.txtField.text];
    
    [arrOfStudents removeAllObjects];
    [arrOfStudents addObjectsFromArray:[db getMeAllStudents]];
    
    [self.studentsTable reloadData];
    
    self.txtField.text = @"";
    
    self.addbtn.hidden = NO;
    self.updateBtn.hidden = YES;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    arrOfStudents = [[NSMutableArray alloc] init];
    // Do any additional setup after loading the view, typically from a nib.
    
    Database *db = [Database sharedObject];
    [arrOfStudents addObjectsFromArray:[db getMeAllStudents]];
    
//    NSSortDescriptor *sortDescriptor = [NSSortDescriptor sortDescriptorWithKey:@"studentName" ascending:NO];
//    arrOfStudents = [arrOfStudents sortedArrayUsingDescriptors:@[sortDescriptor]];
    
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return arrOfStudents.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    Student *stud = [arrOfStudents objectAtIndex:indexPath.row];
    
    cell.textLabel.text = stud.studentName;
    return cell;
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    selectedStudent = [arrOfStudents objectAtIndex:indexPath.row];

    self.txtField.text = selectedStudent.studentName;
    self.addbtn.hidden = YES;
    self.updateBtn.hidden = NO;
    
}

-(BOOL) tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        
        Database *db = [Database sharedObject];
        [db deleteStudent:[arrOfStudents objectAtIndex:indexPath.row]];

        
        [arrOfStudents removeObjectAtIndex:indexPath.row];
        
        [self.studentsTable reloadData];
        
        

    }
}



@end
