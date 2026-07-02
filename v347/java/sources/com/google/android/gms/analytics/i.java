package com.google.android.gms.analytics;

import android.net.Uri;
import android.text.TextUtils;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes.dex */
public class i extends r<i> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.android.gms.internal.measurement.r f3256b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f3257c;

    public i(com.google.android.gms.internal.measurement.r rVar) {
        super(rVar.g(), rVar.c());
        this.f3256b = rVar;
    }

    @Override // com.google.android.gms.analytics.r
    protected final void a(o oVar) {
        com.google.android.gms.internal.measurement.d dVar = (com.google.android.gms.internal.measurement.d) oVar.b(com.google.android.gms.internal.measurement.d.class);
        if (TextUtils.isEmpty(dVar.b())) {
            dVar.b(this.f3256b.o().b());
        }
        if (this.f3257c && TextUtils.isEmpty(dVar.d())) {
            com.google.android.gms.internal.measurement.h hVarN = this.f3256b.n();
            dVar.d(hVarN.c());
            dVar.a(hVarN.b());
        }
    }

    public final void a(String str) {
        com.google.android.gms.common.internal.w.a(str);
        Uri uriA = j.a(str);
        ListIterator<w> listIterator = this.f3269a.c().listIterator();
        while (listIterator.hasNext()) {
            if (uriA.equals(listIterator.next().a())) {
                listIterator.remove();
            }
        }
        this.f3269a.c().add(new j(this.f3256b, str));
    }

    public final void b(boolean z) {
        this.f3257c = z;
    }

    final com.google.android.gms.internal.measurement.r g() {
        return this.f3256b;
    }

    @Override // com.google.android.gms.analytics.r
    public final o h() {
        o oVarA = this.f3269a.a();
        oVarA.a(this.f3256b.p().b());
        oVarA.a(this.f3256b.q().b());
        b(oVarA);
        return oVarA;
    }
}
