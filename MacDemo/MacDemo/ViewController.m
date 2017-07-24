//
//  ViewController.m
//  MacDemo
//
//  Created by Riber on 2017/7/21.
//  Copyright © 2017年 Riber. All rights reserved.
//

#import "ViewController.h"
#import "RBAppModel.h"
#import "Test1.h"
#import "AppDelegate.h"

@interface ViewController () <NSTableViewDelegate, NSTableViewDataSource>

@property (weak) IBOutlet NSTableView *tableView;
@property (nonatomic, strong) NSMutableArray *dataArray;
@property (nonatomic, strong) NSWindow *secondWindow;

@end

@implementation ViewController

- (NSMutableArray *)dataArray {
    if (_dataArray == nil) {
        _dataArray = [NSMutableArray arrayWithCapacity:0];
    }
    
    return _dataArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    
    [self loadData];
}

- (void)loadData {
    self.dataArray = [RBAppModel getDataArray];
    
    [self.tableView reloadData];
}

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView {
    return self.dataArray.count;
}

- (NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
    NSTableCellView *cellView = [tableView makeViewWithIdentifier:tableColumn.identifier owner:self];
    
    if ([tableColumn.identifier isEqualToString:@"RBAppCell"]) {
        RBAppModel *model = self.dataArray[row];
        
        cellView.textField.stringValue = model.name;
        cellView.imageView.image = [NSImage imageNamed:model.appIcon];
        
        return cellView;
    }
    
    return cellView;
}

- (CGFloat)tableView:(NSTableView *)tableView heightOfRow:(NSInteger)row {
    return 30;
}

- (IBAction)addButtonClick:(id)sender {
    NSWindow *mainWindow = [NSApplication sharedApplication].mainWindow;

    _secondWindow = [[NSWindow alloc] init];
    _secondWindow.title = @"第二个页面";
    [_secondWindow setFrame:NSMakeRect(500, 500, 500, 500) display:YES];
    Test1 *vc = [[Test1 alloc] initWithNibName:@"Test1" bundle:nil];
    [_secondWindow.contentView addSubview:vc.view];
    
    vc.view.frame = _secondWindow.contentView.bounds;

    mainWindow = _secondWindow;
    
    [_secondWindow makeKeyAndOrderFront:nil];
    [self.view.window orderOut:nil];
    
}

- (IBAction)deleteButtonClick:(id)sender {
}

@end
