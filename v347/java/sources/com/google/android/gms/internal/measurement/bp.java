package com.google.android.gms.internal.measurement;

import android.content.SharedPreferences;
import android.util.Pair;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class bp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f5927a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f5928b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ bn f5929c;

    private bp(bn bnVar, String str, long j) {
        this.f5929c = bnVar;
        com.google.android.gms.common.internal.w.a(str);
        com.google.android.gms.common.internal.w.b(j > 0);
        this.f5927a = str;
        this.f5928b = j;
    }

    private final void b() {
        long jA = this.f5929c.i().a();
        SharedPreferences.Editor editorEdit = this.f5929c.f5923a.edit();
        editorEdit.remove(e());
        editorEdit.remove(f());
        editorEdit.putLong(d(), jA);
        editorEdit.commit();
    }

    private final long c() {
        return this.f5929c.f5923a.getLong(d(), 0L);
    }

    private final String d() {
        return String.valueOf(this.f5927a).concat(":start");
    }

    private final String e() {
        return String.valueOf(this.f5927a).concat(":count");
    }

    private final String f() {
        return String.valueOf(this.f5927a).concat(":value");
    }

    public final Pair<String, Long> a() {
        long jC = c();
        long jAbs = jC == 0 ? 0L : Math.abs(jC - this.f5929c.i().a());
        if (jAbs < this.f5928b) {
            return null;
        }
        if (jAbs > (this.f5928b << 1)) {
            b();
            return null;
        }
        String string = this.f5929c.f5923a.getString(f(), null);
        long j = this.f5929c.f5923a.getLong(e(), 0L);
        b();
        if (string == null || j <= 0) {
            return null;
        }
        return new Pair<>(string, Long.valueOf(j));
    }

    public final void a(String str) {
        if (c() == 0) {
            b();
        }
        if (str == null) {
            str = "";
        }
        synchronized (this) {
            long j = this.f5929c.f5923a.getLong(e(), 0L);
            if (j <= 0) {
                SharedPreferences.Editor editorEdit = this.f5929c.f5923a.edit();
                editorEdit.putString(f(), str);
                editorEdit.putLong(e(), 1L);
                editorEdit.apply();
                return;
            }
            boolean z = (UUID.randomUUID().getLeastSignificantBits() & Long.MAX_VALUE) < Long.MAX_VALUE / (j + 1);
            SharedPreferences.Editor editorEdit2 = this.f5929c.f5923a.edit();
            if (z) {
                editorEdit2.putString(f(), str);
            }
            editorEdit2.putLong(e(), j + 1);
            editorEdit2.apply();
        }
    }
}
