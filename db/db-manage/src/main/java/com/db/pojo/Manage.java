package com.db.pojo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;
import lombok.experimental.Accessors;

@TableName("db_manage")
@Data
@ToString
@Accessors(chain = true)
@EqualsAndHashCode(callSuper = false)
public class Manage extends BasePojo {
	private static final long serialVersionUID = 6579017779220426819L;
	@TableId(type = IdType.AUTO)
	private Long id;
	private String username;
	private String password;
	private String phone;
	private String email;
}
