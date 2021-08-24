package com.tt.Host;

import java.sql.Date;

public interface PriceService {
	void registerLdgPrice(PriceDto price);
	
	Date getInterDates(Date startDate, Date endDate);
}
