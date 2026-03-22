package android.arch.b.b;

import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class h implements android.arch.b.a.d, android.arch.b.a.e {
    static final TreeMap<Integer, h> g = new TreeMap<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final long[] f108a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final double[] f109b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final String[] f110c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final byte[][] f111d;
    final int e;
    int f;
    private volatile String h;
    private final int[] i;

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
        this.e = i;
        int i2 = i + 1;
        this.i = new int[i2];
        this.f108a = new long[i2];
        this.f109b = new double[i2];
        this.f110c = new String[i2];
        this.f111d = new byte[i2][];
    }

    void b(String str, int i) {
        this.h = str;
        this.f = i;
    }

    public void b() {
        synchronized (g) {
            g.put(Integer.valueOf(this.e), this);
            c();
        }
    }

    private static void c() {
        if (g.size() > 15) {
            int size = g.size() - 10;
            Iterator<Integer> it = g.descendingKeySet().iterator();
            while (true) {
                int i = size - 1;
                if (size > 0) {
                    it.next();
                    it.remove();
                    size = i;
                } else {
                    return;
                }
            }
        }
    }

    @Override // android.arch.b.a.e
    public String a() {
        return this.h;
    }

    @Override // android.arch.b.a.e
    public void a(android.arch.b.a.d dVar) {
        for (int i = 1; i <= this.f; i++) {
            switch (this.i[i]) {
                case 1:
                    dVar.a(i);
                    break;
                case 2:
                    dVar.a(i, this.f108a[i]);
                    break;
                case 3:
                    dVar.a(i, this.f109b[i]);
                    break;
                case 4:
                    dVar.a(i, this.f110c[i]);
                    break;
                case 5:
                    dVar.a(i, this.f111d[i]);
                    break;
            }
        }
    }

    @Override // android.arch.b.a.d
    public void a(int i) {
        this.i[i] = 1;
    }

    @Override // android.arch.b.a.d
    public void a(int i, long j) {
        this.i[i] = 2;
        this.f108a[i] = j;
    }

    @Override // android.arch.b.a.d
    public void a(int i, double d2) {
        this.i[i] = 3;
        this.f109b[i] = d2;
    }

    @Override // android.arch.b.a.d
    public void a(int i, String str) {
        this.i[i] = 4;
        this.f110c[i] = str;
    }

    @Override // android.arch.b.a.d
    public void a(int i, byte[] bArr) {
        this.i[i] = 5;
        this.f111d[i] = bArr;
    }

    @Override // java.lang.AutoCloseable
    public void close() throws Exception {
    }
}
