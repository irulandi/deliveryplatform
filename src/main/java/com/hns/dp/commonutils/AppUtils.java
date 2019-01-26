package com.hns.dp.commonutils;

import javax.servlet.http.HttpSession;

import com.hns.dp.beans.UserAccount;

public class AppUtils {
	public static void SaveLoginUserInSession(HttpSession session, UserAccount userAccount) {
		session.setAttribute("loginUser", userAccount);
	}
}
