package in.co.rgr.app.common;

public class Validator {
	
	public static boolean required(String value) {
		boolean valid = false;
		if (value != null && value.length() > 0) {
			return true;
		}
		return valid;
	}

	public static boolean minLength(String value, int len) {
		boolean valid = false;
		if (value != null && value.length() >= len) {
			return true;
		}
		return valid;
	}

	public static boolean maxLength(String value, int len) {
		boolean valid = false;
		if (value != null && value.length() <= len) {
			return true;
		}
		return valid;
	}

	public static boolean validateLong(String value) {
		boolean valid = false;
		if (value != null) {
			try {
				Long l = Long.parseLong(value);
				valid = true;
			} catch (Exception e) {
			}
		}
		return valid;
	}

	public static boolean validateInt(String value) {
		boolean valid = false;
		if (value != null) {
			try {
				int i = Integer.parseInt(value);
				valid = true;
			} catch (Exception e) {
			}
		}
		return valid;
	}

	public static boolean validateString(String value) {
		boolean valid = false;
		if (value != null) {
			valid = value.trim().matches("^[A-Z][a-z]*");
		}
		return valid;
	}

	public static boolean validFirstCharUpper(String value) {
		return Character.isUpperCase(value.charAt(0));
	}

	public static boolean validateEmail(String email) {
		boolean valid = false;
		String pattern = "^[a-zA-Z][\\w\\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\\w\\.-]*[a-zA-Z0-9]\\.[a-zA-Z][a-zA-Z\\.]*[a-zA-Z]$";
		if (email != null) {
			valid = email.matches(pattern);
		}
		return valid;
	}
}
