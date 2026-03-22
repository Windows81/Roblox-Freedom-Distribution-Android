package com.google.android.gms.ads.mediation;

import android.os.Bundle;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public interface b {

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f3215a;

        public final Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putInt("capabilities", this.f3215a);
            return bundle;
        }

        public final a a(int i) {
            this.f3215a = 1;
            return this;
        }
    }

    void onDestroy();

    void onPause();

    void onResume();
}
