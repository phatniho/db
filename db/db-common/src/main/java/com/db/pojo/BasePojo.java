package com.db.pojo;

import java.io.Serializable;
import java.util.Date;

import lombok.Data;
import lombok.experimental.Accessors;

@Data
@Accessors(chain = true)
public class BasePojo implements Serializable {
	private static final long serialVersionUID = -3121669440061630976L;
	private Date created;
	private Date updated;
}
