package kr.or.ddit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kr.or.ddit.vo.UserInfoVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class LoginController {
	
	@Autowired
	PasswordEncoder passwordEncoder;
	/*
	 *	1.  
	 * @param userInfo
	 * @return
	 */
	@GetMapping("/login")
	public String login() {
		log.info("로그인 페이지");
		
		String pwd = "java";
		
		String encodedPwd = this.passwordEncoder.encode(pwd);
		log.info("encodedPwd : " + encodedPwd);
		//forwarding : /views/success.jsp
		return "login";
	}
	
	@GetMapping("/logout")
    public String logout() {    
        return "login";  
    }
}
