package vn.edu.hcmuaf.fit.until;

import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.BufferedReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


public class HttpUtil {
	
	private String value;
	
	public HttpUtil (String value) {
		this.value = value;
	}
	
	public <T> T toModel(Class<T> tClass) {
		try {
			return new ObjectMapper().readValue(value, tClass);
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
		return null;
	}

	public <T> List<T> listModel(Class<T> tClass){
		List<T> list = new ArrayList<>();
		try{
	list.add(new ObjectMapper().readValue(value,tClass));
		}catch (Exception e){
			System.out.println(e.getMessage());
		}
		return list;
	}
	
	public static HttpUtil of (BufferedReader reader) {
		StringBuilder sb = new StringBuilder();
		try {
			String line;
		    while ((line = reader.readLine()) != null) {
		        sb.append(line);
		    }
		} catch (IOException e) {
			System.out.print(e.getMessage());
		}
		return new HttpUtil(sb.toString());
	}
}
