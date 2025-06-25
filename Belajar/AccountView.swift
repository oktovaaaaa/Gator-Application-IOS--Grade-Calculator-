import SwiftUI

// MARK: - Loader Function (taruh di luar struct)
func loadUserData() -> UserNameData? {
    let url = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        .appendingPathComponent("userdata.json")
    
    do {
        let data = try Data(contentsOf: url)
        let decoded = try JSONDecoder().decode(UserNameData.self, from: data)
        return decoded
    } catch {
        print("❌ Gagal load data: \(error)")
        return nil
    }
}

struct AccountView: View {
    @State private var userName: String = "-"

    var body: some View {
        VStack(spacing: 20) {
            Text("👤 User Info")
                .font(.largeTitle)
                .bold()

            HStack {
                Text("📝 Name:")
                    .bold()
                Spacer()
                Text(userName)
            }

            Spacer()
        }
        .padding()
        .onAppear {
            if let user = loadUserData() {
                userName = user.name
            } else {
                print("⚠️ Tidak ada data ditemukan.")
            }
        }
    }
}

#Preview {
    AccountView()
}
