package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.LinkedList;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
@ParametersAreNonnullByDefault
final class ayb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinkedList<ayc> f4603a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private zzjj f4604b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f4605c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f4606d;
    private boolean e;

    ayb(zzjj zzjjVar, String str, int i) {
        com.google.android.gms.common.internal.w.a(zzjjVar);
        com.google.android.gms.common.internal.w.a(str);
        this.f4603a = new LinkedList<>();
        this.f4604b = zzjjVar;
        this.f4605c = str;
        this.f4606d = i;
    }

    final ayc a(zzjj zzjjVar) {
        if (zzjjVar != null) {
            this.f4604b = zzjjVar;
        }
        return this.f4603a.remove();
    }

    final zzjj a() {
        return this.f4604b;
    }

    final void a(awu awuVar, zzjj zzjjVar) {
        this.f4603a.add(new ayc(this, awuVar, zzjjVar));
    }

    final boolean a(awu awuVar) {
        ayc aycVar = new ayc(this, awuVar);
        this.f4603a.add(aycVar);
        return aycVar.a();
    }

    final int b() {
        return this.f4606d;
    }

    final String c() {
        return this.f4605c;
    }

    final int d() {
        return this.f4603a.size();
    }

    final int e() {
        int i = 0;
        Iterator<ayc> it = this.f4603a.iterator();
        while (true) {
            int i2 = i;
            if (!it.hasNext()) {
                return i2;
            }
            i = it.next().e ? i2 + 1 : i2;
        }
    }

    final int f() {
        int i = 0;
        Iterator<ayc> it = this.f4603a.iterator();
        while (true) {
            int i2 = i;
            if (!it.hasNext()) {
                return i2;
            }
            i = it.next().a() ? i2 + 1 : i2;
        }
    }

    final void g() {
        this.e = true;
    }

    final boolean h() {
        return this.e;
    }
}
