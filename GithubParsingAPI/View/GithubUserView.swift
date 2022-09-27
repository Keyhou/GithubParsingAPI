////
////  GithubUserView.swift
////  GithubParsingAPI
////
////  Created by Keyhan Mortezaeifar on 27/09/2022.
////
//
//import SwiftUI
//
//struct GithubUserView: View {
//    @State var user: User = User(login: "", id: 0)
//    @State var userToSearch = ""
//    
//    var body: some View {
//        NavigationView {
//            VStack {
//                
//                TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: $userToSearch)
//                    .padding(.leading)
//                
//                Button {
//                    Task {
//                        user = try await getUserInfos(userTyped: userToSearch)
//                    }
//                } label: {
//                    Text("Search")
//                }
////                .searchable(text: $userToSearch,  placement: .navigationBarDrawer(displayMode: .always))
//                Text("The result is:\nHello \(user.login) !")
//            }
//        }
//        
////        Button {
////            Task {https://simplonline.co/
////                user = try await getUserInfos(userTyped: userToSearch)
////            } label: {
////                Text("Enter a Github surname")
////            }
////            .searchable(text: $userToSearch, placement: .navigationBarDrawer(displayMode: .always))
////            Text(user.login)
////        }
//
//    }
//    func getUserInfos(userTyped: String) async throws -> (User) {
//        guard let url = URL(string: "https://api.github.com/users/\(userTyped)")
//        else {
//            fatalError("Missing URL")
//        }
//        var urlRequest = URLRequest(url: url)
//        urlRequest.httpMethod = "GET"
//        
//        let (data, response) = try await URLSession.shared.data(for: urlRequest)
//        
//        guard (response as? HTTPURLResponse)?.statusCode == 200
//        else {
//            fatalError("Error while fetching data")
//        }
////        let decoder = JSONDecoder()
////        decoder.keyDecodingStrategy = .convertFromSnakeCase
////        let decoded = try decoder.decode(User.self, from: data)
//        
//        let decoded = try JSONDecoder().decode(User.self, from: data)
//        print(decoded)
//        return decoded
//    }
//}
//
//struct GithubUserView_Previews: PreviewProvider {
//    static var previews: some View {
//        GithubUserView()
//    }
//}
