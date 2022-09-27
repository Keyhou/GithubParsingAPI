//
//  UserModel.swift
//  GithubParsingAPI
//
//  Created by Keyhan Mortezaeifar on 27/09/2022.
//

import Foundation

//{
//    "login": "Julie-Clz",
//    "id": 64073068,
//    "node_id": "MDQ6VXNlcjY0MDczMDY4",
//    "avatar_url": "https://avatars.githubusercontent.com/u/64073068?v=4",
//    "gravatar_id": "",
//    "url": "https://api.github.com/users/Julie-Clz",
//    "html_url": "https://github.com/Julie-Clz",
//    "followers_url": "https://api.github.com/users/Julie-Clz/followers",
//    "following_url": "https://api.github.com/users/Julie-Clz/following{/other_user}",
//    "gists_url": "https://api.github.com/users/Julie-Clz/gists{/gist_id}",
//    "starred_url": "https://api.github.com/users/Julie-Clz/starred{/owner}{/repo}",
//    "subscriptions_url": "https://api.github.com/users/Julie-Clz/subscriptions",
//    "organizations_url": "https://api.github.com/users/Julie-Clz/orgs",
//    "repos_url": "https://api.github.com/users/Julie-Clz/repos",
//    "events_url": "https://api.github.com/users/Julie-Clz/events{/privacy}",
//    "received_events_url": "https://api.github.com/users/Julie-Clz/received_events",
//    "type": "User",
//    "site_admin": false,
//    "name": "Julie",
//    "company": null,
//    "blog": "",
//    "location": null,
//    "email": null,
//    "hireable": null,
//    "bio": null,
//    "twitter_username": null,
//    "public_repos": 19,
//    "public_gists": 0,
//    "followers": 17,
//    "following": 21,
//    "created_at": "2020-04-21T09:42:57Z",
//    "updated_at": "2022-09-26T09:55:05Z"
//}

struct User: Identifiable {
    var id = UUID()
    var login: String
    var avatar_url: String
    var public_repos: String
}
