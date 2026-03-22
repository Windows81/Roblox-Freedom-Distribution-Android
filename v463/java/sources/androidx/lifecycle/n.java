package androidx.lifecycle;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class n<T> extends p<T> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private androidx.a.a.b.b<LiveData<?>, a<?>> f2135e = new androidx.a.a.b.b<>();

    public <S> void a(LiveData<S> liveData, q<? super S> qVar) {
        a<?> aVar = new a<>(liveData, qVar);
        a<?> aVarA = this.f2135e.a(liveData, aVar);
        if (aVarA != null && aVarA.f2137b != qVar) {
            throw new IllegalArgumentException("This source was already added with the different observer");
        }
        if (aVarA == null && e()) {
            aVar.a();
        }
    }

    public <S> void a(LiveData<S> liveData) {
        a<?> aVarB = this.f2135e.b(liveData);
        if (aVarB != null) {
            aVarB.b();
        }
    }

    @Override // androidx.lifecycle.LiveData
    protected void o_() {
        Iterator<Map.Entry<LiveData<?>, a<?>>> it = this.f2135e.iterator();
        while (it.hasNext()) {
            it.next().getValue().a();
        }
    }

    @Override // androidx.lifecycle.LiveData
    protected void d() {
        Iterator<Map.Entry<LiveData<?>, a<?>>> it = this.f2135e.iterator();
        while (it.hasNext()) {
            it.next().getValue().b();
        }
    }

    private static class a<V> implements q<V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final LiveData<V> f2136a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final q<? super V> f2137b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f2138c = -1;

        a(LiveData<V> liveData, q<? super V> qVar) {
            this.f2136a = liveData;
            this.f2137b = qVar;
        }

        void a() {
            this.f2136a.a(this);
        }

        void b() {
            this.f2136a.b(this);
        }

        @Override // androidx.lifecycle.q
        public void a(V v) {
            if (this.f2138c != this.f2136a.n_()) {
                this.f2138c = this.f2136a.n_();
                this.f2137b.a(v);
            }
        }
    }
}
