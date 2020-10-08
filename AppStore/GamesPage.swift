//
//  GamesPage.swift
//  AppStore
//
//  Created by jb on 2020/10/08.
//

import Foundation
import SwiftUI

struct GamesView: View {
    var gameStorage = GameStorage()
    var body: some View {
        ScrollView{
            VStack{
                HStack{
                    VStack(alignment: .leading){
                        Text("Today").font(Font.largeTitle).bold()
                    }
                    Spacer()
                    Button(action: self.loadProfile, label: {
                        Image("Profile").resizable().frame(width: 40, height: 40, alignment: .trailing)
                    })
                    
                }.padding([.leading, .trailing, .top])
                
                ScrollView(.horizontal, showsIndicators: false, content : {
                    HStack{
                        FeaturedPostView(captionText: "New Update", titleText: "Instruments FreePlay", subTitleText: "Play Any Instrument You Want!", image: "sims")
                        
                        FeaturedPostView(captionText: "New Update", titleText: "Instruments FreePlay", subTitleText: "Play Any Instrument You Want!", image: "sims")
                        
                        FeaturedPostView(captionText: "New Update", titleText: "Instruments FreePlay", subTitleText: "Play Any Instrument You Want!", image: "sims")
                        
                        FeaturedPostView(captionText: "New Update", titleText: "Instruments FreePlay", subTitleText: "Play Any Instrument You Want!", image: "sims")
                    }
                })
                HorizontalScrollView(items: self.gameStorage.thisWeeksGames)
            }
        }
    }
    func loadProfile(){
        
    }
}

struct GameStorage {
    var thisWeeksGames = [
        GameData(id: UUID(), title: "DJApp", image: "logo", subTitle: "The Best Game app out there"),
        GameData(id: UUID(), title: "DJApp", image: "logo", subTitle: "The Best Game app out there"),
        GameData(id: UUID(), title: "DJApp", image: "logo", subTitle: "The Best Game app out there"),
        GameData(id: UUID(), title: "DJApp", image: "logo", subTitle: "The Best Game app out there"),
        GameData(id: UUID(), title: "DJApp", image: "logo", subTitle: "The Best Game app out there"),
        GameData(id: UUID(), title: "DJApp", image: "logo", subTitle: "The Best Game app out there"),
        GameData(id: UUID(), title: "DJApp", image: "logo", subTitle: "The Best Game app out there"),
        GameData(id: UUID(), title: "DJApp", image: "logo", subTitle: "The Best Game app out there"),
        GameData(id: UUID(), title: "DJApp", image: "logo", subTitle: "The Best Game app out there"),
        GameData(id: UUID(), title: "DJApp", image: "logo", subTitle: "The Best Game app out there"),
        GameData(id: UUID(), title: "DJApp", image: "logo", subTitle: "The Best Game app out there"),
        GameData(id: UUID(), title: "DJApp", image: "logo", subTitle: "The Best Game app out there"),
        GameData(id: UUID(), title: "DJApp", image: "logo", subTitle: "The Best Game app out there")
    ]
}

struct GameData: Identifiable {
    var id = UUID()
    var title = String()
    var image = String()
    var subTitle = String()
}

struct GamesView_Previews: PreviewProvider {
    static var previews: some View {
        GamesView()
    }
}
