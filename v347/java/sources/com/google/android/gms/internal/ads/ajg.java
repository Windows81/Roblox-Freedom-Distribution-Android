package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class ajg {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f4068a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final JSONObject f4069b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f4070c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f4071d;
    private final boolean e;
    private final boolean f;

    public ajg(String str, zzang zzangVar, String str2, JSONObject jSONObject, boolean z, boolean z2) {
        this.f4071d = zzangVar.f5784a;
        this.f4069b = jSONObject;
        this.f4070c = str;
        this.f4068a = str2;
        this.e = z;
        this.f = z2;
    }

    public final String a() {
        return this.f4068a;
    }

    public final String b() {
        return this.f4071d;
    }

    public final JSONObject c() {
        return this.f4069b;
    }

    public final String d() {
        return this.f4070c;
    }

    public final boolean e() {
        return this.e;
    }

    public final boolean f() {
        return this.f;
    }
}
