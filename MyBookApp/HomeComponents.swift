import SwiftUI


struct BookCoverView: View {
    let book: Book
    let size: BookSize
    
   
    private var dimensions: (width: CGFloat, height: CGFloat) {
        switch size {
        case .large:
            return (width: 150, height: 220)
        case .medium:
            return (width: 100, height: 150)
        }
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
        
            Image(book.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: dimensions.width, height: dimensions.height)
                .clipped()
                .cornerRadius(4)
                .shadow(radius: 5)
            
            Text(book.title)
                .font(.caption)
                .fontWeight(.medium)
                .lineLimit(2)
                .foregroundColor(.primary)
                .frame(width: dimensions.width, alignment: .leading)
            
       if let author = book.author {
                Text(author)
                    .font(.caption2)
                    .foregroundColor(.secondary)
                    .lineLimit(1)
                    .frame(width: dimensions.width, alignment: .leading)
            }
        }
    }
}

struct ReadingGoalsView: View {
    var body: some View {
        VStack(spacing: 20) {
            
            Text("Reading Goals")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.primary)
            
       Text("Find a great book, set a goal and make reading a daily habit.")
                .font(.callout)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 40)
            
  
            ZStack {
             
                Circle()
                    .stroke(Color.gray.opacity(0.2), lineWidth: 10)
                    .frame(width: 250, height: 250)
                
     
                Circle()
                    .trim(from: 0.0, to: 0.1)
                    .stroke(Color.blue, style: StrokeStyle(lineWidth: 10, lineCap: .round))
                    .frame(width: 250, height: 250)
                    .rotationEffect(.degrees(-90))
                
                VStack {
                    Text("Today's Reading")
                        .font(.headline)
                    Text("0:00")
                        .font(.system(size: 60, weight: .bold))
                    HStack {
                        Text("of your 5-minute goal")
                        Image(systemName: "chevron.right")
                            .font(.caption)
                    }
                    .foregroundColor(.secondary)
                }
            }
            
                 Button {
                  } label: {
                Text("Explore the Book Store")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.black)
                    .cornerRadius(12)
                    .padding(.horizontal)
            }
        }
        .padding(.top, 40)
    }
}


struct BookSectionView: View {
    let section: BookSection
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            
            HStack {
                Text(section.title)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                Image(systemName: "chevron.right")
                    .font(.callout)
                    .foregroundColor(.secondary)
            }
            .padding(.horizontal)
    
            Text(section.subtitle)
                .font(.subheadline)
                .foregroundColor(.secondary)
                .padding(.horizontal)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(section.books) { book in
                        BookCoverView(book: book, size: section.size)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

#Preview {
    ContentView()
}
