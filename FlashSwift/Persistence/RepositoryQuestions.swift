//
//  Repository.swift
//  FlashSwift
//
//  Created by PATRICIA S SIQUEIRA on 25/08/20.
//  Copyright © 2020 PATRICIA S SIQUEIRA. All rights reserved.
//

import Foundation

class RepositoryQuestion {
    
    var fileURL: URL
    
    init(filename: String = "file_manager") {
        let url = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        var fileURL = url.appendingPathComponent(filename)
        fileURL = fileURL.appendingPathExtension("json")
        // Printa o local em que se encontra o arquivo json. É bom para você checar como ficou o arquivo. No terminal, utilize o comando open junto do caminho que você conseguiu pelo print ou pelo po do LLDB. Exemplo: open file:///.../file_manager.json
        print(fileURL)
        self.fileURL = fileURL
    }
        
        func save(_ questions: [Question]) {
            do {
                let jsonData = try JSONEncoder().encode(questions)
                try jsonData.write(to: fileURL)
            } catch {
                print("It was not possible to save the questions.")
            }
        }
        
     func load() -> [Question] {
            var questions: [Question] = []
            do {
                let jsonData = try Data(contentsOf: fileURL)
                questions = try JSONDecoder().decode([Question].self, from: jsonData)
                return questions
            } catch {
                print("It was not possible to load the celestial bodies.")
                return questions
            }
        }
    
}
