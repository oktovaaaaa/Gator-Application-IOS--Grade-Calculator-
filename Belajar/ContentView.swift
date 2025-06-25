import SwiftUI

struct ContentView: View {
    @State private var isActive = false
    @State private var showSplash = true
    @State private var size = 0.8
    @State private var opacity = 0.5

    var body: some View {
        ZStack {
            if isActive {
                homepage(showCircle: true)
                    .transition(.opacity) 
            } else {
                ZStack {
                    Color.green.ignoresSafeArea()

                    if showSplash {
                        VStack {
                            Spacer()
                            Image("gator")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 200, height: 120)

                            Text("Welcome to Gator")
                                .font(.title)
                                .foregroundColor(.white)

                            Spacer()
                            Text("Made by Kelompok Gator")
                                .font(.footnote)
                                .foregroundColor(.white.opacity(0.8))
                                .padding(.bottom, 16)
                        }
                        .scaleEffect(size)
                        .opacity(opacity)
                        .onAppear {
                            withAnimation(.easeIn(duration: 1.2)) {
                                size = 0.9
                                opacity = 1.0
                            }

  
                            DispatchQueue.main.asyncAfter(deadline: .now() + 1.6) {
                                withAnimation(.easeOut(duration: 0.5)) {
                                    showSplash = false
                                }
                            }


                            DispatchQueue.main.asyncAfter(deadline: .now() + 2.2) {
                                withAnimation(.easeInOut(duration: 0.5)) {
                                    isActive = true
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
