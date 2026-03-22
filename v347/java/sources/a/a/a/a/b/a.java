package a.a.a.a.b;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class a<L, R> extends b<L, R> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final L f14a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final R f15b;

    public a(L l, R r) {
        this.f14a = l;
        this.f15b = r;
    }

    @Override // a.a.a.a.b.b
    public L a() {
        return this.f14a;
    }

    @Override // a.a.a.a.b.b
    public R b() {
        return this.f15b;
    }

    @Override // java.util.Map.Entry
    public R setValue(R r) {
        throw new UnsupportedOperationException();
    }
}
