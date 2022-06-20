//
//  IntroView.swift
//  LocalizableProject
//
//  Created by Macservis on 20/06/22.
//

import SwiftUI

struct IntroView: View {
    
    @AppStorage("isChLan") var ischanged: Bool?
    
    
    
    var body: some View {
        if ischanged ?? false {
            
            HomeView()
            
        } else {
           
           LanguageView()
            
        }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
