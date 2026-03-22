package com.roblox.client.signup.multiscreen.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b f7183a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final a f7184b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f7185c;

    public enum a {
        PHONE,
        EMAIL,
        UNKNOWN
    }

    public enum b {
        SIGN_UP_SUCCESS,
        SIGN_UP_EMPTY_REQUEST,
        SIGN_UP_VOUCHER_INVALID,
        SIGN_UP_BIRTHDAY_INVALID,
        SIGN_UP_PASSWORD_INVALID,
        SIGN_UP_INVALID_TOKEN,
        SIGN_UP_TOO_MANY_ACCOUNTS_LINKED_TO_EMAIL,
        SIGN_UP_PHONE_NUMBER_ALREADY_LINKED,
        SIGN_UP_VOUCHER_EXPIRED,
        SIGN_UP_FLOOD_CHECKED,
        SIGN_UP_FAILED_TO_CREATE_USER,
        SIGN_UP_FAILED_TO_CREATE_USERNAME,
        CHALLENGE_SUCCESS,
        CHALLENGE_FLOOD_CHECKED,
        CHALLENGE_EMPTY_REQUEST,
        CHALLENGE_INVALID_DELIVERY_METHOD,
        CHALLENGE_INVALID_DELIVERY_TARGET,
        CHALLENGE_INVALID_EMAIL_ADDRESS,
        CHALLENGE_INVALID_PHONE_NUMBER,
        CHALLENGE_INVALID_TOKEN,
        CHALLENGE_TOO_MANY_ACCOUNTS_LINKED_TO_EMAIL,
        CHALLENGE_PHONE_NUMBER_ALREADY_LINKED,
        VERIFY_SUCCESS,
        VERIFY_FLOOD_CHECKED,
        VERIFY_EMPTY_REQUEST,
        VERIFY_INVALID_CHALLENGE,
        VERIFY_INVALID_CODE,
        VERIFY_INVALID_TOKEN,
        VERIFY_CHALLENGE_EXPIRED,
        VERIFY_UNKNOWN_ERROR,
        UNKNOWN_ERROR,
        CAPTCHA,
        CAPTCHA_BEFORE_CODE_VERIFICATION
    }

    public i(b bVar, String str, a aVar) {
        this.f7183a = bVar;
        this.f7185c = str;
        this.f7184b = aVar;
    }

    public String toString() {
        return "Message: " + this.f7183a + ". credentialValue: " + this.f7185c;
    }
}
