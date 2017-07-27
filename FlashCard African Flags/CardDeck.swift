//
//  CardDeck.swift
//  FlashCard African Flags
//
//  Created by ishmael on 6/21/17.
//  Copyright © 2017 ishmael.mthombeni. All rights reserved.
//

import Foundation




struct  CardDeck {
    
    var priorCountryNum = 0
    var randomNum = 0
    
    let cardData = [(country: "Algeria", capital: "Algiers", population: "41,063,753", area: "919,595 sq mi", gdp: "102,257", Language: "Arabic, French", currency: "Algerian dinar", government: "Parliamentary"),
                    
                    (country: "Angola", capital: "Luanda", population: "26,655,513", area: "481,354 sq mi", gdp: "28,038", Language: "Portuguese, Umbundu", currency: "Kwanza", government: "Parliamentary"),
                    
                    (country: "Benin", capital: "Porto Novo", population: "11,458,611", area: "43,484 sq mi", gdp: "USD 779.07", Language: "French, Fon and Yoruba", currency: "CFA franc", government: "Parliamentary"),
                    
                    (country: "Botswana", capital: "Gaborone", population: "2,343,981", area: "224,606 sq mi", gdp: "6,360.64", Language: "Setswana, English", currency: "Pula", government: "Parliamentary"),
                    
                    (country: "Burkina Faso", capital: "Ouagadougou", population: "19,173,322", area: "105,792 sq mi", gdp: "613.04", Language: "French, Sudanic family languages", currency: "CFA franc", government: "Parliamentary"),
                    
                    (country: "Burundi", capital: "Bujumbura", population: "11,936,481", area: "10,745 sq mi", gdp: "275.98", Language: "Kirundi, French and Swahili", currency: "Burundi franc", government: "Parliamentary"),
                    
                    (country: "Cape Verde", capital: "Praia", population: "533,468", area: "1,557 sq mi", gdp: "3,131.13", Language: "Portuguese, Kabuverdianu (Crioulo)", currency: "Cape Verdean escudo", government: "Parliamentary"),
                    
                    (country: "Cameroon", capital: "Yaounde", population: "24,513,689", area: "183,569 sq mi", gdp: "320.000", Language: "French, English", currency: "CFA franc", government: "Parliamentary"),
                    
                    (country: "Central African Republic", capital: "Bangui", population: "5,098,826", area: "240,535 sq mi", gdp: "306.78", Language: "French, Sangho (lingua franca and national language)", currency: "CFA franc", government: "Parliamentary"),
                    
                    (country: "Chad", capital: "N'Djamena", population: "14,965,482", area: "495,755 sq mi", gdp: " 775.70", Language: "French, Arabic, Sara (in south)", currency: "CFA franc", government: "Parliamentary"),
                    
                    (country: "Comoros", capital: "Moroni", population: "825,920", area: "863 sq mi", gdp: "320.000", Language: "Arabic, French, Shikomoro", currency: "Comorian franc", government: "Parliamentary"),
                    
                    (country: "Congo D.R of", capital: "Kinshasa", population: "82,242,685", area: "905,355 sq mi", gdp: "320.000", Language: "French, Lingala, Kingwana(a dialect of Swahili), Kikongo, Tshiluba.", currency: "CFA franc", government: "Parliamentary"),
                    
                    (country: "Congo Republic of ", capital: "Brazzaville", population: "4,866,243", area: "132,047 sq mi", gdp: "1,851.20", Language: "Lingala and Monokutuba", currency: "CFA franc", government: "Parliamentary"),
                    
                    (country: "Cote d Ivoire", capital: "Yamoussoukro", population: "23,815,886", area: "124,503 sq mi", gdp: "320.000", Language: "French,  Dioula & other dialects", currency: "Rands", government: "Parliamentary"),
                    
                    (country: "Djibouti", capital: "Djibouti (city)", population: "911,382", area: "8,958 sq mi", gdp: "1,813.60", Language: "French, Arabic, Somali, Afar", currency: "Djiboutian franc", government: "Parliamentary"),
                    
                    (country: "Egypt", capital: "Cairo", population: "95,215,102", area: "386,662 sq mi", gdp: "320.000", Language: "Arabic, English and French", currency: "Egyptian pound", government: "Parliamentary"),
                    
                    (country: "Equatorial Guinea", capital: "Malabo Oyala", population: "894,464", area: "10,831 sq mi", gdp: "11,120.86", Language: "Spanish, French, pidgin English, Fang, Bubi, Ibo.", currency: "CFA franc", government: "Parliamentary"),
                    
                    (country: "Eritrea", capital: "Asmara", population: "5,481,906", area: "45,406 sq mi", gdp: "544,46", Language: "Tigrinya (Tigrigna), Arabic, English, Tigré", currency: "Nakfa", government: "Parliamentary"),
                    
                    (country: "Ethiopia", capital: "Addis Ababa", population: "104,344,901", area: "426,373 sq mi", gdp: "619.14", Language: "Amharic, Tigrinya, Oromo, Gurage, Somali, Arabic", currency: "Ethiopian birr", government: "Parliamentary"),
                    
                    (country: "Gabon", capital: "Libreville", population: "1,801,232", area: "103,347 sq mi", gdp: "8,311.48", Language: "French, Fang, Myene, Nzebi, Bapounou, Bandjabi", currency: "CFA franc", government: "Parliamentary"),
                    
                    (country: "Gambia", capital: "Banjul", population: "2,120,418", area: "4,008 sq mi", gdp: "320.000", Language: "English, Mandinka, Wolof, Fula", currency: "Dalasi", government: "Parliamentary"),
                    
                    (country: "Ghana", capital: "Accra", population: "28,656,723", area: "92,098 sq mi", gdp: "1,381.41", Language: "English, Akan, Adangme, Moshi-Dagomba, Ewe, and Ga", currency: "Ghanaian cedi", government: "Parliamentary"),
                    
                    (country: "Guinea Bissau", capital: "Conakry", population: "1,932,871", area: "13,948 sq mi", gdp: "320.000", Language: "Portuguese, Crioulo", currency: "CFA franc", government: "Parliamentary"),
                    
                    (country: "Guinea", capital: "Bissau", population: "13,290,659", area: "94,926 sq mi", gdp: "531.32", Language: "French, Kissi, Susu,Toma and Guerze", currency: "Guinean franc", government: "Parliamentary"),
                    
                    (country: "Kenya", capital: "Nairobi", population: "48,466,928", area: "224,081 sq mi", gdp: "320.000", Language: "English, Kiswahili", currency: "Kenyan shilling", government: "Parliamentary"),
                    
                    (country: "Lesotho", capital: "Maseru", population: "2,185,159", area: "11,720 sq mi", gdp: "1,034.19", Language: "English, Zulu, Xhosa,Sesotho", currency: "Loti", government: "Parliamentary"),
                    
                    (country: "Liberia", capital: "Monrovia", population: "4,730,437", area: "43,000 sq mi", gdp: "455.87", Language: "English", currency: "Liberian dollar", government: "Parliamentary"),
                    
                    (country: "Libya", capital: "Tripoli", population: "6,408,742", area: "679,362 sq mi", gdp: "320.000", Language: "Arabic", currency: "Libyan dinar", government: "Parliamentary"),
                    
                    (country: "Madagascar", capital: "Antananarivo", population: "25,612,972", area: "226,658 sq mi", gdp: "411.82", Language: "French, Malagasy", currency: "Malagasy ariary", government: "Parliamentary"),
                    
                    (country: "Malawi", capital: "Lilongwe", population: "18,298,679", area: "45,747 sq mi", gdp: "381.37", Language: "English, Nyanja, Chewa, Lomwe, Tumbuka", currency: "Malawian kwacha", government: "Parliamentary"),
                    
                    (country: "Mali", capital: "Bamako", population: "18,689,966", area: "478,841 sq mi", gdp: "320.000", Language: "Bambara, Arabic, Senoufou, and Mandinka", currency: "CFA franc", government: "Parliamentary"),
                    
                    (country: "Mauritania", capital: "Nouakchott", population: "4,266,448", area: "397,955 sq mi", gdp: "1,370.99", Language: "Arabic, Pulaar, Soninke, Wolof, French", currency: "Ouguiya", government: "Parliamentary"),
                    
                    (country: "Mauritius", capital: "Port Louis", population: "1,281,353", area: "788 sq mi", gdp: "9,116.83", Language: "English, French, Creole, Hindi, Urdu, Hakka, Bhojpuri", currency: "Mauritian rupee", government: "Parliamentary"),
                    
                    (country: "Morocco", capital: "Rabat", population: "35,241,418", area: "172,414 sq mi", gdp: "2,871.51", Language: "Arabic", currency: "Moroccan dirham", government: "Parliamentary"),
                    
                    (country: "Mozambique", capital: "Maputo", population: "29,537,914", area: "309,496 sq mi", gdp: "525.01", Language: "Portuguese, Makhuwa, Tsonga, Lomwe, Sena", currency: "Mozambican metical", government: "Parliamentary"),
                    
                    (country: "Namibia", capital: "Windhoek", population: "2,568,569", area: "318,696 sq mi", gdp: "4,695.77", Language: "English, Afrikaans, Oshivambo, Herero, Nama", currency: "Namibian dollar", government: "Parliamentary"),
                    
                    (country: "Niger", capital: "Niamey", population: "21,563,607", area: "489,191 sq mi", gdp: "358.96", Language: "French, Hausa, Djerma", currency: "CFA franc", government: "Parliamentary"),
                    
                    (country: "Nigeria", capital: "Abuja", population: "191,835,936", area: "356,669 sq mi", gdp: "2,640.29", Language: "English, Hausa, Yoruba, Igbo, Fulani, Ijaw, Ibibio", currency: "Nigerian naira", government: "Parliamentary"),
                    
                    (country: "Rwanda", capital: "Kigali", population: "12,159,586", area: "10,347 sq mi", gdp: "697.35", Language: "English, Kiswahili", currency: "Rwandan franc", government: "Parliamentary"),
                    
                    (country: "Sao Tome and Principe", capital: "São Tomé", population: "198,481", area: "372 sq mi", gdp: "320.000", Language: "Portuguese", currency: "Dobra", government: "Parliamentary"),
                    
                    (country: "Senegal", capital: "Dakar", population: "16,054,275", area: "75,955 sq mi", gdp: "910.79", Language: "French, Wolof, Pulaar, Jola, Mandinka", currency: "CFA franc", government: "Parliamentary"),
                    
                    (country: "Seychelles", capital: "Victoria", population: "97,539", area: "174 sq mi", gdp: "15,476.02", Language: "English, French, Creole", currency: "Seychellois rupee", government: "Parliamentary"),
                    
                    (country: "Sierra Leone", capital: "Freetown", population: "6,732,899", area: "27,699 sq mi", gdp: "693.41", Language: "English, Mende, Temne", currency: "Sierra Leonean leone", government: "Parliamentary"),
                    
                    (country: "Somalia", capital: "Mogadishu", population: "11,391,962", area: "246,201 sq mi", gdp: "551.86", Language: "Arabic, Italian, English", currency: "Somali shilling", government: "Parliamentary"),
                    
                    (country: "South Africa", capital: "Pretoria", population: "55,436,360", area: "471,445 sq mi", gdp: "320.000", Language: "Afrikaans, English, isiNdebele, Pedi, Sesotho, siSwati, Xitsonga (Tsonga), Tswana, Venda, isiXhosa, isiZulu", currency: "South African Rand", government: "Parliamentary"),
                    
                    (country: "South Sudan", capital: "Juba", population: "13,096,190", area: "248,777 sq mi", gdp: "730.58", Language: "Arabic, Nubian, Ta Bedawie, Nilo-Hamitic", currency: "South Sudanese pound", government: "Parliamentary"),
                    
                    (country: "Sudan", capital: "Khartoum", population: "42,166,323", area: "718,723 sq mi", gdp: "2,089.40", Language: "Arabic, Nubian, Ta Bedawie, Nilo-Hamitic", currency: "Sudanese pound", government: "Parliamentary"),
                    
                    (country: "Swaziland", capital: "Mbabane", population: "1,320,356", area: "6,704 sq mi", gdp: "3,154.75", Language: "English, siSwati", currency: "Lilangeni", government: "Parliamentary"),
                    
                    (country: "Tanzania", capital: "Dodoma", population: "56,877,529", area: "364,945 sq mi", gdp: "864.86", Language: "Kiswahili, Arabic, Gogo, Haya, Makonde, Nyakyusa, Nyamwezi, Sukuma", currency: "Tanzanian shilling", government: "Parliamentary"),
                    
                    (country: "Togo", capital: "Lomé", population: "7,691,915", area: "21,925 sq mi", gdp: "547.97", Language: "French, Ewe, Kabye, Dagomba and Mina", currency: "CFA franc", government: "Parliamentary"),
                    
                    (country: "Tunisia", capital: "Tunis", population: "11,494,760", area: "63,170 sq mi", gdp: "3,872.51", Language: "Zulu", currency: "Tunisian dinar", government: "Parliamentary"),
                    
                    (country: "Uganda", capital: "Kampala", population: "41,652,938", area: "91,136 sq mi", gdp: "675.67", Language: "English, Luganda, Acoli, Swahili, Arabic", currency: "Ugandan shilling", government: "Parliamentary"),
                    
                    (country: "Zambia", capital: "Lusaka", population: "17,237,931", area: "290,586 sq mi", gdp: "1,307.79", Language: "English, Bemba, Kaonda, Lozi, Lunda, Luvale, Nyanja, Tonga", currency: "Zambian kwacha", government: "Parliamentary"),
                    
                    (country: "Zimbabwe", capital: "Harare", population: "16,337,760", area: "150,872 sq mi", gdp: "890.92", Language: "English, Shona, Sindebele, Sotho, Nambya, Shangani, Venda, Chewa, Nyanja, and Tonga.", currency: "Zimbabwean Bond Notes", government: "Parliamentary"),
                    
    
    
    ]
    
    
    
    
    

    
    mutating func retriveData() {
        
        //Select a random number that is different than with the prvious one
        
        randomNum = priorCountryNum
        while randomNum == priorCountryNum{
            randomNum = Int(arc4random_uniform(UInt32(cardData.count)))
        }
        
        priorCountryNum = randomNum
        
        
    }
    
    
}
