package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class amr {
    public static int a(int i) {
        if ((i < 0 || i > 1) && (i < 1000 || i > 1000)) {
            throw new IllegalArgumentException(new StringBuilder(43).append(i).append(" is not a valid enum EnumBoolean").toString());
        }
        return i;
    }
}
