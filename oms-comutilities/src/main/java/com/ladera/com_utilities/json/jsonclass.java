package com.ladera.com_utilities.json;

import org.json.simple.JSONObject;

public class jsonclass {

	public static void main(String[] args) {
		JSONObject obj = new JSONObject();
		obj.put("name", "sonoo");
		obj.put("age", "27");
		
		
		String jsonString = obj.toJSONString();
		
		
        
	}
	
	
	

}
