//
//  HomeView.swift
//  LocalizableProject
//
//  Created by Macservis on 20/06/22.
//

import SwiftUI

struct HomeView: View {
    
    @AppStorage("isChLan") var ischanged: Bool?
    
    
    var body: some View {
        
        NavigationView {
        
        Text(LocalizedStringKey("hello"))
                .navigationTitle(LocalizedStringKey("home"))
                .navigationBarItems(trailing:
                 Button(action: {
                    ischanged = false
                }, label: {
                    Text(LocalizedStringKey("logout"))
                })
                )
        }
        
    
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
