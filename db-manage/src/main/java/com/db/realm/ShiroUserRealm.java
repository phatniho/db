package com.db.realm;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authc.credential.CredentialsMatcher;
import org.apache.shiro.authc.credential.HashedCredentialsMatcher;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.db.mapper.ManageMapper;
import com.db.pojo.Manage;

@Service
public class ShiroUserRealm extends AuthorizingRealm {

	@Autowired
	private ManageMapper manageMapper;

	/**
	 * 设置凭证匹配器,告诉认证管理器使用什么 加密算法对用户输入的密码进行加密操作
	 */
	@Override
	public void setCredentialsMatcher(CredentialsMatcher credentialsMatcher) {
		// 构建凭证匹配对象
		HashedCredentialsMatcher cMatcher = new HashedCredentialsMatcher();
		// 设置加密算法
		cMatcher.setHashAlgorithmName("MD5");
		// 设置加密次数
		cMatcher.setHashIterations(1);
		super.setCredentialsMatcher(cMatcher);
	}

	/**
	 * 完成认证信息的获取以及封装
	 */
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		// 1.获取用户输入的信息
		UsernamePasswordToken upToken = (UsernamePasswordToken) token;
		// 2.基于用户名查找用户信息,并进行判定
		QueryWrapper<Manage> queryWrapper = new QueryWrapper<>();
		queryWrapper.eq("username", upToken.getUsername());
		Manage user = manageMapper.selectOne(queryWrapper);
		// 2.1 判定用户是否存在
		if (user == null) {
			System.out.println("bucunzai");
		}

		// 3.对用户信息进行封装,并返回
		SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(user, user.getPassword(), getName());// hashedCredentials
																											// 已加密的凭证的信息
		return info;// 返回给调用者(SecurityManager)
	}

	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		return null;
	}

}
