package com.tt.vo;

import java.util.Date;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class TransactionHistoryDTO {
	
	private String bankAccount;
	private int bookingNo;
	private int transactionNo;
	private int lodgingNo;
	private String lodgingName;
	private Date createdDate;
	private int lodgingFee;
	private int cleaningFee;
}
