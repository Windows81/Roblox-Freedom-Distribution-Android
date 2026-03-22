package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.a;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class ag extends ak {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ArrayList<a.f> f3486a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ aa f3487b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ag(aa aaVar, ArrayList<a.f> arrayList) {
        super(aaVar, null);
        this.f3487b = aaVar;
        this.f3486a = arrayList;
    }

    @Override // com.google.android.gms.common.api.internal.ak
    public final void a() {
        this.f3487b.f3472a.f3514d.f3496c = this.f3487b.i();
        ArrayList<a.f> arrayList = this.f3486a;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            a.f fVar = arrayList.get(i);
            i++;
            fVar.a(this.f3487b.o, this.f3487b.f3472a.f3514d.f3496c);
        }
    }
}
