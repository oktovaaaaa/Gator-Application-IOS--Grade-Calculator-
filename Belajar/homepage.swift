import SwiftUI

struct homepage: View {
    var showCircle: Bool
    @State private var animateCircle = false
    @State private var showPopup = true
    @State private var userName = ""
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            if showCircle {
                Circle()
                    .fill(Color.white)
                    .frame(width: animateCircle ? 2000 : 100, height: animateCircle ? 2000 : 100)
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                            withAnimation(.easeInOut(duration: 2.0)) {
                                animateCircle = true
                            }
                        }
                    }
            }
            
            ZStack {
                Color.white.ignoresSafeArea()
                
                if showPopup {
                    Color.black.opacity(0.3).ignoresSafeArea()
                    
                    VStack(spacing: 16) {
                        Text("Input Your Name:")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundStyle(.green)
                        
                        TextField("Enter your name here...", text: $userName)
                            .padding()
                            .frame(maxWidth: 300)
                            .background(Color.white)
                            .cornerRadius(8)
                            .shadow(color: .gray.opacity(0.2), radius: 5, x: 0, y: 2)
                        
                        Button(action: {
                            saveUserData(name: userName)
                            showPopup = false
                        }) {
                            Text("Next")
                                .padding(.horizontal, 24)
                                .padding(.vertical, 10)
                                .foregroundColor(.white)
                                .background(Color.green)
                                .cornerRadius(12)
                        }
                        .padding(.top, 8)
                    }
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(24)
                    .padding(.horizontal, 32)
                }
            }
        }
    }
    
    func saveUserData(name: String) {
        let data = UserNameData(name: name)
        let encoder = JSONEncoder()
        do {
            let jsonData = try encoder.encode(data)
            let url = getDocumentsDirectory().appendingPathComponent("userdata.json")
            try jsonData.write(to: url)
            print("Data berhasil disimpan")
        } catch {
            print("Data gagal disimpan")
        }
    }
    
    func getDocumentsDirectory() -> URL {
        FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    }
}

struct UserNameData: Codable {
    let name: String
}

#Preview {
    homepage(showCircle: true)
}

