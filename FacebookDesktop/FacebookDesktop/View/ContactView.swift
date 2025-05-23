//
//  ContactView.swift
//  FacebookDesktop
//
//  Created by Adrian Suryo Abiyoga on 26/02/25.
//

import SwiftUI
import SDWebImageSwiftUI

struct ContactView: View {
    var screen = NSScreen.main!.visibleFrame
    var body: some View {
        VStack{
            
            HStack{
                
                Text("Contacts")
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                
                Spacer()
                
                Button(action: {}, label: {
                    
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                })
                .buttonStyle(PlainButtonStyle())
                
                Button(action: {}, label: {
                    
                    Image(systemName: "slider.vertical.3")
                        .foregroundColor(.gray)
                })
                .buttonStyle(PlainButtonStyle())
            }
            .padding()
            
            ScrollView{
                
                // Contacts....
                
                ForEach(users){user in
                    
                    HStack{
                        
                        WebImage(url: URL(string: user.url)!)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 35, height: 35)
                            .clipShape(Circle())
                        
                        Text(user.name)
                            .foregroundColor(.black)
                        
                        Spacer()
                    }
                    .padding(.horizontal)
                }
            }
        }
        .frame(maxWidth: (screen.width / 1.8) / 4, maxHeight: .infinity)
    }
}

#Preview {
    ContactView()
}
