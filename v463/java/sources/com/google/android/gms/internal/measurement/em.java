package com.google.android.gms.internal.measurement;

import android.content.SharedPreferences;
import android.util.Pair;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class em {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f4274a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f4275b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f4276c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f4277d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final /* synthetic */ ei f4278e;

    private em(ei eiVar, String str, long j) {
        this.f4278e = eiVar;
        com.google.android.gms.common.internal.aa.a(str);
        com.google.android.gms.common.internal.aa.b(j > 0);
        this.f4274a = String.valueOf(str).concat(":start");
        this.f4275b = String.valueOf(str).concat(":count");
        this.f4276c = String.valueOf(str).concat(":value");
        this.f4277d = j;
    }

    private final void b() {
        this.f4278e.c();
        long jA = this.f4278e.j().a();
        SharedPreferences.Editor editorEdit = this.f4278e.C().edit();
        editorEdit.remove(this.f4275b);
        editorEdit.remove(this.f4276c);
        editorEdit.putLong(this.f4274a, jA);
        editorEdit.apply();
    }

    private final long c() {
        return this.f4278e.C().getLong(this.f4274a, 0L);
    }

    public final Pair<String, Long> a() {
        long jAbs;
        this.f4278e.c();
        this.f4278e.c();
        long jC = c();
        if (jC == 0) {
            b();
            jAbs = 0;
        } else {
            jAbs = Math.abs(jC - this.f4278e.j().a());
        }
        long j = this.f4277d;
        if (jAbs < j) {
            return null;
        }
        if (jAbs > (j << 1)) {
            b();
            return null;
        }
        String string = this.f4278e.C().getString(this.f4276c, null);
        long j2 = this.f4278e.C().getLong(this.f4275b, 0L);
        b();
        return (string == null || j2 <= 0) ? ei.f4259a : new Pair<>(string, Long.valueOf(j2));
    }

    public final void a(String str, long j) {
        this.f4278e.c();
        if (c() == 0) {
            b();
        }
        if (str == null) {
            str = "";
        }
        long j2 = this.f4278e.C().getLong(this.f4275b, 0L);
        if (j2 <= 0) {
            SharedPreferences.Editor editorEdit = this.f4278e.C().edit();
            editorEdit.putString(this.f4276c, str);
            editorEdit.putLong(this.f4275b, 1L);
            editorEdit.apply();
            return;
        }
        long j3 = j2 + 1;
        boolean z = (this.f4278e.n().w().nextLong() & Long.MAX_VALUE) < Long.MAX_VALUE / j3;
        SharedPreferences.Editor editorEdit2 = this.f4278e.C().edit();
        if (z) {
            editorEdit2.putString(this.f4276c, str);
        }
        editorEdit2.putLong(this.f4275b, j3);
        editorEdit2.apply();
    }
}
