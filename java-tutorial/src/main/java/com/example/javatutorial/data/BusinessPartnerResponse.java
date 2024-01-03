package com.example.javatutorial.data;



import java.util.List;
import java.util.ArrayList;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;

public class BusinessPartnerResponse {
	
		
	    private JsonObject d;
	    private List<AddressResult> results;
	
	
		public List<AddressResult> getResults() {
	        List<AddressResult> results = new ArrayList<>();
	        if (d != null) {
	            JsonArray resultsArray = d.getAsJsonArray("results");
	            if (resultsArray != null) {
	                for (JsonElement element : resultsArray) {
	                    AddressResult addressResult = new Gson().fromJson(element, AddressResult.class);
	                    results.add(addressResult);
	                }
	            }
	        }
	        return results;
	    }
		public void setResults(List<AddressResult> results) {
			this.results = results;
		}
		@Override
		public String toString() {
			return "BusinessPartnerResponse [results=" + results + "]";
		}
		public JsonObject getD() {
			return d;
		}
		public void setD(JsonObject d) {
			this.d = d;
		}

}
