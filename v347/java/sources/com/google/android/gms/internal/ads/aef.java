package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
abstract class aef {
    aef() {
    }

    abstract int a(int i, byte[] bArr, int i2, int i3);

    abstract int a(CharSequence charSequence, byte[] bArr, int i, int i2);

    final boolean a(byte[] bArr, int i, int i2) {
        return a(0, bArr, i, i2) == 0;
    }
}
