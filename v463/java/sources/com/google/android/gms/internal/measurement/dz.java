package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class dz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f4237a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f4238b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f4239c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ dx f4240d;

    dz(dx dxVar, int i, boolean z, boolean z2) {
        this.f4240d = dxVar;
        this.f4237a = i;
        this.f4238b = z;
        this.f4239c = z2;
    }

    public final void a(String str) {
        this.f4240d.a(this.f4237a, this.f4238b, this.f4239c, str, null, null, null);
    }

    public final void a(String str, Object obj) {
        this.f4240d.a(this.f4237a, this.f4238b, this.f4239c, str, obj, null, null);
    }

    public final void a(String str, Object obj, Object obj2) {
        this.f4240d.a(this.f4237a, this.f4238b, this.f4239c, str, obj, obj2, null);
    }

    public final void a(String str, Object obj, Object obj2, Object obj3) {
        this.f4240d.a(this.f4237a, this.f4238b, this.f4239c, str, obj, obj2, obj3);
    }
}
