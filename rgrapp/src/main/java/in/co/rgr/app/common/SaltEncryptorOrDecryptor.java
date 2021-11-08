package in.co.rgr.app.common;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class SaltEncryptorOrDecryptor {
	public static String encrypt(String strToEncrypt) {
		final byte[] defaultBytes = strToEncrypt.getBytes();
		try {
			final MessageDigest md5MsgDigest = MessageDigest.getInstance("MD5");
			md5MsgDigest.reset();
			md5MsgDigest.update(defaultBytes);
			final byte messageDigest[] = md5MsgDigest.digest();
			final StringBuffer hexString = new StringBuffer();
			for (final byte element : messageDigest) {
				final String hex = Integer.toHexString(0xFF & element);
				if (hex.length() == 1) {
					hexString.append('0');
				}
				hexString.append(hex);
			}
			strToEncrypt = hexString + "";
		} catch (final NoSuchAlgorithmException nsae) {
			nsae.printStackTrace();
		}
		return strToEncrypt;
	}

//	public static String decrypt(String strToDecrypt, String secret) {
//	    try{
//	       
//	    }catch (Exception e) {System.out.println("Error while decrypting: " + e.toString()); }
//	    return null;
//	}	
//	

	public static void main(String[] args) { //
		// System.out.println(SaltEncryptorOrDecryptor.decrypt("e12f9b159e99b295ed77fb39ad4514ee",
		// "")); //
		System.out.println(SaltEncryptorOrDecryptor.encrypt("12345"));

		// System.out.println(new Date().getYear()+1900);/WEB-INF/vgc-servlet.xml
	}

}
