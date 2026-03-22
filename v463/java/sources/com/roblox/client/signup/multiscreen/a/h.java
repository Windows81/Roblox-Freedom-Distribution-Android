package com.roblox.client.signup.multiscreen.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f7176a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final a f7177b;

    public enum a {
        UNKNOWN,
        SUCCESS,
        NOT_ALLOWED,
        EMPTY_USERNAME,
        TAKEN,
        INVALID_LENGTH,
        INVALID_START_CHAR,
        MORE_THAT_ONE_UNDERSCORE,
        CONTAINS_SPACES,
        NULL,
        PRIVATE_INFO,
        CHECKING,
        NEW_SUGGESTION,
        SUGGESTION_ERROR,
        INVALID_RESPONSE,
        INVALID_CHARS,
        USERNAME_NOT_CHANGED,
        USERNAME_CHANGED,
        BIRTHDAY_REQUIRED
    }

    private h(String str, a aVar) {
        this.f7176a = str;
        this.f7177b = aVar;
    }

    public static h a(String str) {
        return new h(str, a.SUCCESS);
    }

    public static h a(String str, a aVar) {
        return new h(str, aVar);
    }

    public String toString() {
        return "Value: " + this.f7176a + ". Message: " + this.f7177b + ".";
    }
}
