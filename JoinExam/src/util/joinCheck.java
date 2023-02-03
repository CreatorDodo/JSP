package util;

import java.util.Random;

public class joinCheck {

	// 인증 번호 생성기
		public static String authCodeMaker() {
			String authCode = null;
			
			StringBuffer temp = new StringBuffer();
			Random rnd = new Random();
			for (int i = 0; i < 10; i++) {
				int rIndex = rnd.nextInt(3);
				switch (rIndex) {
				case 0:
					// a-z(아스키 코드)
					temp.append((char) ((int) (rnd.nextInt(26)) + 97));
					break;
				case 1:
					// A-Z(아스키 코드)
					temp.append((char) ((int) (rnd.nextInt(26)) + 65));
					break;
				case 2:
					// 0-9
					temp.append((rnd.nextInt(10)));
					break;
				}
			}
			
			authCode = temp.toString();
			System.out.println(authCode);
			
			return authCode;
		}
	}
	
	
	

