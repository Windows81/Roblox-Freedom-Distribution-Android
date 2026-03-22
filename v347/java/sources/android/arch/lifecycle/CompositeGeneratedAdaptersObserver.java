package android.arch.lifecycle;

import android.arch.lifecycle.d;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class CompositeGeneratedAdaptersObserver implements GenericLifecycleObserver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c[] f115a;

    CompositeGeneratedAdaptersObserver(c[] cVarArr) {
        this.f115a = cVarArr;
    }

    @Override // android.arch.lifecycle.GenericLifecycleObserver
    public void a(g gVar, d.a aVar) {
        k kVar = new k();
        for (c cVar : this.f115a) {
            cVar.a(gVar, aVar, false, kVar);
        }
        for (c cVar2 : this.f115a) {
            cVar2.a(gVar, aVar, true, kVar);
        }
    }
}
