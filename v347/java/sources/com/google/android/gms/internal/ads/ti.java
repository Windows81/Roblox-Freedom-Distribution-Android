package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.wz;

/* JADX INFO: loaded from: classes.dex */
public final class ti {
    public static wz a(String str, String str2, String str3, int i, boolean z) {
        wz.a aVarA = wz.f().a(str2);
        String strValueOf = String.valueOf(str3);
        return aVarA.b(strValueOf.length() != 0 ? "type.googleapis.com/google.crypto.tink.".concat(strValueOf) : new String("type.googleapis.com/google.crypto.tink.")).a(0).a(true).c(str).c();
    }
}
