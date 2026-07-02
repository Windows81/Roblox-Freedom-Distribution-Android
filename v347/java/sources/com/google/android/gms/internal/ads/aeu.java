package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class aeu extends IOException {
    aeu(int i, int i2) {
        super(new StringBuilder(108).append("CodedOutputStream was writing to a flat byte array and ran out of space (pos ").append(i).append(" limit ").append(i2).append(").").toString());
    }
}
