//
//  CustomNavigationBar.swift
//  ChatHW
//
//  Created by Samir on 07.08.2024.
//

import SwiftUI

struct CustomNavigationBar: View {
    var body: some View {
        HStack {
            Button(action: {
                // Add action for back button
            }) {
                Image(systemName: "chevron.left")
                    .foregroundColor(.black)
            }
            
            Spacer()
            
            Text("Анастасия И.")
                .font(.headline)
                .foregroundColor(.black)
            
            Spacer()
            
            Button(action: {
                // Add action for search button
            }) {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.black)
            }
        }
        .padding()
        .background(Color.white)
    }
}



