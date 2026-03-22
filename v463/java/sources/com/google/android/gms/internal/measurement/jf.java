package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class jf extends f<jf> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public jg[] f4611c = jg.e();

    public jf() {
        this.f4308a = null;
        this.f4670b = -1;
    }

    @Override // com.google.android.gms.internal.measurement.f, com.google.android.gms.internal.measurement.m
    protected final int a() {
        int iA = super.a();
        jg[] jgVarArr = this.f4611c;
        if (jgVarArr != null && jgVarArr.length > 0) {
            int i = 0;
            while (true) {
                jg[] jgVarArr2 = this.f4611c;
                if (i >= jgVarArr2.length) {
                    break;
                }
                jg jgVar = jgVarArr2[i];
                if (jgVar != null) {
                    iA += d.b(1, jgVar);
                }
                i++;
            }
        }
        return iA;
    }

    @Override // com.google.android.gms.internal.measurement.m
    public final /* synthetic */ m a(c cVar) throws IOException {
        while (true) {
            int iA = cVar.a();
            if (iA == 0) {
                return this;
            }
            if (iA == 10) {
                int iA2 = p.a(cVar, 10);
                jg[] jgVarArr = this.f4611c;
                int length = jgVarArr == null ? 0 : jgVarArr.length;
                int i = iA2 + length;
                jg[] jgVarArr2 = new jg[i];
                if (length != 0) {
                    System.arraycopy(this.f4611c, 0, jgVarArr2, 0, length);
                }
                while (length < i - 1) {
                    jgVarArr2[length] = new jg();
                    cVar.a(jgVarArr2[length]);
                    cVar.a();
                    length++;
                }
                jgVarArr2[length] = new jg();
                cVar.a(jgVarArr2[length]);
                this.f4611c = jgVarArr2;
            } else if (!super.a(cVar, iA)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.f, com.google.android.gms.internal.measurement.m
    public final void a(d dVar) throws IOException {
        jg[] jgVarArr = this.f4611c;
        if (jgVarArr != null && jgVarArr.length > 0) {
            int i = 0;
            while (true) {
                jg[] jgVarArr2 = this.f4611c;
                if (i >= jgVarArr2.length) {
                    break;
                }
                jg jgVar = jgVarArr2[i];
                if (jgVar != null) {
                    dVar.a(1, jgVar);
                }
                i++;
            }
        }
        super.a(dVar);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof jf)) {
            return false;
        }
        jf jfVar = (jf) obj;
        if (k.a(this.f4611c, jfVar.f4611c)) {
            return (this.f4308a == null || this.f4308a.b()) ? jfVar.f4308a == null || jfVar.f4308a.b() : this.f4308a.equals(jfVar.f4308a);
        }
        return false;
    }

    public final int hashCode() {
        return ((((getClass().getName().hashCode() + 527) * 31) + k.a(this.f4611c)) * 31) + ((this.f4308a == null || this.f4308a.b()) ? 0 : this.f4308a.hashCode());
    }
}
