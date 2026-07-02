package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
@cm
final class aya {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object[] f4602a;

    aya(zzjj zzjjVar, String str, int i) {
        this.f4602a = com.google.android.gms.ads.internal.bm.a((String) aoo.f().a(aro.aV), zzjjVar, str, i, null);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof aya) {
            return Arrays.equals(this.f4602a, ((aya) obj).f4602a);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f4602a);
    }

    public final String toString() {
        String string = Arrays.toString(this.f4602a);
        return new StringBuilder(String.valueOf(string).length() + 24).append("[InterstitialAdPoolKey ").append(string).append("]").toString();
    }
}
