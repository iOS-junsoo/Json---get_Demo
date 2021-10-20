//
//  Request.swift
//  Json_Demo
//
//  Created by 준수김 on 2021/10/20.
//

import UIKit
import Alamofire

class Request {
    func getData(_ viewController: ViewController) {
        let url = "http://211.237.50.150:7080/openapi/57c98321a0a1a87daac8477bfa1863558b3c7163cd54c0cd3b9e58e9058dc6d0/json/Grid_20200713000000000605_1/1/1?RELAX_SI_NM=%EA%B2%BD%EC%83%81%EB%B6%81%EB%8F%84&RELAX_SIDO_NM=%EA%B5%AC%EB%AF%B8%EC%8B%9C"
        
//        let params: Parameters = [
//            "q" : "seoul",
//            "appid" : "70712209ed38b3c9995cdcdd87bda250"
//        ]
   
        AF.request(url, //URL 삽입
                   method: .get, //urlRequest에 대한 HTTP메서드
                   parameters: nil, //매개변수
                   encoding: URLEncoding.default, //매개변수 값을 urlRequest로 인코딩하는데 사용되는 ParameterEncoding이다. 기본적으로 URLEncoding.default
                   headers: nil, //URLRequest에 추가할 HTTPHeaders 값이다. 기본적으로 nil이다.
                   interceptor: nil, //반환된 DataRequest에서 사용할 RequestInterceptor 값이다. 기본적으로 nil이다.
                   requestModifier: nil) //제공된 매개 변수로 생성된 URLRequest에 적용될 RequestModifier이다. 기본적으로 nil입니다.
            .responseDecodable(of: ResponseService.self) { response in
                
                switch response.result { //성공, 실패여부에 따라 분기문 설정
                
                case .success(let response):
                    print("DEBUG>>  \(response) ")
                    viewController.didSuccess(response)
                    
                case .failure(let error):
                    print("DEBUG>>  \(error.localizedDescription)")
                    
                }
            }
    }
}
