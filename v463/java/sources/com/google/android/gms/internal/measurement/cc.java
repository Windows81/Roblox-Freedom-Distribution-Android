package com.google.android.gms.internal.measurement;

import android.content.SharedPreferences;
import android.util.Pair;
import java.util.UUID;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class cc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f4127a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f4128b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ ca f4129c;

    private cc(ca caVar, String str, long j) {
        this.f4129c = caVar;
        com.google.android.gms.common.internal.aa.a(str);
        com.google.android.gms.common.internal.aa.b(j > 0);
        this.f4127a = str;
        this.f4128b = j;
    }

    private final void b() {
        long jA = this.f4129c.i().a();
        SharedPreferences.Editor editorEdit = this.f4129c.f4123a.edit();
        editorEdit.remove(e());
        editorEdit.remove(f());
        editorEdit.putLong(d(), jA);
        editorEdit.commit();
    }

    private final long c() {
        return this.f4129c.f4123a.getLong(d(), 0L);
    }

    private final String d() {
        return String.valueOf(this.f4127a).concat(":start");
    }

    private final String e() {
        return String.valueOf(this.f4127a).concat(":count");
    }

    private final String f() {
        return String.valueOf(this.f4127a).concat(":value");
    }

    public final Pair<String, Long> a() {
        long jC = c();
        long jAbs = jC == 0 ? 0L : Math.abs(jC - this.f4129c.i().a());
        long j = this.f4128b;
        if (jAbs < j) {
            return null;
        }
        if (jAbs > (j << 1)) {
            b();
            return null;
        }
        String string = this.f4129c.f4123a.getString(f(), null);
        long j2 = this.f4129c.f4123a.getLong(e(), 0L);
        b();
        if (string == null || j2 <= 0) {
            return null;
        }
        return new Pair<>(string, Long.valueOf(j2));
    }

    public final void a(String str) {
        if (c() == 0) {
            b();
        }
        if (str == null) {
            str = "";
        }
        synchronized (this) {
            long j = this.f4129c.f4123a.getLong(e(), 0L);
            if (j <= 0) {
                SharedPreferences.Editor editorEdit = this.f4129c.f4123a.edit();
                editorEdit.putString(f(), str);
                editorEdit.putLong(e(), 1L);
                editorEdit.apply();
                return;
            }
            long j2 = j + 1;
            boolean z = (UUID.randomUUID().getLeastSignificantBits() & Long.MAX_VALUE) < Long.MAX_VALUE / j2;
            SharedPreferences.Editor editorEdit2 = this.f4129c.f4123a.edit();
            if (z) {
                editorEdit2.putString(f(), str);
            }
            editorEdit2.putLong(e(), j2);
            editorEdit2.apply();
        }
    }
}
