package androidx.h;

import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class h implements androidx.i.a.d, androidx.i.a.e {
    static final TreeMap<Integer, h> g = new TreeMap<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final long[] f1858a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final double[] f1859b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final String[] f1860c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final byte[][] f1861d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final int f1862e;
    int f;
    private volatile String h;
    private final int[] i;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public static h a(String str, int i) {
        synchronized (g) {
            Map.Entry<Integer, h> entryCeilingEntry = g.ceilingEntry(Integer.valueOf(i));
            if (entryCeilingEntry != null) {
                g.remove(entryCeilingEntry.getKey());
                h value = entryCeilingEntry.getValue();
                value.b(str, i);
                return value;
            }
            h hVar = new h(i);
            hVar.b(str, i);
            return hVar;
        }
    }

    private h(int i) {
        this.f1862e = i;
        int i2 = i + 1;
        this.i = new int[i2];
        this.f1858a = new long[i2];
        this.f1859b = new double[i2];
        this.f1860c = new String[i2];
        this.f1861d = new byte[i2][];
    }

    void b(String str, int i) {
        this.h = str;
        this.f = i;
    }

    public void a() {
        synchronized (g) {
            g.put(Integer.valueOf(this.f1862e), this);
            c();
        }
    }

    private static void c() {
        if (g.size() <= 15) {
            return;
        }
        int size = g.size() - 10;
        Iterator<Integer> it = g.descendingKeySet().iterator();
        while (true) {
            int i = size - 1;
            if (size <= 0) {
                return;
            }
            it.next();
            it.remove();
            size = i;
        }
    }

    @Override // androidx.i.a.e
    public String b() {
        return this.h;
    }

    @Override // androidx.i.a.e
    public void a(androidx.i.a.d dVar) {
        for (int i = 1; i <= this.f; i++) {
            int i2 = this.i[i];
            if (i2 == 1) {
                dVar.a(i);
            } else if (i2 == 2) {
                dVar.a(i, this.f1858a[i]);
            } else if (i2 == 3) {
                dVar.a(i, this.f1859b[i]);
            } else if (i2 == 4) {
                dVar.a(i, this.f1860c[i]);
            } else if (i2 == 5) {
                dVar.a(i, this.f1861d[i]);
            }
        }
    }

    @Override // androidx.i.a.d
    public void a(int i) {
        this.i[i] = 1;
    }

    @Override // androidx.i.a.d
    public void a(int i, long j) {
        this.i[i] = 2;
        this.f1858a[i] = j;
    }

    @Override // androidx.i.a.d
    public void a(int i, double d2) {
        this.i[i] = 3;
        this.f1859b[i] = d2;
    }

    @Override // androidx.i.a.d
    public void a(int i, String str) {
        this.i[i] = 4;
        this.f1860c[i] = str;
    }

    @Override // androidx.i.a.d
    public void a(int i, byte[] bArr) {
        this.i[i] = 5;
        this.f1861d[i] = bArr;
    }
}
