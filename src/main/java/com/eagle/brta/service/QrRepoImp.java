package com.eagle.brta.service;


import java.time.LocalDate;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eagle.brta.repository.QrRepo;
import com.eagle.brta.dto.QrCode;
import com.eagle.brta.dto.QrCodeOut;
import com.eagle.brta.dto.Subject;
import com.eagle.brta.model.QrModel;

@Service
public class QrRepoImp {

    @Autowired
    QrRepo qrRepo;

//	public String getEd1() {
//
//		return qrRepo.findEd1ById(1);		
//	}

    public Map<LocalDate, String> getEd2() {
        Map<LocalDate, String> map = new LinkedHashMap<>();
        Iterator<QrModel> iterator = qrRepo.findAllByOrderByEd2ValiddateAsc().iterator();

        while (iterator.hasNext()) {
            QrModel element = iterator.next();
            map.put(element.getEd2Validdate(), element.getEd2());

        }
        return map;
    }


//	public String getJsonData() {
//		Gson gson = new Gson();
//		String json = gson.toJson(loginData);
//		
//		return null;
//		
//	}


//	public String getJsonStr() {
//		
//		Subject su = genData().getSubject();
//		
//		JSONObject ob = new JSONObject();
//		ob.put("Suffix",su.getSuffix());
//		ob.put("lName",su.getlName());
//		ob.put("fName",su.getfName());
//		ob.put("mName",su.getmName());
//		ob.put("sex",su.getSex());
//		ob.put("BF",su.getBf());
//		ob.put("DOB",su.getDob());
//		ob.put("POB",su.getPob());
//		ob.put("PCN",su.getPcn());
//		System.out.println(ob.toString());
//	JSONObject obj = new JSONObject();
//	QrCode qc= genData();
//	obj.put("DateIssued",qc.getDateIssued());
//	obj.put("Issuer",qc.getIssuer());
//	obj.put("subject",ob);
//	obj.put("alg",qc.getAlg());
//
//
//	String s = new Gson().toJson(obj);
//
//	System.out.println(s);
//	
//	return s;
//	
//	}


}
