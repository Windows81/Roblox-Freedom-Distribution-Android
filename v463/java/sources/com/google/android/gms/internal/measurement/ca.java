package com.google.android.gms.internal.measurement;

import android.content.SharedPreferences;
import android.text.TextUtils;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class ca extends ac {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SharedPreferences f4123a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f4124b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f4125c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final cc f4126d;

    protected ca(ae aeVar) {
        super(aeVar);
        this.f4125c = -1L;
        this.f4126d = new cc(this, "monitoring", bm.D.a().longValue());
    }

    @Override // com.google.android.gms.internal.measurement.ac
    protected final void a() {
        this.f4123a = j().getSharedPreferences("com.google.android.gms.analytics.prefs", 0);
    }

    public final void a(String str) {
        com.google.android.gms.analytics.s.d();
        y();
        SharedPreferences.Editor editorEdit = this.f4123a.edit();
        if (TextUtils.isEmpty(str)) {
            editorEdit.remove("installation_campaign");
        } else {
            editorEdit.putString("installation_campaign", str);
        }
        if (editorEdit.commit()) {
            return;
        }
        e("Failed to commit campaign data");
    }

    public final long b() {
        com.google.android.gms.analytics.s.d();
        y();
        if (this.f4124b == 0) {
            long j = this.f4123a.getLong("first_run", 0L);
            if (j != 0) {
                this.f4124b = j;
            } else {
                long jA = i().a();
                SharedPreferences.Editor editorEdit = this.f4123a.edit();
                editorEdit.putLong("first_run", jA);
                if (!editorEdit.commit()) {
                    e("Failed to commit first run time");
                }
                this.f4124b = jA;
            }
        }
        return this.f4124b;
    }

    public final cj c() {
        return new cj(i(), b());
    }

    public final long d() {
        com.google.android.gms.analytics.s.d();
        y();
        if (this.f4125c == -1) {
            this.f4125c = this.f4123a.getLong("last_dispatch", 0L);
        }
        return this.f4125c;
    }

    public final void e() {
        com.google.android.gms.analytics.s.d();
        y();
        long jA = i().a();
        SharedPreferences.Editor editorEdit = this.f4123a.edit();
        editorEdit.putLong("last_dispatch", jA);
        editorEdit.apply();
        this.f4125c = jA;
    }

    public final String f() {
        com.google.android.gms.analytics.s.d();
        y();
        String string = this.f4123a.getString("installation_campaign", null);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        return string;
    }

    public final cc g() {
        return this.f4126d;
    }
}
