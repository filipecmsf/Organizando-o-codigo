//
//  Character.m
//  Organizando o codigo
//
//  Created by Filipe Faria on 12/08/15.
//  Copyright © 2015 Filipe Faria. All rights reserved.
//

#import "Character.h"

@interface Character()

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSNumber *age;

@end

@implementation Character

- (void) fillCharacterWithDict:(NSDictionary *)data{
    if(data){
        self.name = [data objectForKey:@"name"];
        self.age  = [data objectForKey:@"age"];
    }
}

- (NSString *) getCharacterData{
#warning Deveria ser validado se as variaveis possuem valor antes de exibir
    return [NSString stringWithFormat:@"nome do personagem %@ com idade de %@", self.name, self.age];
}

@end
