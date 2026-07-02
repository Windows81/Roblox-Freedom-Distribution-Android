package com.google.android.gms.internal.ads;

import java.security.SecureRandom;

/* JADX INFO: loaded from: classes.dex */
final class yy extends ThreadLocal<SecureRandom> {
    yy() {
    }

    @Override // java.lang.ThreadLocal
    protected final /* synthetic */ SecureRandom initialValue() {
        return yx.b();
    }
}
