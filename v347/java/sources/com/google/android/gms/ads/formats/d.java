package com.google.android.gms.ads.formats;

import com.google.android.gms.internal.ads.cm;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f2964a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f2965b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f2966c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f2967d;
    private final com.google.android.gms.ads.k e;

    public static final class a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private com.google.android.gms.ads.k f2971d;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f2968a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f2969b = -1;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f2970c = false;
        private int e = 1;

        public final a a(int i) {
            this.f2969b = i;
            return this;
        }

        public final a a(com.google.android.gms.ads.k kVar) {
            this.f2971d = kVar;
            return this;
        }

        public final a a(boolean z) {
            this.f2968a = z;
            return this;
        }

        public final d a() {
            return new d(this);
        }

        public final a b(int i) {
            this.e = i;
            return this;
        }

        public final a b(boolean z) {
            this.f2970c = z;
            return this;
        }
    }

    private d(a aVar) {
        this.f2964a = aVar.f2968a;
        this.f2965b = aVar.f2969b;
        this.f2966c = aVar.f2970c;
        this.f2967d = aVar.e;
        this.e = aVar.f2971d;
    }

    public final boolean a() {
        return this.f2964a;
    }

    public final int b() {
        return this.f2965b;
    }

    public final boolean c() {
        return this.f2966c;
    }

    public final int d() {
        return this.f2967d;
    }

    public final com.google.android.gms.ads.k e() {
        return this.e;
    }
}
