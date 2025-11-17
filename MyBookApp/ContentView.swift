import SwiftUI

// --- A. Home View (محتوای قابل اسکرول صفحه با عنوان بزرگ/Large) ---



// --- C. ساختار نهایی (ContentView) ---
// (این بخش تغییری نکرده است)

struct ContentView: View {
    @State private var selectedTab: String = "Home"

    var body: some View {
        TabView {
            
            Tab("Home", systemImage: "house") {
                HomeView() // Using HomeView, which is defined below
            }
            
           
            Tab("Library", systemImage: "books.vertical.fill") {
             
            }
            
            
            Tab("Book Store", systemImage: "suitcase.cart") {
               
            }
            
            
            Tab("Audiobooks", systemImage: "headphones") {
           
            }
            
            
            Tab(role: .search) {
              
            }
        }
        .tint(.black)
    }
}
#Preview {
    ContentView()
}
