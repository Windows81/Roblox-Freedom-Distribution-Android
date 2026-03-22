package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class alr implements ac {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f4183a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f4184b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f4185c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float f4186d;

    public alr() {
        this(2500, 1, 1.0f);
    }

    private alr(int i, int i2, float f) {
        this.f4183a = 2500;
        this.f4185c = 1;
        this.f4186d = 1.0f;
    }

    @Override // com.google.android.gms.internal.ads.ac
    public final int a() {
        return this.f4183a;
    }

    @Override // com.google.android.gms.internal.ads.ac
    public final void a(df dfVar) throws df {
        this.f4184b++;
        this.f4183a = (int) (this.f4183a + (this.f4183a * this.f4186d));
        if (!(this.f4184b <= this.f4185c)) {
            throw dfVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.ac
    public final int b() {
        return this.f4184b;
    }
}
