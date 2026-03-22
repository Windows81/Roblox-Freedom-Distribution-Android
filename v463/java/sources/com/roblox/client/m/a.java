package com.roblox.client.m;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected int f6591a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private T[] f6592b;

    public static class b extends a<Double> {
    }

    public static class e {
        public static int a() {
            return 4;
        }
    }

    /* JADX INFO: renamed from: com.roblox.client.m.a$a, reason: collision with other inner class name */
    public static class C0161a extends a<Boolean> {
        public C0161a(Boolean bool) {
            super(bool);
        }
    }

    public static class c extends a<Integer> {
        public c(Integer num) {
            super(num);
        }
    }

    public static class d extends a<Long> {
        public d(Long l) {
            super(l);
        }
    }

    public static class f extends a<String> {
        public f(String str) {
            super(str);
        }
    }

    private a(T t) {
        T[] tArr = (T[]) new Object[e.a()];
        this.f6592b = tArr;
        tArr[0] = t;
        this.f6591a = 0;
    }

    public T a() {
        return this.f6592b[this.f6591a];
    }

    public int b() {
        return this.f6591a;
    }

    public void a(T t, int i) {
        if (i == 0) {
            return;
        }
        this.f6592b[i] = t;
        int i2 = this.f6591a;
        if (i >= i2) {
            if (t == null) {
                b(i2);
            } else {
                this.f6591a = i;
            }
        }
    }

    private void b(int i) {
        while (i >= 0) {
            if (this.f6592b[i] != null) {
                this.f6591a = i;
                return;
            }
            i--;
        }
    }

    public void a(int i) {
        a(null, i);
    }
}
