package com.a.a.a;

import android.os.Bundle;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Bundle f2880a;

    public d(Bundle bundle) {
        this.f2880a = bundle;
    }

    public boolean d() {
        return this.f2880a.getBoolean("google_play_instant");
    }

    public long c() {
        return this.f2880a.getLong("install_begin_timestamp_seconds");
    }

    public String a() {
        return this.f2880a.getString("install_referrer");
    }

    public long b() {
        return this.f2880a.getLong("referrer_click_timestamp_seconds");
    }
}
