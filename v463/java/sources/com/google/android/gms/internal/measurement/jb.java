package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class jb extends f<jb> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static volatile jb[] f4599e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f4600c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f4601d = null;

    public jb() {
        this.f4308a = null;
        this.f4670b = -1;
    }

    public static jb[] e() {
        if (f4599e == null) {
            synchronized (k.f4653b) {
                if (f4599e == null) {
                    f4599e = new jb[0];
                }
            }
        }
        return f4599e;
    }

    @Override // com.google.android.gms.internal.measurement.f, com.google.android.gms.internal.measurement.m
    protected final int a() {
        int iA = super.a();
        String str = this.f4600c;
        if (str != null) {
            iA += d.b(1, str);
        }
        String str2 = this.f4601d;
        return str2 != null ? iA + d.b(2, str2) : iA;
    }

    @Override // com.google.android.gms.internal.measurement.m
    public final /* synthetic */ m a(c cVar) throws IOException {
        while (true) {
            int iA = cVar.a();
            if (iA == 0) {
                return this;
            }
            if (iA == 10) {
                this.f4600c = cVar.c();
            } else if (iA == 18) {
                this.f4601d = cVar.c();
            } else if (!super.a(cVar, iA)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.f, com.google.android.gms.internal.measurement.m
    public final void a(d dVar) throws IOException {
        String str = this.f4600c;
        if (str != null) {
            dVar.a(1, str);
        }
        String str2 = this.f4601d;
        if (str2 != null) {
            dVar.a(2, str2);
        }
        super.a(dVar);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof jb)) {
            return false;
        }
        jb jbVar = (jb) obj;
        String str = this.f4600c;
        if (str == null) {
            if (jbVar.f4600c != null) {
                return false;
            }
        } else if (!str.equals(jbVar.f4600c)) {
            return false;
        }
        String str2 = this.f4601d;
        if (str2 == null) {
            if (jbVar.f4601d != null) {
                return false;
            }
        } else if (!str2.equals(jbVar.f4601d)) {
            return false;
        }
        return (this.f4308a == null || this.f4308a.b()) ? jbVar.f4308a == null || jbVar.f4308a.b() : this.f4308a.equals(jbVar.f4308a);
    }

    public final int hashCode() {
        int iHashCode = (getClass().getName().hashCode() + 527) * 31;
        String str = this.f4600c;
        int iHashCode2 = 0;
        int iHashCode3 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f4601d;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        if (this.f4308a != null && !this.f4308a.b()) {
            iHashCode2 = this.f4308a.hashCode();
        }
        return iHashCode4 + iHashCode2;
    }
}
