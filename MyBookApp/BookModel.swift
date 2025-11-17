import SwiftUI



struct Book: Identifiable {
    
    let id = UUID()
    let title: String
    let author: String?
    let imageName: String
}



enum BookSize {
    case large
    case medium
}



struct BookSection: Identifiable {
    let id = UUID()
    
    let title: String
    let subtitle: String
    let books: [Book]
    let size: BookSize
}

extension Book {
    static let sampleBooks: [Book] = [
        Book(title: "1984", author: "George Orwell", imageName: "book_1984"),
        Book(title: "Capitano", author: "Capitano Edizioni", imageName: "book_capitano"),
        Book(title: "Inglese", author: "Martina S.", imageName: "book_inglese"),
        Book(title: "USA IL CERVELLO", author: "Paolo B.", imageName: "book_cervello"),
        Book(title: "Ragazza Di Carta", author: "Ilaria T.", imageName: "book_ragazza_carta"),
        Book(title: "LAURIE", author: "Stephen K.", imageName: "book_laurie"),
        Book(title: "OGNI COSA", author: "G. G. U.", imageName: "book_ogni_cosa"),
    ]
}

extension BookSection {
    static let sampleSections: [BookSection] = [
        BookSection(
            title: "Free Books",
            subtitle: "It costs nothing to bag your next great read.",
            books: Array(Book.sampleBooks.prefix(2)),
            size: .medium
        ),
        BookSection(
            title: "New Releases",
            subtitle: "Brand-new audiobooks you won't want to miss.",
            books: Array(Book.sampleBooks.suffix(4)),
            size: .medium
        ),
         BookSection(
            title: "Free in Crime & Thrillers",
            subtitle: "Explore best-selling books in this genre.",
            books: Array(Book.sampleBooks.suffix(3)),
            size: .medium
        )
    ]
}
#Preview {
    ContentView()
}

