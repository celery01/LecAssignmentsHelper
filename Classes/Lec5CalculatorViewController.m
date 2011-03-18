//
//  Lec5CalculatorViewController.m
//  Lec5Calculator
//
//  Created by Daniel Lin on 2/26/11.
//  Copyright 2011 Fliemaker. All rights reserved.
//

#import "Lec5CalculatorViewController.h"

static NSString *kOperationNumInput = @"numInput";
static NSString *kOperationPlus		= @"plus";
static NSString *kOperationMinus	= @"minus";
static NSString *kOperationMultiply = @"multiply";
static NSString *kOperationDivide	= @"divide";
static NSString *kOperationEqual	= @"equal";



@implementation Lec5CalculatorViewController
@synthesize displayLabel,operationLabel;
@synthesize leftNum,rightNum,result,operation,operationsArray;

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	
	[self Clear:nil];
	self.operationsArray = [NSArray array];
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}

- (void)dealloc {
    [super dealloc];
}

- (IBAction) Plus:(id) sender {
	float leftFloat = [displayLabel.text floatValue];
	
	self.leftNum = [NSNumber numberWithFloat:leftFloat];
	
	operation = kOperationPlus;
	operationLabel.text = @"+";

	[self.operationsArray addObject:operation];
	
//	[self Clear:nil];
}

- (IBAction) Equal:(id) sender {

	float rightFloat = [displayLabel.text floatValue];
	
	if([self.operationsArray count] != 0) {
		
		for (int i = 0; i < [self.operationsArray count]; i++) {
			
			
			
		}
	}
	
	if ([operation isEqualToString:kOperationPlus]) {
		float resultFloat = rightFloat + [leftNum floatValue];
		self.result = [NSNumber numberWithFloat:resultFloat];
	}
		
	displayLabel.text = [result stringValue]; 
	
	
	//clear operation label&operation
	operationLabel.text = @"";
	operation = @"";
}

- (IBAction) Clear:(id) sender {
	//NSLog(@"clear!!!!!");
	operationLabel.text = @"";
	displayLabel.text = @"0";
}

- (IBAction) Zero:(id) sender {
	
	NSLog(@"%@",displayLabel.text);
}

- (IBAction) One:(id) sender {
	[self inputNums:@"1"];
}

- (IBAction) Two:(id) sender {
	[self inputNums:@"2"];
}

- (IBAction) Three:(id) sender {
	[self inputNums:@"3"];
}


- (void) inputNums:(NSString *) number {

	if ([displayLabel.text isEqualToString:@"0"] ||
		[operation isEqualToString:kOperationPlus]) {
		displayLabel.text = number;
		operation = kOperationNumInput;
	}
	else {
		displayLabel.text = [displayLabel.text stringByAppendingString:number];
	}
	
}

@end
