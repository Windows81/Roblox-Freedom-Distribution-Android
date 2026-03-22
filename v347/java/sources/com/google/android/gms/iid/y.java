package com.google.android.gms.iid;

import android.util.Base64;
import java.security.KeyPair;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final KeyPair f3681a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f3682b;

    y(KeyPair keyPair, long j) {
        this.f3681a = keyPair;
        this.f3682b = j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String b() {
        return Base64.encodeToString(this.f3681a.getPublic().getEncoded(), 11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String c() {
        return Base64.encodeToString(this.f3681a.getPrivate().getEncoded(), 11);
    }

    final KeyPair a() {
        return this.f3681a;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof y)) {
            return false;
        }
        y yVar = (y) obj;
        return this.f3682b == yVar.f3682b && this.f3681a.getPublic().equals(yVar.f3681a.getPublic()) && this.f3681a.getPrivate().equals(yVar.f3681a.getPrivate());
    }

    public final int hashCode() {
        return com.google.android.gms.common.internal.v.a(this.f3681a.getPublic(), this.f3681a.getPrivate(), Long.valueOf(this.f3682b));
    }
}
