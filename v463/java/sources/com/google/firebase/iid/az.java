package com.google.firebase.iid;

import android.util.Base64;
import java.security.KeyPair;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class az {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final KeyPair f5244a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f5245b;

    az(KeyPair keyPair, long j) {
        this.f5244a = keyPair;
        this.f5245b = j;
    }

    final KeyPair a() {
        return this.f5244a;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof az)) {
            return false;
        }
        az azVar = (az) obj;
        return this.f5245b == azVar.f5245b && this.f5244a.getPublic().equals(azVar.f5244a.getPublic()) && this.f5244a.getPrivate().equals(azVar.f5244a.getPrivate());
    }

    public final int hashCode() {
        return com.google.android.gms.common.internal.y.a(this.f5244a.getPublic(), this.f5244a.getPrivate(), Long.valueOf(this.f5245b));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String b() {
        return Base64.encodeToString(this.f5244a.getPublic().getEncoded(), 11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String c() {
        return Base64.encodeToString(this.f5244a.getPrivate().getEncoded(), 11);
    }
}
