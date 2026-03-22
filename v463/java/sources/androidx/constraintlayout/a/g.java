package androidx.constraintlayout.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class g {

    interface a<T> {
        T a();

        void a(T[] tArr, int i);

        boolean a(T t);
    }

    static class b<T> implements a<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Object[] f1189a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f1190b;

        b(int i) {
            if (i <= 0) {
                throw new IllegalArgumentException("The max pool size must be > 0");
            }
            this.f1189a = new Object[i];
        }

        @Override // androidx.constraintlayout.a.g.a
        public T a() {
            int i = this.f1190b;
            if (i <= 0) {
                return null;
            }
            int i2 = i - 1;
            Object[] objArr = this.f1189a;
            T t = (T) objArr[i2];
            objArr[i2] = null;
            this.f1190b = i - 1;
            return t;
        }

        @Override // androidx.constraintlayout.a.g.a
        public boolean a(T t) {
            int i = this.f1190b;
            Object[] objArr = this.f1189a;
            if (i >= objArr.length) {
                return false;
            }
            objArr[i] = t;
            this.f1190b = i + 1;
            return true;
        }

        @Override // androidx.constraintlayout.a.g.a
        public void a(T[] tArr, int i) {
            if (i > tArr.length) {
                i = tArr.length;
            }
            for (int i2 = 0; i2 < i; i2++) {
                T t = tArr[i2];
                int i3 = this.f1190b;
                Object[] objArr = this.f1189a;
                if (i3 < objArr.length) {
                    objArr[i3] = t;
                    this.f1190b = i3 + 1;
                }
            }
        }
    }
}
