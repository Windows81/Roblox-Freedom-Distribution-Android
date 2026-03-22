package android.support.v4.g;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class k {

    public interface a<T> {
        T a();

        boolean a(T t);
    }

    public static class b<T> implements a<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Object[] f958a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f959b;

        public b(int i) {
            if (i <= 0) {
                throw new IllegalArgumentException("The max pool size must be > 0");
            }
            this.f958a = new Object[i];
        }

        @Override // android.support.v4.g.k.a
        public T a() {
            if (this.f959b <= 0) {
                return null;
            }
            int i = this.f959b - 1;
            T t = (T) this.f958a[i];
            this.f958a[i] = null;
            this.f959b--;
            return t;
        }

        @Override // android.support.v4.g.k.a
        public boolean a(T t) {
            if (b(t)) {
                throw new IllegalStateException("Already in the pool!");
            }
            if (this.f959b >= this.f958a.length) {
                return false;
            }
            this.f958a[this.f959b] = t;
            this.f959b++;
            return true;
        }

        private boolean b(T t) {
            for (int i = 0; i < this.f959b; i++) {
                if (this.f958a[i] == t) {
                    return true;
                }
            }
            return false;
        }
    }

    public static class c<T> extends b<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Object f960a;

        public c(int i) {
            super(i);
            this.f960a = new Object();
        }

        @Override // android.support.v4.g.k.b, android.support.v4.g.k.a
        public T a() {
            T t;
            synchronized (this.f960a) {
                t = (T) super.a();
            }
            return t;
        }

        @Override // android.support.v4.g.k.b, android.support.v4.g.k.a
        public boolean a(T t) {
            boolean zA;
            synchronized (this.f960a) {
                zA = super.a(t);
            }
            return zA;
        }
    }
}
