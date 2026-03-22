package com.roblox.client.signup.multiscreen.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a f7170a;

    public enum a {
        SUCCESS,
        CAPTCHA,
        UNEXPECTED_ERROR,
        USERNAME_IN_USE,
        USERNAME_INVALID_CHARS,
        USERNAME_CONTAINS_SPACES,
        USERNAME_INVALID,
        PASSWORD_INVALID_REQUIREMENTS,
        SERVER_ERROR,
        PASSWORD_EQ_USERNAME,
        PASSWORD_TOO_SIMPLE,
        FLOOD_CHECKED
    }

    private g(a aVar) {
        this.f7170a = aVar;
    }

    public static g a() {
        return new g(a.SUCCESS);
    }

    public static g a(a aVar) {
        return new g(aVar);
    }

    public String toString() {
        return "Message: " + this.f7170a + ".";
    }
}
