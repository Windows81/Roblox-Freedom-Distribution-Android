package com.google.android.gms.common;

import com.google.android.gms.common.g;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class x extends v {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f3897b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final g.a f3898c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f3899d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f3900e;

    private x(String str, g.a aVar, boolean z, boolean z2) {
        super(false, null, null);
        this.f3897b = str;
        this.f3898c = aVar;
        this.f3899d = z;
        this.f3900e = z2;
    }

    @Override // com.google.android.gms.common.v
    final String b() {
        String str = this.f3900e ? "debug cert rejected" : "not whitelisted";
        String str2 = this.f3897b;
        String strA = com.google.android.gms.common.util.j.a(com.google.android.gms.common.util.a.a("SHA-1").digest(this.f3898c.a()));
        boolean z = this.f3899d;
        StringBuilder sb = new StringBuilder(str.length() + 44 + String.valueOf(str2).length() + String.valueOf(strA).length());
        sb.append(str);
        sb.append(": pkg=");
        sb.append(str2);
        sb.append(", sha1=");
        sb.append(strA);
        sb.append(", atk=");
        sb.append(z);
        sb.append(", ver=12451009.false");
        return sb.toString();
    }
}
