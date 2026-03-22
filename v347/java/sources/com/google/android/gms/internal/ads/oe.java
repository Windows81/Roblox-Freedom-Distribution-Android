package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class oe implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ String f5372a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ String f5373b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ oa f5374c;

    oe(oa oaVar, String str, String str2) {
        this.f5374c = oaVar;
        this.f5372a = str;
        this.f5373b = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f5374c.r != null) {
            this.f5374c.r.a(this.f5372a, this.f5373b);
        }
    }
}
