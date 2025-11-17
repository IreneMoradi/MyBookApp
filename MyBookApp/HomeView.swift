//
//  HomeView.swift
//  MyBookApp
//
//  Created by Irene Mordi on 12/11/25.
//

import SwiftUI

struct HomeView: View {
    

    let sections: [BookSection] = BookSection.sampleSections
    
    var body: some View {
       
        NavigationStack {
            ScrollView {
                HStack() {
                    Text("Home").font(.largeTitle).bold()
                    Spacer()
                    
                     Button(action: { print("Goals Tapped") }) {
                         ZStack {
                             Circle()
                                 .stroke(Color.blue.opacity(0.3), lineWidth: 2)
                                 .frame(width: 40, height: 40)
                             Text("5").font(.caption2).fontWeight(.bold).foregroundColor(.blue)
                         }
                     }
                     Button(action: { print("Profile Tapped") }) {
                         Image(systemName: "person.circle.fill")
                             .resizable()
                             .frame(width: 40, height: 40)
                             .clipShape(Circle())
                     }
                }.padding(.horizontal)
           
                VStack(alignment: .leading, spacing: 40) {
                    
                   
                    ForEach(sections) { section in
                        BookSectionView(section: section)
                    }
                    
                
                    ReadingGoalsView()
                    
                   
                    NavigationLink(destination: Text("Terms and Conditions")) {
                        HStack {
                            Text("Terms and Conditions")
                                .font(.body)
                                .foregroundColor(.primary)
                            Image(systemName: "chevron.right")
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }
                    }
                    .padding(.horizontal)
                    .padding(.top, 20)
                }
              
                .padding(.bottom, 100)
            }
            
            
           // .navigationTitle("Home")
           
            
            
          /*  .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                  
                    HStack(spacing: 15) {
                       
                        Button(action: { print("Goals Tapped") }) {
                            ZStack {
                                Circle()
                                    .stroke(Color.blue.opacity(0.3), lineWidth: 2)
                                    .frame(width: 30, height: 30)
                                Text("5").font(.caption2).fontWeight(.bold).foregroundColor(.blue)
                            }
                        }
                        Button(action: { print("Profile Tapped") }) {
                            Image(systemName: "person.circle.fill")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .clipShape(Circle())
                        }
                    }
                }
            } */
        }
    }
}
#Preview {
    HomeView()
}
