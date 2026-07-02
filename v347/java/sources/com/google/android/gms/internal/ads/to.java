package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes.dex */
public final class to {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private xb f5577a;

    private to(xb xbVar) {
        this.f5577a = xbVar;
    }

    static final to a(xb xbVar) throws GeneralSecurityException {
        if (xbVar == null || xbVar.c() <= 0) {
            throw new GeneralSecurityException("empty keyset");
        }
        return new to(xbVar);
    }

    final xb a() {
        return this.f5577a;
    }

    public final String toString() {
        return tw.a(this.f5577a).toString();
    }
}
