//
//  BelajarApp.swift
//  Belajar
//
//  Created by Foundation-017 on 13/06/25.
//

import SwiftUI

@main
struct BelajarApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

//
//
//import SwiftUI
//
//struct ContentView: View {
//    @State private var animateCircle = false
//    @State private var showHomepage = false
//
//    var body: some View {
//        ZStack {
//            if showHomepage {
//                homepage() // Panggil dari file terpisah
//                    .transition(.opacity)
//            }
//
//            if !showHomepage {
//                SplashCircleView(animate: $animateCircle)
//                    .onAppear {
//                        // Mulai animasi circle
//                        withAnimation(.easeInOut(duration: 1.0)) {
//                            animateCircle = true
//                        }
//
//                        // Delay sebelum transisi ke Homepage
//                        DispatchQueue.main.asyncAfter(deadline: .now() + 1.3) {
//                            withAnimation(.easeInOut(duration: 0.5)) {
//                                showHomepage = true
//                            }
//                        }
//                    }
//            }
//        }
//    }
//}
//
//struct SplashCircleView: View {
//    @Binding var animate: Bool
//
//    var body: some View {
//        ZStack {
//            Color.green.ignoresSafeArea()
//
//            Text("GATOR")
//                .font(.system(size: 36, weight: .bold))
//                .foregroundColor(.white)
//                .offset(y: 250)
//
//            Circle()
//                .fill(Color.white)
//                .frame(width: animate ? 2000 : 100, height: animate ? 2000 : 100)
//                .animation(.easeInOut(duration: 2.0), value: animate)
//        }
//        .ignoresSafeArea()
//    }
//}
//
//#Preview {
//    ContentView()
//}
//
//
//
