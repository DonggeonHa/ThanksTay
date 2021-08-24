package com.tt.Host;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PriceServiceImpl implements PriceService{
	
	@Autowired
	PriceDao priceDao;
	@Override
	public void registerLdgPrice(PriceDto price) {
		priceDao.insertLodgingPrice(price);
	}
	
	@Override
	public Date getInterDates(Date startDate, Date endDate) {
		
		return null;
	}
	
}
