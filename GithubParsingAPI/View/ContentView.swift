//
//  ContentView.swift
//  GithubParsingAPI
//
//  Created by Keyhan Mortezaeifar on 27/09/2022.
//

import SwiftUI

//func getUserInfos(userTyped: String) async throws -> User {
//    guard let url = URL(string: "https:// api.github.com/users/\(userTyped)")
//    else {
//        fatalError("Missing URL")
//    }
//    var urlRequest = URLRequest(url: url)
//    urlRequest.httpMethod = "GET"
//
//    let (data, response) = try await URLSession.shared.data(for: urlRequest)
//
//    guard (response as? HTTPURLResponse)?.statusCode == 200
//    else {
//        fatalError("Error while fetching data")
//    }
//    let decoded = try JSONDecoder().decode(User.self, from: data)
//    //        let login = decoded.login
//    return decoded
//
//}


struct ContentView: View {
    
    @State var user: User = User(login: "", id: 0)
    @State var userToSearch = ""
    
    var body: some View {
        NavigationView {
            VStack {
                
                TextField("Type the username...", text: $userToSearch)
                    .padding(.leading)
                    .frame(width: 300.0, height: 80)
                    .border(Color.black, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                Button {
                    Task {
                        user = try await getUserInfos(userTyped: userToSearch)
                    }
                } label: {
                    Text("Search")
                        .font(.title)
                        .fontWeight(.semibold)
                }
//                .searchable(text: $userToSearch,  placement: .navigationBarDrawer(displayMode: .always))
                
                Text("The infos you're looking for")
                    .font(.caption)
                Text("Username: \(user.login)")
                    .font(.title)
                    .fontWeight(.semibold)
                
//                Text(
            }
        }
        
//        Button {
//            Task {
//                user = try await getUserInfos(userTyped: userToSearch)
//            } label: {
//                Text("Enter a Github surname")
//            }
//            .searchable(text: $userToSearch, placement: .navigationBarDrawer(displayMode: .always))
//            Text(user.login)
//        }

    }
    
    func getUserInfos(userTyped: String) async throws -> (User) {
        guard let url = URL(string: "https://api.github.com/users/\(userTyped)")
        else {
            fatalError("Missing URL")
        }
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "GET"
        
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200
        else {
            fatalError("Error while fetching data")
        }
//        let decoder = JSONDecoder()
//        decoder.keyDecodingStrategy = .convertFromSnakeCase
//        let decoded = try decoder.decode(User.self, from: data)
        
        let decoded = try JSONDecoder().decode(User.self, from: data)
        print(decoded)
        return decoded
    }

    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
