//
//  LanguageView.swift
//  LocalizableProject
//
//  Created by Macservis on 20/06/22.
//

import SwiftUI

struct LanguageView: View {
    
    @AppStorage("lang") var language: String?
    
    @AppStorage("isChLan") var ischanged: Bool?
    
    @State var languageS: String = "en"
    
    var body: some View {
      
        VStack {
            
          Text(LocalizedStringKey("selectL"))
                .font(.largeTitle)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .background(Color.purple.opacity(0.5).cornerRadius(10))
                .shadow(color: .black, radius: 10, x: 10, y: 10)
            
            
            Spacer()
            
           

            Button {
                
                language = "en"
                
                ischanged = true
                
            } label: {
                Text("English🇱🇷🇱🇷🇱🇷")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .font(.title)
                    .foregroundColor(.white)
                    .background(Color.green)
                    .cornerRadius(10)
                    
            }
            
            Button {
                
                language = "ru"
                
                ischanged = true
            } label: {
                Text("Russian🇷🇺🇷🇺🇷🇺")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .font(.title)
                    .foregroundColor(.white)
                    .background(Color.green)
                    .cornerRadius(10)
            }

            Button {
                language = "uz"
                
                ischanged = true
            } label: {
                
                HStack{
                
                Text("Uzbek🇺🇿🇺🇿🇺🇿")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .font(.title)
                    .foregroundColor(.white)
                    .background(Color.green)
                    .cornerRadius(10)
                    
                
                    
                }
            }
           
           
            
        }
        .padding()
        .shadow(radius: 10)
        .padding(.bottom,100)
        .padding(.top,50)
        
    }
}

struct LanguageView_Previews: PreviewProvider {
    static var previews: some View {
        LanguageView()
    }
}
