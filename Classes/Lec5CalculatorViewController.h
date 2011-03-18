//
//  Lec5CalculatorViewController.h
//  Lec5Calculator
//
//  Created by Daniel Lin on 2/26/11.
//  Copyright 2011 Fliemaker. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Lec5CalculatorViewController : UIViewController {

	IBOutlet UILabel*			displayLabel;
	IBOutlet UILabel*			operationLabel;
	
	NSString*					operation;
	NSMutableArray*				operationsArray;
	
	NSNumber*					leftNum;
	NSNumber*					rightNum;
	NSNumber*					result;
}


@property (nonatomic, readonly,assign) UILabel	*displayLabel;
@property (nonatomic, readonly,assign) UILabel	*operationLabel;
@property (readwrite,retain) NSString			*operation;
@property (readwrite,retain) NSMutableArray		*operationsArray;
@property (readwrite,retain) NSNumber			*leftNum;
@property (readwrite,retain) NSNumber			*rightNum;
@property (readwrite,retain) NSNumber			*result;

- (void) inputNums:(NSString *) number;

- (IBAction) Plus:(id) sender;

- (IBAction) Equal:(id) sender;

- (IBAction) Clear:(id) sender;

- (IBAction) Zero:(id) sender;

- (IBAction) One:(id) sender;

- (IBAction) Two:(id) sender;

- (IBAction) Three:(id) sender;
@end

