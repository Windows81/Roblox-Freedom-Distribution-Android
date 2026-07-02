package com.google.android.gms.internal.ads;

import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
final class kc implements Comparator<byte[]> {
    kc() {
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(byte[] bArr, byte[] bArr2) {
        return bArr.length - bArr2.length;
    }
}
