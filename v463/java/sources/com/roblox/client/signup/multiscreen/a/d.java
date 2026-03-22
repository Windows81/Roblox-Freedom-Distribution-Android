package com.roblox.client.signup.multiscreen.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f7153a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final a f7154b;

    public enum a {
        EMPTY_PASSWORD,
        EQUAL_TO_USERNAME,
        TOO_SHORT,
        UNKNOWN,
        SUCCESS,
        REQUIREMENTS_NOT_SATISFIED,
        NOT_ALLOWED,
        TOO_SIMPLE,
        INVALID_RESPONSE,
        INVALID_CHARS,
        EMPTY_USERNAME
    }

    private d(String str, a aVar) {
        this.f7153a = str;
        this.f7154b = aVar;
    }

    public static d a(String str, a aVar) {
        return new d(str, aVar);
    }

    public static d b(String str, a aVar) {
        return new d(str, aVar);
    }

    public String toString() {
        return "Value: " + this.f7153a + ". Message: " + this.f7154b + ".";
    }
}
