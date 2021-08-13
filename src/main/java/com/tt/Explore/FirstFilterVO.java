package com.tt.Explore;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@AllArgsConstructor
public class FirstFilterVO {
//	private String latitude;
//	private String longitude;

	private double east;	//nonNull for int/double?
	private double west;
	private double south;
	private double north;
//	private String location;
//	private Date checkInDate;
//	private Date checkOutDate;
//	private int guests;
	

}
