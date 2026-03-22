package androidx.constraintlayout.a.a;

import androidx.constraintlayout.a.a.f;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected f f1113a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected f f1114b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected f f1115c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected f f1116d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected f f1117e;
    protected f f;
    protected f g;
    protected ArrayList<f> h;
    protected int i;
    protected int j;
    protected float k = 0.0f;
    protected boolean l;
    protected boolean m;
    protected boolean n;
    private int o;
    private boolean p;
    private boolean q;

    public d(f fVar, int i, boolean z) {
        this.p = false;
        this.f1113a = fVar;
        this.o = i;
        this.p = z;
    }

    private static boolean a(f fVar, int i) {
        return fVar.l() != 8 && fVar.C[i] == f.a.MATCH_CONSTRAINT && (fVar.g[i] == 0 || fVar.g[i] == 3);
    }

    private void b() {
        int i = this.o * 2;
        f fVar = this.f1113a;
        boolean z = false;
        f fVar2 = fVar;
        boolean z2 = false;
        while (!z2) {
            this.i++;
            f fVar3 = null;
            fVar.af[this.o] = null;
            fVar.ae[this.o] = null;
            if (fVar.l() != 8) {
                if (this.f1114b == null) {
                    this.f1114b = fVar;
                }
                this.f1116d = fVar;
                if (fVar.C[this.o] == f.a.MATCH_CONSTRAINT && (fVar.g[this.o] == 0 || fVar.g[this.o] == 3 || fVar.g[this.o] == 2)) {
                    this.j++;
                    float f = fVar.ad[this.o];
                    if (f > 0.0f) {
                        this.k += fVar.ad[this.o];
                    }
                    if (a(fVar, this.o)) {
                        if (f < 0.0f) {
                            this.l = true;
                        } else {
                            this.m = true;
                        }
                        if (this.h == null) {
                            this.h = new ArrayList<>();
                        }
                        this.h.add(fVar);
                    }
                    if (this.f == null) {
                        this.f = fVar;
                    }
                    f fVar4 = this.g;
                    if (fVar4 != null) {
                        fVar4.ae[this.o] = fVar;
                    }
                    this.g = fVar;
                }
            }
            if (fVar2 != fVar) {
                fVar2.af[this.o] = fVar;
            }
            e eVar = fVar.A[i + 1].f1120c;
            if (eVar != null) {
                f fVar5 = eVar.f1118a;
                if (fVar5.A[i].f1120c != null && fVar5.A[i].f1120c.f1118a == fVar) {
                    fVar3 = fVar5;
                }
            }
            if (fVar3 == null) {
                fVar3 = fVar;
                z2 = true;
            }
            fVar2 = fVar;
            fVar = fVar3;
        }
        this.f1115c = fVar;
        if (this.o == 0 && this.p) {
            this.f1117e = fVar;
        } else {
            this.f1117e = this.f1113a;
        }
        if (this.m && this.l) {
            z = true;
        }
        this.n = z;
    }

    public void a() {
        if (!this.q) {
            b();
        }
        this.q = true;
    }
}
