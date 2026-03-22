package androidx.h;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class b<T> extends i {
    protected abstract void a(androidx.i.a.f fVar, T t);

    public b(e eVar) {
        super(eVar);
    }

    public final void a(T t) {
        androidx.i.a.f fVarC = c();
        try {
            a(fVarC, t);
            fVarC.b();
        } finally {
            a(fVarC);
        }
    }
}
