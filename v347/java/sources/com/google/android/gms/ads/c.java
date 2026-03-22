package com.google.android.gms.ads;

import android.location.Location;
import android.os.Bundle;
import com.google.ads.AdRequest;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.internal.ads.aqj;
import com.google.android.gms.internal.ads.aqk;
import java.util.Date;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final aqj f2949a;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final aqk f2950a = new aqk();

        public a() {
            this.f2950a.b(AdRequest.TEST_EMULATOR);
        }

        public final a a(int i) {
            this.f2950a.a(i);
            return this;
        }

        public final a a(Location location) {
            this.f2950a.a(location);
            return this;
        }

        public final a a(Class<? extends com.google.android.gms.ads.mediation.b> cls, Bundle bundle) {
            this.f2950a.a(cls, bundle);
            if (cls.equals(AdMobAdapter.class) && bundle.getBoolean("_emulatorLiveAds")) {
                this.f2950a.c(AdRequest.TEST_EMULATOR);
            }
            return this;
        }

        public final a a(String str) {
            this.f2950a.a(str);
            return this;
        }

        public final a a(Date date) {
            this.f2950a.a(date);
            return this;
        }

        public final a a(boolean z) {
            this.f2950a.a(z);
            return this;
        }

        public final c a() {
            return new c(this);
        }

        public final a b(String str) {
            this.f2950a.b(str);
            return this;
        }

        public final a b(boolean z) {
            this.f2950a.b(z);
            return this;
        }
    }

    private c(a aVar) {
        this.f2949a = new aqj(aVar.f2950a);
    }

    public final aqj a() {
        return this.f2949a;
    }
}
