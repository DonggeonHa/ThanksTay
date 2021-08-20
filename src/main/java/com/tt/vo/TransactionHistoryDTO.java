package com.tt.vo;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class TransactionHistoryDTO {
	
	private int userNo;
	private String bankAccount;
	private int bookingNo;
	private int transactionNo;
	private int lodgingNo;
	private String lodgingName;
	@JsonFormat(pattern = "yyyy-MM")
	private Date createdDate;
	private int lodgingFee;
	private int cleaningFee;
}
