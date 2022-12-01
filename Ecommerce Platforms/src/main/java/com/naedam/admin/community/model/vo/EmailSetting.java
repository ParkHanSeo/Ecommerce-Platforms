package com.naedam.admin.community.model.vo;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class EmailSetting implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;	
	
	private int emailStCode; 
	private String templateId;
	private String templateName;
	private String isSend; 
	private String isSendAdmin;

}
