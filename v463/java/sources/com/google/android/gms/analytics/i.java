package com.google.android.gms.analytics;

import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.common.internal.aa;
import com.google.android.gms.internal.measurement.ae;
import java.util.ListIterator;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class i extends r<i> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ae f3272b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f3273c;

    public i(ae aeVar) {
        super(aeVar.g(), aeVar.c());
        this.f3272b = aeVar;
    }

    @Override // com.google.android.gms.analytics.r
    protected final void a(o oVar) {
        com.google.android.gms.internal.measurement.q qVar = (com.google.android.gms.internal.measurement.q) oVar.b(com.google.android.gms.internal.measurement.q.class);
        if (TextUtils.isEmpty(qVar.b())) {
            qVar.b(this.f3272b.o().b());
        }
        if (this.f3273c && TextUtils.isEmpty(qVar.d())) {
            com.google.android.gms.internal.measurement.u uVarN = this.f3272b.n();
            qVar.d(uVarN.c());
            qVar.a(uVarN.b());
        }
    }

    public final void a(String str) {
        aa.a(str);
        Uri uriA = j.a(str);
        ListIterator<w> listIterator = this.f3286a.c().listIterator();
        while (listIterator.hasNext()) {
            if (uriA.equals(listIterator.next().a())) {
                listIterator.remove();
            }
        }
        this.f3286a.c().add(new j(this.f3272b, str));
    }

    public final void b(boolean z) {
        this.f3273c = z;
    }

    final ae g() {
        return this.f3272b;
    }

    @Override // com.google.android.gms.analytics.r
    public final o h() {
        o oVarA = this.f3286a.a();
        oVarA.a(this.f3272b.p().b());
        oVarA.a(this.f3272b.q().b());
        b(oVarA);
        return oVarA;
    }
}
