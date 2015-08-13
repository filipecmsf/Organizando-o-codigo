//
//  ViewController.m
//  Organizando o codigo
//
//  Created by Filipe Faria on 10/08/15.
//  Copyright © 2015 Filipe Faria. All rights reserved.
//

#import "MainViewController.h"
#import "Character.h"

@interface MainViewController ()

- (IBAction)saveCharacter:(id)sender;
- (IBAction)showInfo:(id)sender;
- (IBAction)tapOutsideField:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *ageField;
@property (strong, nonatomic) Character *character;
// TODO: deveria implementar uma array para armazenar os personagens
@end

@implementation MainViewController

- (void) viewDidLoad {
    [super viewDidLoad];
}

- (void) didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark
#pragma mark metodos internos

- (IBAction) saveCharacter:(id)sender {
    
    NSString *message = @"";
    
    //valida se foi possui o nome do personagem
    if([self.nameField.text isEqualToString:@""]){
        message = @"Por favor, informe o nome do personagem.";
        [self showAlertWithTitle:@"Atenção" andMessage:message];
        return;
    }
    //valida se foi possui a idade do personagem
    if([self.ageField.text isEqualToString:@""]){
        message = @"Por favor, informe a idade do personagem.";
        [self showAlertWithTitle:@"Atenção" andMessage:message];
        return;
    }
    
    if([message isEqualToString:@""]){
//#error A validação se o objeto foi inicializado é importante! porque esta comentado?
        if(!self.character){
            self.character = [[Character alloc] init];
        }
        
        NSDictionary *data = @{@"name":self.nameField.text,@"age":self.ageField.text};
        
        [self.character fillCharacterWithDict:data];
        message = @"Dados do personagem salvo com sucesso!";
        
    }
    
    [self showAlertWithTitle:@"Atenção" andMessage:message];
}

- (IBAction) showInfo:(id)sender {
    if(self.character){
        [self showAlertWithTitle:@"Info" andMessage:[self.character getCharacterData]];
    }
}

- (IBAction)tapOutsideField:(id)sender {
    [self.view endEditing:YES];
}

- (void) showAlertWithTitle:(NSString *)title andMessage:(NSString *) message{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title message:message delegate:nil cancelButtonTitle:@"Fechar" otherButtonTitles:nil];
    [alert show];
}
@end
