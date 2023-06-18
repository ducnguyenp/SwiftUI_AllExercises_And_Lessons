import SwiftUI

struct Facebook: View {
    @Binding var text: String
    let facebookBlue = UIColor(red: 23/255.0, green: 120/255.0, blue: 242/255.0, alpha: 1)
    let stories = ["kim", "kendall", "taylor", "rihanna"]
    let posts: [Post] = [
        Post(name: "Demi Lovato", image: "demi", post: "Hey guys, this is Demi Lovato, nice to meet you all XOXO"),
        Post(name: "Taylor Swift", image: "taylor", post: "Im gonna sue you, see you in court"),
        Post(name: "Kim Kadashian", image: "kim", post: "Im a mother, a million and a billion"),
    ]
    
    var body: some View {
        VStack {
            HStack {
                Text ("facebook" )
                    .font(.system(size: 34, weight: .bold, design: .default))
                    .foregroundColor (Color (facebookBlue))
                Spacer ()
                Image (systemName: "person.circle")
                    .resizable()
                    .frame(width: 35 , height: 35, alignment: .center)
                    .foregroundColor(Color(.secondaryLabel))
            }
            .padding([.top, .bottom], 4)
            .padding([.leading, .trailing], 16)
            
            TextField("Search...", text: $text)
                .padding (7)
                .background (Color (.systemGray5))
                .cornerRadius (13)
                .padding (.horizontal, 15)
            ZStack {
                Color (.secondarySystemBackground)
                ScrollView(.vertical) {
                    VStack {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack (spacing: 4) {
                                ForEach(stories, id: \.self) { name in
                                    Image (name)
                                        .frame (width: 100, height: 150, alignment: .center)
                                        .background (Color.red)
                                        .aspectRatio(contentMode: .fill)
                                        .clipped()
                                        .cornerRadius(8)
                                }
                            }
                            .padding()
                        }
                        ForEach(posts) { post in
                            FBPost(name: post.name, post: post.post, image: post.image)
                        }
                    }
                }
            }
            Spacer()
        }
    }
}

struct FBPost: View {
    let name: String
    let post: String
    let image: String
    
    var body: some View {
        VStack {
            HStack {
                Image (image)
                    .resizable()
                    .frame (width: 50, height: 50, alignment: .center)
                    .aspectRatio (contentMode: .fill)
                    .cornerRadius (25)
                VStack {
                    HStack {
                        Text(name)
                            .foregroundColor(Color.blue)
                            .font(.system(size: 16, weight: .bold, design: .default))
                        Spacer()
                    }
                    HStack {
                        Text("12 minutes ago")
                            .foregroundColor(Color(.secondaryLabel))
                            .font(.system(size: 12))
                        Spacer()
                    }
                }
                Spacer ()
            }
            HStack {
                Text (post)
                    .font (.system(size: 16, weight: .light, design: .default)) .multilineTextAlignment(.leading)
                Spacer()
            }
            .padding(.bottom, 10)
            ActionPostButton()
        }
        .padding ()
        .background(Color(.systemBackground))
        .cornerRadius(7)
    }
}



struct Facebook_Previews: PreviewProvider {
    static var previews: some View {
        Facebook(text: .constant(""))
    }
}

struct ActionPostButton: View {
    var body: some View {
        HStack {
            Button (action: {
            }, label: {
                Text ("Like")
                    .font(.system(size: 14))
            })
            Spacer()
            Button (action: {
            }, label: {
                Text ("Comment")
                    .font(.system(size: 14))
            })
            Spacer ()
            Button(action: {
            }, label: {
                Text ("Share")
                    .font(.system(size: 14))
            })
        }
    }
}
