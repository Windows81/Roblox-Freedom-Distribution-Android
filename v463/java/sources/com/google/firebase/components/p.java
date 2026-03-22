package com.google.firebase.components;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class p<T> implements com.google.firebase.b.a<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f5164a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile Object f5165b = f5164a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile com.google.firebase.b.a<T> f5166c;

    p(final d<T> dVar, final b bVar) {
        this.f5166c = new com.google.firebase.b.a(dVar, bVar) { // from class: com.google.firebase.components.q

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final d f5167a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final b f5168b;

            {
                this.f5167a = dVar;
                this.f5168b = bVar;
            }

            @Override // com.google.firebase.b.a
            public final Object a() {
                return this.f5167a.a(this.f5168b);
            }
        };
    }

    @Override // com.google.firebase.b.a
    public final T a() {
        T tA = (T) this.f5165b;
        if (tA == f5164a) {
            synchronized (this) {
                tA = (T) this.f5165b;
                if (tA == f5164a) {
                    tA = this.f5166c.a();
                    this.f5165b = tA;
                    this.f5166c = null;
                }
            }
        }
        return tA;
    }
}
