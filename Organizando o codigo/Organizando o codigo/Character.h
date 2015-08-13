//
//  Character.h
//  Organizando o codigo
//
//  Created by Filipe Faria on 12/08/15.
//  Copyright © 2015 Filipe Faria. All rights reserved.
//

#import <Foundation/Foundation.h>

/*!
@file Character

@author Filipe Faria

@version 1.0

*/
@interface Character : NSObject

/*!
 @brief preenche as variaveis do objeto
 
 @param NSDictionary com dados do objeto
 
 @return Não possui retorno
*/
- (void) fillCharacterWithDict:(NSDictionary *)data;

/*!
 @brief gera o texto para exibir para o usuario
 
 @return Retorna um NSString que deve ser exibido para o usuário
 */
- (NSString *) getCharacterData;

@end
