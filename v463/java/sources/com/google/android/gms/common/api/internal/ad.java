package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.a;
import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class ad extends ak {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ aa f3481a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<a.f, ac> f3482b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ad(aa aaVar, Map<a.f, ac> map) {
        super(aaVar, null);
        this.f3481a = aaVar;
        this.f3482b = map;
    }

    @Override // com.google.android.gms.common.api.internal.ak
    public final void a() {
        com.google.android.gms.common.internal.p pVar = new com.google.android.gms.common.internal.p(this.f3481a.f3475d);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (a.f fVar : this.f3482b.keySet()) {
            if (!fVar.k() || this.f3482b.get(fVar).f3480c) {
                arrayList2.add(fVar);
            } else {
                arrayList.add(fVar);
            }
        }
        int iA = -1;
        int i = 0;
        if (!arrayList.isEmpty()) {
            ArrayList arrayList3 = arrayList;
            int size = arrayList3.size();
            while (i < size) {
                Object obj = arrayList3.get(i);
                i++;
                iA = pVar.a(this.f3481a.f3474c, (a.f) obj);
                if (iA != 0) {
                    break;
                }
            }
        } else {
            ArrayList arrayList4 = arrayList2;
            int size2 = arrayList4.size();
            while (i < size2) {
                Object obj2 = arrayList4.get(i);
                i++;
                iA = pVar.a(this.f3481a.f3474c, (a.f) obj2);
                if (iA == 0) {
                    break;
                }
            }
        }
        if (iA != 0) {
            this.f3481a.f3472a.a(new ae(this, this.f3481a, new ConnectionResult(iA, null)));
            return;
        }
        if (this.f3481a.m) {
            this.f3481a.k.o();
        }
        for (a.f fVar2 : this.f3482b.keySet()) {
            ac acVar = this.f3482b.get(fVar2);
            if (!fVar2.k() || pVar.a(this.f3481a.f3474c, fVar2) == 0) {
                fVar2.a(acVar);
            } else {
                this.f3481a.f3472a.a(new af(this, this.f3481a, acVar));
            }
        }
    }
}
