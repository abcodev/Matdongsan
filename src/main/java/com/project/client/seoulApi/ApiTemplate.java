package com.project.client.seoulApi;
import com.project.common.dto.RentHouseDto;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import javax.xml.parsers.ParserConfigurationException;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import java.net.HttpURLConnection;
import java.net.URL;
import java.io.BufferedReader;
import java.io.InputStreamReader;

public class ApiTemplate {

    private static String getTagValue(String tag, Element eElement) {
        NodeList nList = eElement.getElementsByTagName(tag).item(0).getChildNodes();
        Node nValue = (Node) nList.item(0);
        if (nValue == null) {
            return null;
        }
        return nValue.getNodeValue();
    }

    public List<RentHouseDto> parsingData() throws IOException, ParserConfigurationException, SAXException {

        List<RentHouseDto> list = new ArrayList<RentHouseDto>();
        String str = "";    //return을 위해서
        String parsingUrl = "";//Parsing할 URL

        StringBuilder urlBuilder = new StringBuilder("http://openapi.seoul.go.kr:8088"); /*URL*/
        urlBuilder.append("/" +  URLEncoder.encode("6d504f496761686137326a50747377","UTF-8") ); /*인증키*/
        urlBuilder.append("/" +  URLEncoder.encode("json","UTF-8") ); /*요청파일타입 (xml,xmlf,xls,json) */
        urlBuilder.append("/" + URLEncoder.encode("tbLnOpendataRentV","UTF-8")); /*서비스명 (대소문자 구분 필수입니다.)*/
        urlBuilder.append("/" + URLEncoder.encode("1","UTF-8")); /*요청시작위치*/
        urlBuilder.append("/" + URLEncoder.encode("1000","UTF-8")); /*요청종료위치*/

        URL url = new URL(urlBuilder.toString());
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("GET");
        conn.setRequestProperty("Content-type", "application/xml");
        System.out.println("Response code: " + conn.getResponseCode()); /* 연결 자체에 대한 확인이 필요하므로 추가합니다.*/
        BufferedReader rd;

        // 서비스코드가 정상이면 200~300사이의 숫자가 나옵니다.
        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
        } else {
            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
        }
        StringBuilder sb = new StringBuilder();
        String line;
        while ((line = rd.readLine()) != null) {
            sb.append(line);
        }
        rd.close();
        conn.disconnect();

        String result = sb.toString();
        System.out.println(result);

        parsingUrl = url.toString();
        System.out.println(parsingUrl);

        //페이지에 접근해줄 Document객체 생성
        //doc객체를 통해 파싱할 url의 요소를 읽어들인다.
        //doc.getDocumentElement().getNodeName()을 출력하면 위 xml의 최상위 태그를 가져온다.
        DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
        DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
        Document doc = dBuilder.parse(parsingUrl);

        // root tag
        doc.getDocumentElement().normalize();
        System.out.println("Root element: " + doc.getDocumentElement().getNodeName()); // Root element: result

        //파싱할 데이터  tag에 접근하는데 리스트 수 확인
        NodeList nList = doc.getElementsByTagName("item");
        System.out.println("파싱할 리스트 수 : " + nList.getLength());//파링할 리스트 수

        for (int i = 0; i < nList.getLength(); i++) {
            Node nNode = nList.item(i);
            if (nNode.getNodeType() == Node.ELEMENT_NODE) {

                Element eElement = (Element) nNode;

                RentHouseDto dto = new RentHouseDto();

                System.out.println("=================================");
                System.out.println(getTagValue("ACC_YEAR", eElement));//접수년도
                System.out.println(getTagValue("SGG_NM", eElement));//자치구명
                System.out.println(getTagValue("BJDONG_NM", eElement));//법적동명
                System.out.println(getTagValue("CNTRCT_DE", eElement)); //계약일
                System.out.println(getTagValue("RENT_GBN", eElement)); //전월세 구분
                System.out.println(getTagValue("RENT_AREA", eElement)); //임대면적
                System.out.println(getTagValue("RENT_GTN", eElement)); //보증금
                System.out.println(getTagValue("RENT_FEE", eElement)); //임대료
                System.out.println(getTagValue("BLDG_NM", eElement)); //건물명
                System.out.println(getTagValue("HOUSE_GBN_NM", eElement)); //건물용도

                dto.setAccYear(getTagValue("ACC_YEAR", eElement));//접수년도
                dto.setSggName(getTagValue("SSG_CD", eElement)); //자치구 코드
                dto.setSggName(getTagValue("SGG_NM", eElement));//자치구명
                dto.setBjdCd(getTagValue("BJDONG_CD", eElement)); //법적동 코드
                dto.setBjdName(getTagValue("BJDONG_NM", eElement));//법적동명
                dto.setBoBn(getTagValue("BOBN", eElement)); //본번
                dto.setBuBn(getTagValue("BUBN", eElement)); //부번
                dto.setDealYmd(getTagValue("CNTRCT_DE", eElement)); //계약일
                dto.setRentGbn(getTagValue("RENT_GBN", eElement)); //전월세 구분
                dto.setRentArea(getTagValue("RENT_AREA", eElement)); //임대면적
                dto.setRentGtn(getTagValue("RENT_GTN", eElement)); //보증금
                dto.setRentFee(getTagValue("RENT_FEE", eElement)); //임대료
                dto.setBuildName(getTagValue("BLDG_NM", eElement)); //건물명
                dto.setHouseType(getTagValue("HOUSE_GBN_NM", eElement)); //건물용도

                assert false;
                list.add(dto);
            }
        }
        System.out.println(list);
        return list;
    }
}
