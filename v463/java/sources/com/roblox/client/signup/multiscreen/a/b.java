package com.roblox.client.signup.multiscreen.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f7142a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final a f7143b;

    public enum a {
        SUCCESS,
        EMPTY_EMAIL,
        INVALID_EMAIL_FORMAT
    }

    private b(String str, a aVar) {
        this.f7142a = str;
        this.f7143b = aVar;
    }

    public static b a(String str) {
        return new b(str, a.SUCCESS);
    }

    public static b a(String str, a aVar) {
        return new b(str, aVar);
    }

    public String toString() {
        return "Value: " + this.f7142a + ". Message: " + this.f7143b + ".";
    }
}
