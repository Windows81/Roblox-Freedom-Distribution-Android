package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.Provider;
import javax.crypto.Mac;

/* JADX INFO: loaded from: classes.dex */
public final class yq implements yk<Mac> {
    @Override // com.google.android.gms.internal.ads.yk
    public final /* synthetic */ Mac a(String str, Provider provider) throws GeneralSecurityException {
        return provider == null ? Mac.getInstance(str) : Mac.getInstance(str, provider);
    }
}
