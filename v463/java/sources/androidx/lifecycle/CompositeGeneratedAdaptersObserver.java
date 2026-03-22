package androidx.lifecycle;

import androidx.lifecycle.g;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class CompositeGeneratedAdaptersObserver implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e[] f2093a;

    CompositeGeneratedAdaptersObserver(e[] eVarArr) {
        this.f2093a = eVarArr;
    }

    @Override // androidx.lifecycle.f
    public void a(j jVar, g.a aVar) {
        o oVar = new o();
        for (e eVar : this.f2093a) {
            eVar.a(jVar, aVar, false, oVar);
        }
        for (e eVar2 : this.f2093a) {
            eVar2.a(jVar, aVar, true, oVar);
        }
    }
}
