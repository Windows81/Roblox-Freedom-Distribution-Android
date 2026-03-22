package android.support.v4.g;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class j<F, S> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final F f956a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final S f957b;

    public j(F f, S s) {
        this.f956a = f;
        this.f957b = s;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        return a(jVar.f956a, this.f956a) && a(jVar.f957b, this.f957b);
    }

    private static boolean a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public int hashCode() {
        return (this.f956a == null ? 0 : this.f956a.hashCode()) ^ (this.f957b != null ? this.f957b.hashCode() : 0);
    }

    public String toString() {
        return "Pair{" + String.valueOf(this.f956a) + " " + String.valueOf(this.f957b) + "}";
    }
}
