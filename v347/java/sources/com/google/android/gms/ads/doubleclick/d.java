package com.google.android.gms.ads.doubleclick;

import com.google.android.gms.internal.ads.aqj;
import com.google.android.gms.internal.ads.aqk;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final aqj f2958a;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final aqk f2959a = new aqk();

        public final a a(String str, String str2) {
            this.f2959a.a(str, str2);
            return this;
        }

        public final a a(boolean z) {
            this.f2959a.a(z);
            return this;
        }

        public final d a() {
            return new d(this);
        }
    }

    private d(a aVar) {
        this.f2958a = new aqj(aVar.f2959a);
    }

    public final aqj a() {
        return this.f2958a;
    }
}
