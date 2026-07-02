package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zb {
    public static boolean a() {
        try {
            Class.forName("android.app.Application", false, null);
            return true;
        } catch (Exception e) {
            return false;
        }
    }
}
