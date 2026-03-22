package android.support.v4.g;

import java.util.LinkedHashMap;
import java.util.Locale;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class g<K, V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinkedHashMap<K, V> f938a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f939b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f940c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f941d;
    private int e;
    private int f;
    private int g;
    private int h;

    public g(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        this.f940c = i;
        this.f938a = new LinkedHashMap<>(0, 0.75f, true);
    }

    public final V a(K k) {
        V vPut;
        if (k == null) {
            throw new NullPointerException("key == null");
        }
        synchronized (this) {
            V v = this.f938a.get(k);
            if (v != null) {
                this.g++;
                return v;
            }
            this.h++;
            V vB = b(k);
            if (vB == null) {
                return null;
            }
            synchronized (this) {
                this.e++;
                vPut = this.f938a.put(k, vB);
                if (vPut != null) {
                    this.f938a.put(k, vPut);
                } else {
                    this.f939b += c(k, vB);
                }
            }
            if (vPut != null) {
                a(false, k, vB, vPut);
                return vPut;
            }
            a(this.f940c);
            return vB;
        }
    }

    public final V a(K k, V v) {
        V vPut;
        if (k == null || v == null) {
            throw new NullPointerException("key == null || value == null");
        }
        synchronized (this) {
            this.f941d++;
            this.f939b += c(k, v);
            vPut = this.f938a.put(k, v);
            if (vPut != null) {
                this.f939b -= c(k, vPut);
            }
        }
        if (vPut != null) {
            a(false, k, vPut, v);
        }
        a(this.f940c);
        return vPut;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0031, code lost:
    
        throw new java.lang.IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(int r5) {
        /*
            r4 = this;
        L0:
            monitor-enter(r4)
            int r0 = r4.f939b     // Catch: java.lang.Throwable -> L32
            if (r0 < 0) goto L11
            java.util.LinkedHashMap<K, V> r0 = r4.f938a     // Catch: java.lang.Throwable -> L32
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L32
            if (r0 == 0) goto L35
            int r0 = r4.f939b     // Catch: java.lang.Throwable -> L32
            if (r0 == 0) goto L35
        L11:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L32
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L32
            r1.<init>()     // Catch: java.lang.Throwable -> L32
            java.lang.Class r2 = r4.getClass()     // Catch: java.lang.Throwable -> L32
            java.lang.String r2 = r2.getName()     // Catch: java.lang.Throwable -> L32
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: java.lang.Throwable -> L32
            java.lang.String r2 = ".sizeOf() is reporting inconsistent results!"
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: java.lang.Throwable -> L32
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L32
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L32
            throw r0     // Catch: java.lang.Throwable -> L32
        L32:
            r0 = move-exception
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L32
            throw r0
        L35:
            int r0 = r4.f939b     // Catch: java.lang.Throwable -> L32
            if (r0 <= r5) goto L41
            java.util.LinkedHashMap<K, V> r0 = r4.f938a     // Catch: java.lang.Throwable -> L32
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L32
            if (r0 == 0) goto L43
        L41:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L32
            return
        L43:
            java.util.LinkedHashMap<K, V> r0 = r4.f938a     // Catch: java.lang.Throwable -> L32
            java.util.Set r0 = r0.entrySet()     // Catch: java.lang.Throwable -> L32
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> L32
            java.lang.Object r0 = r0.next()     // Catch: java.lang.Throwable -> L32
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0     // Catch: java.lang.Throwable -> L32
            java.lang.Object r1 = r0.getKey()     // Catch: java.lang.Throwable -> L32
            java.lang.Object r0 = r0.getValue()     // Catch: java.lang.Throwable -> L32
            java.util.LinkedHashMap<K, V> r2 = r4.f938a     // Catch: java.lang.Throwable -> L32
            r2.remove(r1)     // Catch: java.lang.Throwable -> L32
            int r2 = r4.f939b     // Catch: java.lang.Throwable -> L32
            int r3 = r4.c(r1, r0)     // Catch: java.lang.Throwable -> L32
            int r2 = r2 - r3
            r4.f939b = r2     // Catch: java.lang.Throwable -> L32
            int r2 = r4.f     // Catch: java.lang.Throwable -> L32
            int r2 = r2 + 1
            r4.f = r2     // Catch: java.lang.Throwable -> L32
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L32
            r2 = 1
            r3 = 0
            r4.a(r2, r1, r0, r3)
            goto L0
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.g.g.a(int):void");
    }

    protected void a(boolean z, K k, V v, V v2) {
    }

    protected V b(K k) {
        return null;
    }

    private int c(K k, V v) {
        int iB = b(k, v);
        if (iB < 0) {
            throw new IllegalStateException("Negative size: " + k + "=" + v);
        }
        return iB;
    }

    protected int b(K k, V v) {
        return 1;
    }

    public final synchronized String toString() {
        String str;
        synchronized (this) {
            int i = this.g + this.h;
            str = String.format(Locale.US, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", Integer.valueOf(this.f940c), Integer.valueOf(this.g), Integer.valueOf(this.h), Integer.valueOf(i != 0 ? (this.g * 100) / i : 0));
        }
        return str;
    }
}
