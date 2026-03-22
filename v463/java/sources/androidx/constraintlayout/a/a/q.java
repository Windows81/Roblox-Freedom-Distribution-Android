package androidx.constraintlayout.a.a;

import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class q extends f {
    protected ArrayList<f> az = new ArrayList<>();

    @Override // androidx.constraintlayout.a.a.f
    public void f() {
        this.az.clear();
        super.f();
    }

    public void b(f fVar) {
        this.az.add(fVar);
        if (fVar.k() != null) {
            ((q) fVar.k()).c(fVar);
        }
        fVar.a((f) this);
    }

    public void c(f fVar) {
        this.az.remove(fVar);
        fVar.a((f) null);
    }

    public g T() {
        f fVarK = k();
        g gVar = this instanceof g ? (g) this : null;
        while (fVarK != null) {
            f fVarK2 = fVarK.k();
            if (fVarK instanceof g) {
                gVar = (g) fVarK;
            }
            fVarK = fVarK2;
        }
        return gVar;
    }

    @Override // androidx.constraintlayout.a.a.f
    public void b(int i, int i2) {
        super.b(i, i2);
        int size = this.az.size();
        for (int i3 = 0; i3 < size; i3++) {
            this.az.get(i3).b(v(), w());
        }
    }

    @Override // androidx.constraintlayout.a.a.f
    public void D() {
        super.D();
        ArrayList<f> arrayList = this.az;
        if (arrayList == null) {
            return;
        }
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            f fVar = this.az.get(i);
            fVar.b(t(), u());
            if (!(fVar instanceof g)) {
                fVar.D();
            }
        }
    }

    public void N() {
        D();
        ArrayList<f> arrayList = this.az;
        if (arrayList == null) {
            return;
        }
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            f fVar = this.az.get(i);
            if (fVar instanceof q) {
                ((q) fVar).N();
            }
        }
    }

    @Override // androidx.constraintlayout.a.a.f
    public void a(androidx.constraintlayout.a.c cVar) {
        super.a(cVar);
        int size = this.az.size();
        for (int i = 0; i < size; i++) {
            this.az.get(i).a(cVar);
        }
    }

    public void U() {
        this.az.clear();
    }
}
