package com.google.android.gms.internal.ads;

import android.location.Location;
import com.google.android.gms.ads.formats.d;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class bcw implements com.google.android.gms.ads.mediation.i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Date f4798a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f4799b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Set<String> f4800c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f4801d;
    private final Location e;
    private final int f;
    private final zzpl g;
    private final boolean i;
    private final List<String> h = new ArrayList();
    private final Map<String, Boolean> j = new HashMap();

    public bcw(Date date, int i, Set<String> set, Location location, boolean z, int i2, zzpl zzplVar, List<String> list, boolean z2) {
        this.f4798a = date;
        this.f4799b = i;
        this.f4800c = set;
        this.e = location;
        this.f4801d = z;
        this.f = i2;
        this.g = zzplVar;
        this.i = z2;
        if (list != null) {
            for (String str : list) {
                if (str.startsWith("custom:")) {
                    String[] strArrSplit = str.split(":", 3);
                    if (strArrSplit.length == 3) {
                        if ("true".equals(strArrSplit[2])) {
                            this.j.put(strArrSplit[1], true);
                        } else if ("false".equals(strArrSplit[2])) {
                            this.j.put(strArrSplit[1], false);
                        }
                    }
                } else {
                    this.h.add(str);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.mediation.a
    public final Date a() {
        return this.f4798a;
    }

    @Override // com.google.android.gms.ads.mediation.a
    public final int b() {
        return this.f4799b;
    }

    @Override // com.google.android.gms.ads.mediation.a
    public final Set<String> c() {
        return this.f4800c;
    }

    @Override // com.google.android.gms.ads.mediation.a
    public final Location d() {
        return this.e;
    }

    @Override // com.google.android.gms.ads.mediation.a
    public final int e() {
        return this.f;
    }

    @Override // com.google.android.gms.ads.mediation.a
    public final boolean f() {
        return this.f4801d;
    }

    @Override // com.google.android.gms.ads.mediation.a
    public final boolean g() {
        return this.i;
    }

    @Override // com.google.android.gms.ads.mediation.i
    public final com.google.android.gms.ads.formats.d h() {
        if (this.g == null) {
            return null;
        }
        d.a aVarB = new d.a().a(this.g.f5813b).a(this.g.f5814c).b(this.g.f5815d);
        if (this.g.f5812a >= 2) {
            aVarB.b(this.g.e);
        }
        if (this.g.f5812a >= 3 && this.g.f != null) {
            aVarB.a(new com.google.android.gms.ads.k(this.g.f));
        }
        return aVarB.a();
    }

    @Override // com.google.android.gms.ads.mediation.i
    public final boolean i() {
        return this.h != null && (this.h.contains("2") || this.h.contains("6"));
    }

    @Override // com.google.android.gms.ads.mediation.i
    public final boolean j() {
        return this.h != null && this.h.contains("6");
    }

    @Override // com.google.android.gms.ads.mediation.i
    public final boolean k() {
        return this.h != null && (this.h.contains("1") || this.h.contains("6"));
    }

    @Override // com.google.android.gms.ads.mediation.i
    public final boolean l() {
        return this.h != null && this.h.contains("3");
    }

    @Override // com.google.android.gms.ads.mediation.i
    public final Map<String, Boolean> m() {
        return this.j;
    }
}
