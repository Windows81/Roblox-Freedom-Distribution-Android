package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public class aoq extends com.google.android.gms.ads.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f4352a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.google.android.gms.ads.a f4353b;

    public final void a(com.google.android.gms.ads.a aVar) {
        synchronized (this.f4352a) {
            this.f4353b = aVar;
        }
    }

    @Override // com.google.android.gms.ads.a
    public void onAdClosed() {
        synchronized (this.f4352a) {
            if (this.f4353b != null) {
                this.f4353b.onAdClosed();
            }
        }
    }

    @Override // com.google.android.gms.ads.a
    public void onAdFailedToLoad(int i) {
        synchronized (this.f4352a) {
            if (this.f4353b != null) {
                this.f4353b.onAdFailedToLoad(i);
            }
        }
    }

    @Override // com.google.android.gms.ads.a
    public void onAdLeftApplication() {
        synchronized (this.f4352a) {
            if (this.f4353b != null) {
                this.f4353b.onAdLeftApplication();
            }
        }
    }

    @Override // com.google.android.gms.ads.a
    public void onAdLoaded() {
        synchronized (this.f4352a) {
            if (this.f4353b != null) {
                this.f4353b.onAdLoaded();
            }
        }
    }

    @Override // com.google.android.gms.ads.a
    public void onAdOpened() {
        synchronized (this.f4352a) {
            if (this.f4353b != null) {
                this.f4353b.onAdOpened();
            }
        }
    }
}
