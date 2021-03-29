//
//  ViewController.m
//  pdftronExample
//
//  Created by Mark Holland on 18/3/21.
//

#import "ViewController.h"
#import <PDFNet/PDFNet.h>
#import <Tools/Tools.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewDidAppear:(BOOL)animated {
    // Create a PTDocumentController
    PTDocumentController *documentController = [[PTDocumentController alloc] init];
    // The PTDocumentController must be in a navigation controller before a document can be opened
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:documentController];
    navigationController.modalPresentationStyle = UIModalPresentationFullScreen;
    navigationController.navigationBar.translucent = NO;
    navigationController.toolbar.translucent = NO;
    // Open a file from URL.
    NSURL *fileURL = [[NSURL alloc] initWithString:@"https://pdftron.s3.amazonaws.com/downloads/pdfref.pdf"];
    [documentController openDocumentWithURL:fileURL];
    // Show navigation (and document) controller.
    [self presentViewController:navigationController animated:YES completion:nil];
}

@end
