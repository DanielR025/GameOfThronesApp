//
//  DataRecource.swift
//  GameOfThrones
//
//  Created by Daniel Reicher on 07.08.17.
//  Copyright © 2017 Daniel Reicher. All rights reserved.
//

import Foundation


class DataResource {
    
     private var charakters = [Charakter]()
    
    
    init() {
        charakters.append(Charakter(name: "Jon Snow", nummer: 0, url: "http://gameofthrones.wikia.com/wiki/Jon_Snow"))
        charakters.append(Charakter(name: "Daenerys Targaryen", nummer: 1, url: "http://gameofthrones.wikia.com/wiki/Daenerys_Targaryen"))
        charakters.append(Charakter(name: "Tyrion Lannister", nummer: 2, url: "http://gameofthrones.wikia.com/wiki/Tyrion"))
        charakters.append(Charakter(name: "Eddard Stark", nummer: 3, url: "http://gameofthrones.wikia.com/wiki/Eddard_Stark"))
        charakters.append(Charakter(name: "Jaime Lannister", nummer: 4, url: "http://gameofthrones.wikia.com/wiki/Jaime_Lannister"))
        charakters.append(Charakter(name: "Khal Drogo", nummer: 5, url: "http://gameofthrones.wikia.com/wiki/Drogo"))
        charakters.append(Charakter(name: "Arya Stark", nummer: 6, url: "http://gameofthrones.wikia.com/wiki/Arya_Stark"))
        charakters.append(Charakter(name: "Petyr Baelish", nummer: 7, url: "http://gameofthrones.wikia.com/wiki/Petyr_Baelish"))
        charakters.append(Charakter(name: "Brienne of Tarth", nummer: 8, url: "http://gameofthrones.wikia.com/wiki/Brienne_of_Tarth"))
        charakters.append(Charakter(name: "Sansa Stark", nummer: 9, url: "http://gameofthrones.wikia.com/wiki/Sansa_Stark"))
        charakters.append(Charakter(name: "Bran Stark", nummer: 10, url: "http://gameofthrones.wikia.com/wiki/Bran_Stark"))
        charakters.append(Charakter(name: "Gregor Clegane", nummer: 11, url: "http://gameofthrones.wikia.com/wiki/Gregor_Clegane"))
        charakters.append(Charakter(name: "Melisandre", nummer: 12, url: "http://gameofthrones.wikia.com/wiki/Melisandre"))
        charakters.append(Charakter(name: "Benjen Stark", nummer: 13, url: "http://gameofthrones.wikia.com/wiki/Benjen_Stark"))
        charakters.append(Charakter(name: "Catelyn Stark", nummer: 14, url: "http://gameofthrones.wikia.com/wiki/Catelyn_Stark"))
        charakters.append(Charakter(name: "Rickon Stark", nummer: 15, url: "http://gameofthrones.wikia.com/wiki/Rickon_Stark"))
        charakters.append(Charakter(name: "Bronn", nummer: 16, url: "http://gameofthrones.wikia.com/wiki/Bronn"))
        charakters.append(Charakter(name: "Joffrey Baratheon", nummer: 17, url: "http://gameofthrones.wikia.com/wiki/Joffrey_Baratheon"))
        charakters.append(Charakter(name: "Qyburn", nummer: 18, url: wikiURLen+"Qyburn"))
        charakters.append(Charakter(name: "Tywin Lannister", nummer: 19, url: wikiURLen+"Tywin_Lannister"))
        charakters.append(Charakter(name: "Myrcella Lannister", nummer: 20, url: wikiURLen+"Myrcella_Baratheon"))
        charakters.append(Charakter(name: "Tommen Baratheon", nummer: 21, url: wikiURLen+"Tommen_Baratheon"))
        charakters.append(Charakter(name: "Cersei Lannister", nummer: 22, url: wikiURLen+"Cersei_Lannister"))
        charakters.append(Charakter(name: "Lancel Lannister", nummer: 23, url: wikiURLen+"Lancel_Lannister"))
        charakters.append(Charakter(name: "Kevan Lannister", nummer: 24, url: wikiURLen+"Kevan_Lannister"))
        charakters.append(Charakter(name: "Rhaegar Targaryen", nummer: 30, url: wikiURLen+"Rhaegar_Targaryen"))
        charakters.append(Charakter(name: "Varys", nummer: 31, url: wikiURLen+"Varys"))
        charakters.append(Charakter(name: "Yara Greyjoy", nummer: 32, url: wikiURLen+"Yara_Greyjoy"))
        charakters.append(Charakter(name: "Theon Greyjoy", nummer: 33, url: wikiURLen+"Theon_Greyjoy"))
        charakters.append(Charakter(name: "Missandei", nummer: 34, url: wikiURLen+"Missandei"))
        charakters.append(Charakter(name: "Grey Worm", nummer: 35, url: wikiURLen+"Grey_Worm"))
        charakters.append(Charakter(name: "Olenna Tyrell", nummer: 36, url: wikiURLen+"Olenna_Tyrell"))
        charakters.append(Charakter(name: "Ellaria Sand", nummer: 37, url: wikiURLen+"Ellaria_Sand"))
        charakters.append(Charakter(name: "Dragons", nummer: 38, url: wikiURLen+"Dragons"))
        charakters.append(Charakter(name: "Podrick Payne", nummer: 39, url: wikiURLen+"Podrick_Payne"))
        charakters.append(Charakter(name: "Samwell Tarly", nummer: 40, url: wikiURLen+"Samwell_Tarly"))
        charakters.append(Charakter(name: "Gilly", nummer: 41, url: wikiURLen+"Gilly"))
        charakters.append(Charakter(name: "Gendry", nummer: 42, url: wikiURLen+"Gendry"))
        charakters.append(Charakter(name: "Sandor Clegane", nummer: 43, url: wikiURLen+"Sandor_Clegane"))
        charakters.append(Charakter(name: "Night King", nummer: 44, url: wikiURLen+"Night_King"))
        charakters.append(Charakter(name: "Hodor", nummer: 45, url: wikiURLen+" Hodor"))
        charakters.append(Charakter(name: "Jorah Mormont", nummer: 46, url: wikiURLen+"Jorah_Mormont"))
        charakters.append(Charakter(name: "Lyanna Mormont", nummer: 47, url: wikiURLen+"Lyanna_Mormont"))
        charakters.append(Charakter(name: "Jeor Mormont", nummer: 48, url: wikiURLen+"Jeor_Mormont"))
        charakters.append(Charakter(name: "Maege Mormont", nummer: 49, url: wikiURLen+"Maege_Mormont"))
        charakters.append(Charakter(name: "Howland Reed", nummer: 50, url: wikiURLen+"Howland_Reed"))
        charakters.append(Charakter(name: "Meera Reed", nummer: 51, url: wikiURLen+"Meera_Reed"))
        charakters.append(Charakter(name: "Jojen Reed", nummer: 52, url: wikiURLen+"Jojen_Reed"))
        charakters.append(Charakter(name: "Galbart Glover", nummer: 53, url: wikiURLen+"Galbart_Glover"))
        charakters.append(Charakter(name: "Robett Glover", nummer: 54, url: wikiURLen+"Robett_Glover"))
        charakters.append(Charakter(name: "Wyman Manderly", nummer: 55, url: wikiURLen+"Wyman_Manderly"))
        charakters.append(Charakter(name: "Cley Cerwyn", nummer: 56, url: wikiURLen+"Cley_Cerwyn"))
        charakters.append(Charakter(name: "Wendel Manderly", nummer: 57, url: wikiURLen+"Wendel_Manderly"))
        charakters.append(Charakter(name: "Roose Bolton", nummer: 58, url: wikiURLen+"Roose_Bolton"))
        charakters.append(Charakter(name: "Walda Bolton", nummer: 59, url: wikiURLen+"Walda_Bolton"))
        charakters.append(Charakter(name: "Ramsay Bolton", nummer: 60, url: wikiURLen+"Ramsay_Bolton"))
        charakters.append(Charakter(name: "Newborn Bolton", nummer: 61, url: wikiURLen+"Newborn_Bolton"))
        charakters.append(Charakter(name: "Greatjon Umber", nummer: 62, url: wikiURLen+"Greatjon_Umber"))
        charakters.append(Charakter(name: "Smalljon Umber", nummer: 63, url: wikiURLen+"Smalljon_Umber"))
        charakters.append(Charakter(name: "Ned Umber", nummer: 64, url: wikiURLen+"Ned_Umber"))
        charakters.append(Charakter(name: "Rickard Karstark", nummer: 65, url: wikiURLen+"Rickard_Karstark"))
        charakters.append(Charakter(name: "Torrhen Karstark", nummer: 66, url: wikiURLen+"Torrhen_Karstark"))
        charakters.append(Charakter(name: "Harald Karstark", nummer: 67, url: wikiURLen+"Harald_Karstark"))
        charakters.append(Charakter(name: "Alys Karstark", nummer: 68, url: wikiURLen+"Alys_Karstark"))
        charakters.append(Charakter(name: "Lyanna Stark", nummer: 69, url: wikiURLen+"Lyanna_Stark"))
        charakters.append(Charakter(name: "Robb Stark", nummer: 70, url: wikiURLen+"Robb_Stark"))
        charakters.append(Charakter(name: "Talisa Stark", nummer: 71, url: wikiURLen+"Talisa_Stark"))
        charakters.append(Charakter(name: "Aemon Targaryen", nummer: 72, url: wikiURLen+"Aemon_Targaryen"))
        charakters.append(Charakter(name: "Aerys II Targaryen", nummer: 73, url: wikiURLen+"Aerys_II_Targaryen"))
        charakters.append(Charakter(name: "Viserys Targaryen", nummer: 74, url: wikiURLen+"Viserys_Targaryen"))
        charakters.append(Charakter(name: "Mace Tyrell", nummer: 75, url: wikiURLen+"Mace_Tyrell"))
        charakters.append(Charakter(name: "Margaery Tyrell", nummer: 76, url: wikiURLen+"Margaery_Tyrell"))
        charakters.append(Charakter(name: "Renly Baratheon", nummer: 77, url: wikiURLen+"Renly_Baratheon"))
        charakters.append(Charakter(name: "Loras Tyrell", nummer: 78, url: wikiURLen+"Loras_Tyrell"))
        charakters.append(Charakter(name: "Balon Greyjoy", nummer: 79, url: wikiURLen+"Balon_Greyjoy"))
        charakters.append(Charakter(name: "Euron Greyjoy", nummer: 80, url: wikiURLen+"Euron_Greyjoy"))
        charakters.append(Charakter(name: "Aeron Greyjoy", nummer: 81, url: wikiURLen+"Aeron_Greyjoy"))
        charakters.append(Charakter(name: "Brynden Tully", nummer: 82, url: wikiURLen+"Brynden_Tully"))
        charakters.append(Charakter(name: "Hoster Tully", nummer: 83, url: wikiURLen+"Hoster_Tully"))
        charakters.append(Charakter(name: "Jon Arryn", nummer: 84, url: wikiURLen+"Jon_Arryn"))
        charakters.append(Charakter(name: "Lysa Arryn", nummer: 85, url: wikiURLen+"Lysa_Arryn"))
        charakters.append(Charakter(name: "Roslin Frey", nummer: 86, url: wikiURLen+"Roslin_Frey"))
        charakters.append(Charakter(name: "Robin Arryn", nummer: 87, url: wikiURLen+"Robin_Arryn"))
        charakters.append(Charakter(name: "Stannis Baratheon", nummer: 88, url: wikiURLen+"Stannis_Baratheon"))
        charakters.append(Charakter(name: "Shireen Baratheon", nummer: 89, url: wikiURLen+"Shireen_Baratheon"))
        charakters.append(Charakter(name: "Selyse Baratheon", nummer: 90, url: wikiURLen+"Selyse_Baratheon"))
        charakters.append(Charakter(name: "Robert Baratheon", nummer: 91, url: wikiURLen+"Robert_Baratheon"))
        charakters.append(Charakter(name: "Barra", nummer: 92, url: wikiURLen+"Barra"))
        charakters.append(Charakter(name: "Doran Martell", nummer: 93, url: wikiURLen+"Doran_Martell"))
        charakters.append(Charakter(name: "Trystane Martell", nummer: 94, url: wikiURLen+"Trystane_Martell"))
        charakters.append(Charakter(name: "Obara Sand", nummer: 95, url: wikiURLen+"Obara_Sand"))
        charakters.append(Charakter(name: "Nymeria Sand", nummer: 96, url: wikiURLen+"Nymeria_Sand"))
        charakters.append(Charakter(name: "Tyene Sand", nummer: 97, url: wikiURLen+"Tyene_Sand"))
        charakters.append(Charakter(name: "Oberyn Martell", nummer: 98, url: wikiURLen+"Oberyn_Martell"))
        charakters.append(Charakter(name: "Randyll Tarly", nummer: 100, url: wikiURLen+"Randyll_Tarly"))
        charakters.append(Charakter(name: "Melessa Tarly", nummer: 101, url: wikiURLen+"Melessa_Tarly"))
        charakters.append(Charakter(name: "Talla Tarly", nummer: 102, url: wikiURLen+"Talla_Tarly"))
        charakters.append(Charakter(name: "Dickon Tarly", nummer: 103, url: wikiURLen+"Dickon_Tarly"))
        charakters.append(Charakter(name: "Axell Florent", nummer: 104, url: wikiURLen+"Axell_Florent"))
        charakters.append(Charakter(name: "Imry Florent", nummer: 105, url: wikiURLen+"Imry_Florent"))
        charakters.append(Charakter(name: "Lollys Stokeworth", nummer: 106, url: wikiURLen+"Lollys_Stokeworth"))
        charakters.append(Charakter(name: "Shae", nummer: 107, url: wikiURLen+"Shae"))
        charakters.append(Charakter(name: "Tormund", nummer: 108, url: wikiURLen+"Tormund"))
        charakters.append(Charakter(name: "Grenn", nummer: 109, url: wikiURLen+"Grenn"))
        charakters.append(Charakter(name: "Syrio Forel", nummer: 110, url: wikiURLen+"Syrio_Forel"))
        charakters.append(Charakter(name: "Beric Dondarrion", nummer: 111, url: wikiURLen+"Beric_Dondarrion"))
        charakters.append(Charakter(name: "Davos", nummer: 112, url: wikiURLen+"Davos"))
        charakters.append(Charakter(name: "Jaqen H'ghar ", nummer: 113, url: wikiURLen+"Jaqen_H'ghar"))
        charakters.append(Charakter(name: "Mero ", nummer: 114, url: wikiURLen+"Mero"))
        charakters.append(Charakter(name: "Prendahl na Ghezn ", nummer: 115, url: wikiURLen+"Prendahl_na_Ghezn"))
        charakters.append(Charakter(name: "Daario Naharis ", nummer: 116, url: wikiURLen+"Daario_Naharis"))
        charakters.append(Charakter(name: "Walder Frey ", nummer: 117, url: wikiURLen+"Walder_Frey"))
        charakters.append(Charakter(name: "Joyeuse Frey ", nummer: 118, url: wikiURLen+"Joyeuse_Frey"))
        charakters.append(Charakter(name: "Kitty Frey ", nummer: 119, url: wikiURLen+"Kitty_Frey"))
        charakters.append(Charakter(name: "Stevron Frey ", nummer: 120, url: wikiURLen+"Stevron_Frey"))
        charakters.append(Charakter(name: "Lothar Frey ", nummer: 121, url: wikiURLen+"Lothar_Frey"))
        charakters.append(Charakter(name: "Ryger Rivers", nummer: 123, url: wikiURLen+"Ryger_Rivers"))
        charakters.append(Charakter(name: "Yohn Royce", nummer: 124, url: wikiURLen+"Yohn_Royce"))
        charakters.append(Charakter(name: "Robar Royce", nummer: 125, url: wikiURLen+"Robar_Royce"))
        charakters.append(Charakter(name: "Waymar Royce", nummer: 126, url: wikiURLen+"Waymar_Royce"))
        charakters.append(Charakter(name: "Forest Children", nummer: 127, url: wikiURLen+"Children_of_the_Forest"))
        charakters.append(Charakter(name: "Mance Rayder", nummer: 128, url: wikiURLen+"Mance_Rayder"))
        charakters.append(Charakter(name: "Ilyn Payne", nummer: 129, url: wikiURLen+"Ilyn_Payne"))
        charakters.append(Charakter(name: "Pycelle", nummer: 130, url: wikiURLen+"Pycelle"))
        charakters.append(Charakter(name: "Barristan Selmy", nummer: 131, url: wikiURLen+"Barristan_Selmy"))
        charakters.append(Charakter(name: "Alliser Thorne", nummer: 132, url: wikiURLen+"Alliser_Thorne"))
        charakters.append(Charakter(name: "Alton Lannister", nummer: 133, url: wikiURLen+"Alton_Lannister"))
        charakters.append(Charakter(name: "Martyn Lannister", nummer: 134, url: wikiURLen+"Martyn_Lannister"))
        charakters.append(Charakter(name: "Ebrose", nummer: 135, url: wikiURLen+"Ebrose"))
        charakters.append(Charakter(name: "Hot Pie", nummer: 136, url: wikiURLen+"Hot_Pie"))
        charakters.append(Charakter(name: "Thoros of Myr", nummer: 137, url: wikiURLen+"Thoros_of_Myr"))
        charakters.append(Charakter(name: "Myranda", nummer: 138, url: wikiURLen+"Myranda"))




    }
    
    
    
    
    
    
    
    
    
    func getChars() -> [Charakter]{
        return charakters
    }
        
    
    
    
}
