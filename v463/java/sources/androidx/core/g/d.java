package androidx.core.g;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class d {

    public interface a<T> {
        T a();

        boolean a(T t);
    }

    public static class b<T> implements a<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Object[] f1424a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f1425b;

        public b(int i) {
            if (i <= 0) {
                throw new IllegalArgumentException("The max pool size must be > 0");
            }
            this.f1424a = new Object[i];
        }

        @Override // androidx.core.g.d.a
        public T a() {
            int i = this.f1425b;
            if (i <= 0) {
                return null;
            }
            int i2 = i - 1;
            Object[] objArr = this.f1424a;
            T t = (T) objArr[i2];
            objArr[i2] = null;
            this.f1425b = i - 1;
            return t;
        }

        @Override // androidx.core.g.d.a
        public boolean a(T t) {
            if (b(t)) {
                throw new IllegalStateException("Already in the pool!");
            }
            int i = this.f1425b;
            Object[] objArr = this.f1424a;
            if (i >= objArr.length) {
                return false;
            }
            objArr[i] = t;
            this.f1425b = i + 1;
            return true;
        }

        private boolean b(T t) {
            for (int i = 0; i < this.f1425b; i++) {
                if (this.f1424a[i] == t) {
                    return true;
                }
            }
            return false;
        }
    }

    public static class c<T> extends b<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Object f1426a;

        public c(int i) {
            super(i);
            this.f1426a = new Object();
        }

        @Override // androidx.core.g.d.b, androidx.core.g.d.a
        public T a() {
            T t;
            synchronized (this.f1426a) {
                t = (T) super.a();
            }
            return t;
        }

        @Override // androidx.core.g.d.b, androidx.core.g.d.a
        public boolean a(T t) {
            boolean zA;
            synchronized (this.f1426a) {
                zA = super.a(t);
            }
            return zA;
        }
    }
}
