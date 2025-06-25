//
//  select.swift
//  Belajar
//
//  Created by Foundation-017 on 20/06/25.
//


import SwiftUI

struct SimpleTextFieldView: View {
    @State private var inputText: String = ""
    
    var body: some View {
        

        
        
        
        VStack(alignment: .leading){
            VStack(alignment: .leading) {
                Text("Masukkan Sesuatu:")
                    .font(.headline)
                
                Text("0")
                    .font(.largeTitle)
                    .bold()
                
                Text("Hello")
                    .font(.largeTitle)
                Text("Oktovaaaaa !")
                    .font(.largeTitle)
                    .bold()
            }
            .padding(.leading, 20)
            
            
            VStack(alignment: .leading) {
                Text("Masukkan semester:")
                
                
                TextField("Tulis di sini...", text: $inputText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
//                    .padding()
                
                Text("Masukkan semester:")

                
                TextField("Tulis di sini...", text: $inputText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
//                    .padding()
                
                Text("Masukkan semester:")

                TextField("Tulis di sini...", text: $inputText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
//                    .padding()
                
            }
            .padding(.leading,20 )
        }
        
    }
    
}



#Preview {
    SimpleTextFieldView()
}

