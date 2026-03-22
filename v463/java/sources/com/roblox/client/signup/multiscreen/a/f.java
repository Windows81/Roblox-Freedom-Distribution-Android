package com.roblox.client.signup.multiscreen.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final e f7163a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final a f7164b;

    public enum a {
        SUCCESS,
        SET_PHONE_PREFIX,
        EMPTY_PHONE_NUMBER,
        EMPTY_PREFIX,
        UPDATE_PHONE_NUMBER,
        INVALID_PHONE_NUMBER
    }

    private f(e eVar, a aVar) {
        this.f7163a = eVar;
        this.f7164b = aVar;
    }

    public static f a(e eVar) {
        return new f(eVar, a.SUCCESS);
    }

    public static f a(e eVar, a aVar) {
        return new f(eVar, aVar);
    }

    public String toString() {
        return "Phone: " + this.f7163a + ". Message: " + this.f7164b + ".";
    }
}
