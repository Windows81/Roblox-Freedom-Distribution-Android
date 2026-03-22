package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.f;
import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class f<M extends f<M>> extends m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected i f4308a;

    @Override // com.google.android.gms.internal.measurement.m
    protected int a() {
        if (this.f4308a == null) {
            return 0;
        }
        int iA = 0;
        for (int i = 0; i < this.f4308a.a(); i++) {
            iA += this.f4308a.b(i).a();
        }
        return iA;
    }

    @Override // com.google.android.gms.internal.measurement.m
    public void a(d dVar) throws IOException {
        if (this.f4308a == null) {
            return;
        }
        for (int i = 0; i < this.f4308a.a(); i++) {
            this.f4308a.b(i).a(dVar);
        }
    }

    protected final boolean a(c cVar, int i) throws IOException {
        int i2 = cVar.i();
        if (!cVar.b(i)) {
            return false;
        }
        int i3 = i >>> 3;
        o oVar = new o(i, cVar.a(i2, cVar.i() - i2));
        j jVarA = null;
        i iVar = this.f4308a;
        if (iVar == null) {
            this.f4308a = new i();
        } else {
            jVarA = iVar.a(i3);
        }
        if (jVarA == null) {
            jVarA = new j();
            this.f4308a.a(i3, jVarA);
        }
        jVarA.a(oVar);
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.m
    /* JADX INFO: renamed from: b */
    public final /* synthetic */ m clone() throws CloneNotSupportedException {
        return (f) clone();
    }

    @Override // com.google.android.gms.internal.measurement.m
    public /* synthetic */ Object clone() throws CloneNotSupportedException {
        f fVar = (f) super.clone();
        k.a(this, fVar);
        return fVar;
    }
}
