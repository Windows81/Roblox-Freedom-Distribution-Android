package com.roblox.client.signup.multiscreen.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f7148a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final a f7149b;

    public enum a {
        SUCCESS,
        FAILURE
    }

    private c(int i, a aVar) {
        this.f7148a = i;
        this.f7149b = aVar;
    }

    public static c a(int i) {
        return new c(i, a.SUCCESS);
    }

    public static c b(int i) {
        return new c(i, a.FAILURE);
    }

    public String toString() {
        return "Value: " + this.f7148a + ". Message: " + this.f7149b + ".";
    }
}
