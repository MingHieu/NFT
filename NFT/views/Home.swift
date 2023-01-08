//
//  Home.swift
//  NFT
//
//  Created by Lê Minh Hiếu on 07/01/2023.
//

import SwiftUI

struct NFT: Identifiable {
    var id = UUID()
    var image: String
    var name: String
    var tag: Int
    var price: Double
}

struct NFTItem: View {
    var nft: NFT

    var body: some View {
        ZStack {
            Image(nft.image)
            VStack {
                Text(nft.name)
                Text("#" + String(nft.tag))
                HStack {
                    ZStack {
//                        BlurView(style: .light)
//                            .frame(width: 300, height: 300)
//                            .padding(.all, 20)
//                            .border(LinearGradient(gradient: Gradient(
//                            colors: [
//                                Color(red: 1, green: 1, blue: 1, opacity: 1),
//                                Color(red: 1, green: 1, blue: 1, opacity: 0)]),
//                            startPoint: .topLeading, endPoint: .bottom))
//                            .background(Color(red: 1, green: 1, blue: 1, opacity: 0.3))
//                            .blur(radius: 1)
                        HStack {
                            Text("Price")
                            Text(String(nft.price) + " ETH")
                        }
                    }
                    Image("Hammer")
                        .padding(.all, 10)
                        .background(Color(.white))
                        .cornerRadius(40)
                }
            }
        }
    }
}

struct Home: View {
    private var nftItems = [
        NFT(image: "NFTExampleItem1", name: "Hybebeast", tag: 2122, price: 0.5),
        NFT(image: "NFTExampleItem2", name: "Hybebeast", tag: 2123, price: 0.5),
        NFT(image: "NFTExampleItem3", name: "Hybebeast", tag: 2124, price: 0.5),
        NFT(image: "NFTExampleItem4", name: "Hybebeast", tag: 2125, price: 0.5),
        NFT(image: "NFTExampleItem5", name: "Hybebeast", tag: 2126, price: 0.5),
        NFT(image: "NFTExampleItem6", name: "Hybebeast", tag: 2127, price: 0.5),
    ]

    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                Image("NFTExampleBanner")
                VStack(spacing: 0) {
                    Group {
                        Text("Hypebeast")
                            .font(Font.system(size: 44))
                            .fontWeight(.bold)
                            .foregroundColor(.white)

                        HStack(spacing: 0) {
                            Text("By ")
                                .font(Font.system(size: 26))
                                .foregroundColor(.white)
                            Text("Matt Sypien ")
                                .font(Font.system(size: 26))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            Image("Check")
                        }
                    }
                        .padding(.trailing, 20)
                        .frame(maxWidth: .infinity, alignment: .bottomTrailing)
                    
                    HStack {
                        Spacer()
                        VStack {
                            Image("Gem")
                                .padding(.all, 8)
                                .background(Color(red: 1.0, green: 1.0, blue: 1.0, opacity: 0.3))
                                .cornerRadius(10)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Text("0.53")
                                .font(Font.system(size: 26))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Text("Floor Price")
                                .font(Font.system(size: 14))
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                            .padding(.leading, 10.0)
                            .frame(width: 97, height: 132)
                            .background(Color(red: 0.957, green: 0.7176470588235294, blue: 0.6588235294117647))
                            .cornerRadius(25)

                        VStack {
                            VStack {
                                Text("5.6K")
                                    .font(Font.system(size: 26))
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                Text("Owner")
                                    .font(Font.system(size: 14))
                                    .foregroundColor(.white)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                                .padding(.leading, 10.0)
                                .frame(width: 97, height: 86)
                                .background(Color(red: 1.0, green: 1.0, blue: 1.0, opacity: 0.3))
                                .cornerRadius(25)

                            VStack {
                                Text("9.9K")
                                    .font(Font.system(size: 26))
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                Text("Items")
                                    .font(Font.system(size: 14))
                                    .foregroundColor(Color(red: 0.30196078431372547, green: 0.30980392156862746, blue: 0.3176470588235294, opacity: 0.5))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                                .padding(.leading, 10.0)
                                .frame(width: 97, height: 86)
                                .background(Color(.white))
                                .cornerRadius(25)
                        }

                    }.padding(.horizontal, 20)
                }
            }

            ScrollView {
                ForEach(nftItems) { nftItem in
                    NFTItem(nft: nftItem)
                }
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
