package android.arch.b.b;

/* JADX INFO: loaded from: classes.dex */
public abstract class b<T> extends i {
    protected abstract void a(android.arch.b.a.f fVar, T t);

    public b(e eVar) {
        super(eVar);
    }

    public final void a(T t) {
        android.arch.b.a.f fVarC = c();
        try {
            a(fVarC, t);
            fVarC.b();
        } finally {
            a(fVarC);
        }
    }
}
