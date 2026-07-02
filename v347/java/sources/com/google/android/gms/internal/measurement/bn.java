package com.google.android.gms.internal.measurement;

import android.content.SharedPreferences;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public final class bn extends p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SharedPreferences f5923a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f5924b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f5925c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final bp f5926d;

    protected bn(r rVar) {
        super(rVar);
        this.f5925c = -1L;
        this.f5926d = new bp(this, "monitoring", az.D.a().longValue());
    }

    @Override // com.google.android.gms.internal.measurement.p
    protected final void a() {
        this.f5923a = j().getSharedPreferences("com.google.android.gms.analytics.prefs", 0);
    }

    public final void a(String str) {
        com.google.android.gms.analytics.s.d();
        y();
        SharedPreferences.Editor editorEdit = this.f5923a.edit();
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
        if (this.f5924b == 0) {
            long j = this.f5923a.getLong("first_run", 0L);
            if (j != 0) {
                this.f5924b = j;
            } else {
                long jA = i().a();
                SharedPreferences.Editor editorEdit = this.f5923a.edit();
                editorEdit.putLong("first_run", jA);
                if (!editorEdit.commit()) {
                    e("Failed to commit first run time");
                }
                this.f5924b = jA;
            }
        }
        return this.f5924b;
    }

    public final bw c() {
        return new bw(i(), b());
    }

    public final long d() {
        com.google.android.gms.analytics.s.d();
        y();
        if (this.f5925c == -1) {
            this.f5925c = this.f5923a.getLong("last_dispatch", 0L);
        }
        return this.f5925c;
    }

    public final void e() {
        com.google.android.gms.analytics.s.d();
        y();
        long jA = i().a();
        SharedPreferences.Editor editorEdit = this.f5923a.edit();
        editorEdit.putLong("last_dispatch", jA);
        editorEdit.apply();
        this.f5925c = jA;
    }

    public final String f() {
        com.google.android.gms.analytics.s.d();
        y();
        String string = this.f5923a.getString("installation_campaign", null);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        return string;
    }

    public final bp g() {
        return this.f5926d;
    }
}
