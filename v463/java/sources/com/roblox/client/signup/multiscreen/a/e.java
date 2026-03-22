package com.roblox.client.signup.multiscreen.a;

import com.roblox.client.phonenumber.PhonePrefix;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final e f7160a = new e(PhonePrefix.emptyPrefix(), "");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f7161b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final PhonePrefix f7162c;

    public e(PhonePrefix phonePrefix, String str) {
        this.f7161b = str;
        this.f7162c = phonePrefix;
    }

    public String a() {
        return this.f7162c.prefix;
    }

    public String b() {
        return this.f7161b;
    }

    public String c() {
        return this.f7162c.countryCode;
    }

    public PhonePrefix d() {
        return this.f7162c;
    }

    public String e() {
        return "+" + a() + " " + b();
    }

    public String toString() {
        return this.f7162c + " " + this.f7161b;
    }
}
