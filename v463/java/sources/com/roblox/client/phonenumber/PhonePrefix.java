package com.roblox.client.phonenumber;

import com.google.gson.a.c;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class PhonePrefix {

    @c(a = "code")
    public final String countryCode;

    @c(a = "name")
    public final String countryName;

    @c(a = "localizedName")
    public final String localizedCountryName;
    public final String prefix;
    private static final PhonePrefix EMPTY_PREFIX = new PhonePrefix("", "", "", "");
    private static final PhonePrefix DEFAULT_PHONE_PREFIX = new PhonePrefix("United States", "US", "1", "United States");

    public PhonePrefix(String str, String str2, String str3, String str4) {
        this.countryName = str;
        this.countryCode = str2;
        this.prefix = str3;
        this.localizedCountryName = str4;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        PhonePrefix phonePrefix = (PhonePrefix) obj;
        return this.countryCode.equals(phonePrefix.countryCode) && this.countryName.equals(phonePrefix.countryName) && this.prefix.equals(phonePrefix.prefix) && this.localizedCountryName.equals(phonePrefix.localizedCountryName);
    }

    public String toString() {
        return "Country: " + this.countryCode + ". Prefix: " + this.prefix;
    }

    public static PhonePrefix emptyPrefix() {
        return EMPTY_PREFIX;
    }

    public static PhonePrefix getDefaultPhonePrefix() {
        return DEFAULT_PHONE_PREFIX;
    }
}
