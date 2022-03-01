package com.kh.mvc.main;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.mvc.ground.model.service.GroundServiceImpl;
import com.kh.mvc.ground.model.vo.Ground;


@ResponseBody
public class GroundData {
	
	
	public static void main(String[] args) {
	
    	// 인증키 (개인이 받아와야함)
    	String key = "";
    	// 파싱한 데이터를 저장할 변수
    	String result = "";
    	try {
    		URL url = new URL("http://openapi.seoul.go.kr:8088/734770644173756e3736617a546e6a/json/ListPublicReservationSport/1/44/풋살장");
    		BufferedReader bf;
    		bf = new BufferedReader(new InputStreamReader(url.openStream(), "UTF-8"));
    		result = bf.readLine();
    		
//    		System.out.println(result);
//    		System.out.println("====================");
    		
        	JSONParser jsonParser = new JSONParser();
        	JSONObject jsonObject = (JSONObject)jsonParser.parse(result);
        	
        	JSONObject info1 = (JSONObject)jsonObject.get("ListPublicReservationSport");
//        	System.out.println(info1);
        	System.out.println("====================");
        	
        	JSONArray info2 = (JSONArray)info1.get("row");
        	JSONObject info3 = (JSONObject)info2.get(0);     	        	
//        	System.out.println(info3);
        	System.out.println("====================");
        	
        	System.out.println("출력할 구장 Count : " + info2.size());
        	
        	for(int i = 0; i < info2.size(); i++) {
        		JSONObject psArr = (JSONObject)info2.get(i);
        		System.out.println("서비스 ID : " + psArr.get("SVCID"));
        		System.out.println("서비스 상태 : " + psArr.get("SVCSTATNM"));
        		System.out.println("서비스 명 : " + psArr.get("SVCNM"));
        		System.out.println("결제방법 : " + psArr.get("PAYATNM"));
        		System.out.println("장소명  : " + psArr.get("PLACENM"));
        		System.out.println("바로가기 URL : " + psArr.get("SVCURL"));
        		System.out.println("장소 X좌표 : " + psArr.get("X"));
        		System.out.println("장소 Y좌표 : " + psArr.get("Y"));
        		System.out.println("지역명 : " + psArr.get("AREANM"));
        		System.out.println("이미지경로 : " + psArr.get("IMGURL"));
//        		System.out.println("상세정보 : " + psArr.get("DTLCONT"));
        		System.out.println("전화번호 : " + psArr.get("TELNO"));
        		System.out.println("서비스이용 시작시간 : " + psArr.get("V_MIN"));
        		System.out.println("서비스이용 종료시간 : " + psArr.get("V_MAX"));
        		System.out.println("====================");
        		
//        		String g_no = (String) psArr.get("SVCID");
//    			String g_svcnm      = (String) psArr.get("SVCNM");
//    			String g_placenm    = (String) psArr.get("PLACENM");
//    			String g_areanm     = (String) psArr.get("AREANM");
//    			String g_url        = (String) psArr.get("SVCURL");
//    			String g_imgurl     = (String) psArr.get("IMGURL");
//    			String g_place_x    = (String) psArr.get("X");
//    			String g_place_y    = (String) psArr.get("Y");
//    			String g_pay        = (String) psArr.get("PAYATNM");
//    			String g_tel        = (String) psArr.get("TELNO");
//    			String g_start      = (String) psArr.get("V_MIN");
//    			String g_end        = (String) psArr.get("V_MAX");
//    			
//    			System.out.println("g_no : " + g_no);
//    			System.out.println("g_svcnm : " + g_svcnm);
//    			System.out.println("g_placenm : " + g_placenm);
//    			System.out.println("g_areanm : " + g_areanm);
//    			System.out.println("g_url : " + g_url);
//    			System.out.println("g_imgurl : " + g_imgurl);
//    			System.out.println("g_place_x : " + g_place_x);
//    			System.out.println("g_place_y : " + g_place_y);
//    			System.out.println("g_pay : " + g_pay);
//    			System.out.println("g_tel : " + g_tel);
//    			System.out.println("g_start : " + g_start);
//    			System.out.println("g_end : " + g_end);
//        		
//        		Ground ground = new Ground(g_no, g_svcnm, g_placenm, g_areanm, g_url, g_imgurl, g_place_x, g_place_y, g_pay, g_tel, g_start, g_end);
//        		
//        		System.out.println("ground : " + ground.toString());
//        		
//        		GroundServiceImpl service = new GroundServiceImpl();
//        		service.saveGround(ground);
        	}
        	
        	
    	}catch(Exception e) {
    		e.printStackTrace();
    	}
    }
}