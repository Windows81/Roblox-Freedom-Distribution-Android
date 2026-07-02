package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class aeh extends IllegalArgumentException {
    aeh(int i, int i2) {
        super(new StringBuilder(54).append("Unpaired surrogate at index ").append(i).append(" of ").append(i2).toString());
    }
}
