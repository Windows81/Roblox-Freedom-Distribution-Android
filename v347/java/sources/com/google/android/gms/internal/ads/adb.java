package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class adb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f3820a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f3821b = 0;

    adb(String str) {
        this.f3820a = str;
    }

    final boolean a() {
        return this.f3821b < this.f3820a.length();
    }

    final int b() {
        String str = this.f3820a;
        int i = this.f3821b;
        this.f3821b = i + 1;
        char cCharAt = str.charAt(i);
        if (cCharAt < 55296) {
            return cCharAt;
        }
        int i2 = cCharAt & 8191;
        int i3 = 13;
        while (true) {
            String str2 = this.f3820a;
            int i4 = this.f3821b;
            this.f3821b = i4 + 1;
            char cCharAt2 = str2.charAt(i4);
            if (cCharAt2 < 55296) {
                return (cCharAt2 << i3) | i2;
            }
            i2 |= (cCharAt2 & 8191) << i3;
            i3 += 13;
        }
    }
}
