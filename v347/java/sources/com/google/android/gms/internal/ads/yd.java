package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class yd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final yt f5694a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final yt f5695b;

    public yd(byte[] bArr, byte[] bArr2) {
        this.f5694a = yt.a(bArr);
        this.f5695b = yt.a(bArr2);
    }

    public final byte[] a() {
        if (this.f5694a == null) {
            return null;
        }
        return this.f5694a.a();
    }

    public final byte[] b() {
        if (this.f5695b == null) {
            return null;
        }
        return this.f5695b.a();
    }
}
