package a.a.a.a.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f11a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f12b;

    public d(Object obj) {
        this.f12b = System.identityHashCode(obj);
        this.f11a = obj;
    }

    public int hashCode() {
        return this.f12b;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.f12b == dVar.f12b && this.f11a == dVar.f11a;
    }
}
