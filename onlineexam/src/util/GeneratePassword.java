package util;

import org.apache.commons.lang.RandomStringUtils;

public class GeneratePassword {
		public static String randomPasswordIs()
		{
			    return RandomStringUtils.randomAlphanumeric(8);
		
		}
}
