package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class fr extends fx {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f5030a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f5031b;

    public fr(String str, int i) {
        this.f5030a = str;
        this.f5031b = i;
    }

    @Override // com.google.android.gms.internal.ads.fw
    public final String a() {
        return this.f5030a;
    }

    @Override // com.google.android.gms.internal.ads.fw
    public final int b() {
        return this.f5031b;
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof fr)) {
            return false;
        }
        fr frVar = (fr) obj;
        return com.google.android.gms.common.internal.v.a(this.f5030a, frVar.f5030a) && com.google.android.gms.common.internal.v.a(Integer.valueOf(this.f5031b), Integer.valueOf(frVar.f5031b));
    }
}
