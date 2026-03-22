package androidx.b.a;

import android.content.res.ColorStateList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class c implements f {
    @Override // androidx.b.a.f
    public void a() {
    }

    c() {
    }

    @Override // androidx.b.a.f
    public void a(e eVar, float f) {
        j(eVar).a(f);
    }

    @Override // androidx.b.a.f
    public void b(e eVar, float f) {
        j(eVar).a(f, eVar.b(), eVar.c());
        f(eVar);
    }

    @Override // androidx.b.a.f
    public float a(e eVar) {
        return j(eVar).a();
    }

    @Override // androidx.b.a.f
    public float b(e eVar) {
        return d(eVar) * 2.0f;
    }

    @Override // androidx.b.a.f
    public float c(e eVar) {
        return d(eVar) * 2.0f;
    }

    @Override // androidx.b.a.f
    public float d(e eVar) {
        return j(eVar).b();
    }

    @Override // androidx.b.a.f
    public void c(e eVar, float f) {
        eVar.d().setElevation(f);
    }

    @Override // androidx.b.a.f
    public float e(e eVar) {
        return eVar.d().getElevation();
    }

    public void f(e eVar) {
        if (!eVar.b()) {
            eVar.a(0, 0, 0, 0);
            return;
        }
        float fA = a(eVar);
        float fD = d(eVar);
        int iCeil = (int) Math.ceil(h.b(fA, fD, eVar.c()));
        int iCeil2 = (int) Math.ceil(h.a(fA, fD, eVar.c()));
        eVar.a(iCeil, iCeil2, iCeil, iCeil2);
    }

    @Override // androidx.b.a.f
    public void g(e eVar) {
        b(eVar, a(eVar));
    }

    @Override // androidx.b.a.f
    public void h(e eVar) {
        b(eVar, a(eVar));
    }

    @Override // androidx.b.a.f
    public void a(e eVar, ColorStateList colorStateList) {
        j(eVar).a(colorStateList);
    }

    @Override // androidx.b.a.f
    public ColorStateList i(e eVar) {
        return j(eVar).c();
    }

    private g j(e eVar) {
        return (g) eVar.a();
    }
}
