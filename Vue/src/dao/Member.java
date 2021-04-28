package dao;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

@WebServlet("/member")
public class Member extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Member() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     System.out.println("do-get");
		DAO dao = new DAO();
     JSONArray list = dao.getMemberList();
	 response.getWriter().append(list.toJSONString());
	 System.out.println(list.toJSONString());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String body = getBody(request);
		
		//{"params":{"id":"test","email":"test@naver.com","pass":"1","gender":"f"}}
	    System.out.println(body);
	   
	    JSONParser parser = new JSONParser();
	    try {
	    	//스트링을 객체로 만드는 것	    
			Object obj = parser.parse(body);
			
			//JSONObject에 담아서 사용합니다.
			JSONObject jsonObj = (JSONObject) obj;
			
			JSONObject params =(JSONObject) jsonObj.get("params");		
			
			 Map<String,String> map = new HashMap<String, String>();		 
			
			  map.put("email", (String)params.get("email"));
			  map.put("id",(String)params.get("id")); 
			  map.put("pass", (String)params.get("pass"));
			  map.put("gender", (String)params.get("gender"));
			 
			  DAO dao = new DAO();
			  int result = dao.insert(map);
			  response.getWriter().print(result);
			
		} catch (ParseException e) {
			e.printStackTrace();
		}
	    
	
	    
	   
	    
}

private String getBody(HttpServletRequest request) {
	 String body = null;
        StringBuilder stringBuilder = new StringBuilder();
        BufferedReader bufferedReader = null;
 
        try {
            InputStream inputStream = request.getInputStream();
            if (inputStream != null) {
                bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
                char[] charBuffer = new char[128];
                int bytesRead = -1;
                while ((bytesRead = bufferedReader.read(charBuffer)) > 0) {
                    stringBuilder.append(charBuffer, 0, bytesRead);
                }
            }
        } catch (IOException ex) {
           ex.printStackTrace();
        } finally {
            if (bufferedReader != null) {
                try {
                    bufferedReader.close();
                } catch (IOException ex) {
                	ex.printStackTrace();
                }
            }
        }
 
        body = stringBuilder.toString();
        return body;
}
}
