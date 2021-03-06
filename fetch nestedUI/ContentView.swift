//
//  ContentView.swift
//  fetch nestedUI
//
//  Created by Mufti Ramdhani on 16/06/21.
//

import SwiftUI

struct ContentView: View {
  @ObservedObject var fetch = apiService()
  
    var body: some View {
      NavigationView{
        VStack{
          ForEach(fetch.datatotal){ data in
            //Kolom 1
            HStack(spacing:10){
              HStack{
                Spacer()
                VStack{
                  Image(systemName: "heart.fill").foregroundColor(Color.white)
                  Text("Sembuh").font(.headline).foregroundColor(Color.white)
                  Text("\(data.jumlah_sembuh)").font(.headline).foregroundColor(Color.white)
                }
                Spacer()
              }.frame(height:100).padding().background(Color.green).cornerRadius(20)
                        
              HStack{
                Spacer()
                VStack{
                  Image(systemName: "plus.circle.fill").foregroundColor(Color.white)
                  Text("Positif").font(.headline).foregroundColor(Color.white)
                  Text("\(data.jumlah_positif)").font(.headline).foregroundColor(Color.white)
                }
                Spacer()
              }.frame(height:100).padding().background(Color.blue).cornerRadius(20)
            }
            
            //Kolom 2
            HStack(spacing:10){
              HStack{
                Spacer()
                VStack{
                  Image(systemName: "bed.double.fill").foregroundColor(Color.white)
                  Text("Dirawat").font(.headline).foregroundColor(Color.white)
                  Text("\(data.jumlah_dirawat )").font(.headline).foregroundColor(Color.white)
                }
                Spacer()
              }.frame(height:100).padding().background(Color.orange).cornerRadius(20)
                        
              HStack{
                Spacer()
                VStack{
                  Image(systemName: "waveform.path.ecg").foregroundColor(Color.white)
                  Text("Meninggal").font(.headline).foregroundColor(Color.white)
                  Text("\(data.jumlah_meninggal)").font(.headline).foregroundColor(Color.white)
                }
                Spacer()
              }.frame(height:100).padding().background(Color.red).cornerRadius(20)
            }
            Spacer()
          }
        }.padding()
        
        .navigationBarTitle("Covid19 Data")
      }
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
