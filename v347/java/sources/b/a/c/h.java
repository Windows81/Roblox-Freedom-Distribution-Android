package b.a.c;

import android.support.v7.widget.RecyclerView;
import c.s;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import microsoft.aspnet.signalr.client.Constants;

/* JADX INFO: loaded from: classes.dex */
final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final f[] f1850a = {new f(f.e, ""), new f(f.f1843b, Constants.HTTP_GET), new f(f.f1843b, Constants.HTTP_POST), new f(f.f1844c, "/"), new f(f.f1844c, "/index.html"), new f(f.f1845d, "http"), new f(f.f1845d, "https"), new f(f.f1842a, "200"), new f(f.f1842a, "204"), new f(f.f1842a, "206"), new f(f.f1842a, "304"), new f(f.f1842a, "400"), new f(f.f1842a, "404"), new f(f.f1842a, "500"), new f("accept-charset", ""), new f("accept-encoding", "gzip, deflate"), new f("accept-language", ""), new f("accept-ranges", ""), new f("accept", ""), new f("access-control-allow-origin", ""), new f("age", ""), new f("allow", ""), new f("authorization", ""), new f("cache-control", ""), new f("content-disposition", ""), new f("content-encoding", ""), new f("content-language", ""), new f("content-length", ""), new f("content-location", ""), new f("content-range", ""), new f("content-type", ""), new f("cookie", ""), new f("date", ""), new f("etag", ""), new f("expect", ""), new f("expires", ""), new f("from", ""), new f("host", ""), new f("if-match", ""), new f("if-modified-since", ""), new f("if-none-match", ""), new f("if-range", ""), new f("if-unmodified-since", ""), new f("last-modified", ""), new f("link", ""), new f("location", ""), new f("max-forwards", ""), new f("proxy-authenticate", ""), new f("proxy-authorization", ""), new f("range", ""), new f("referer", ""), new f("refresh", ""), new f("retry-after", ""), new f("server", ""), new f("set-cookie", ""), new f("strict-transport-security", ""), new f("transfer-encoding", ""), new f("user-agent", ""), new f("vary", ""), new f("via", ""), new f("www-authenticate", "")};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Map<c.f, Integer> f1851b = c();

    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        f[] f1852a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f1853b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f1854c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f1855d;
        private final List<f> e;
        private final c.e f;
        private final int g;
        private int h;

        a(int i, s sVar) {
            this(i, i, sVar);
        }

        a(int i, int i2, s sVar) {
            this.e = new ArrayList();
            this.f1852a = new f[8];
            this.f1853b = this.f1852a.length - 1;
            this.f1854c = 0;
            this.f1855d = 0;
            this.g = i;
            this.h = i2;
            this.f = c.l.a(sVar);
        }

        private void d() {
            if (this.h < this.f1855d) {
                if (this.h == 0) {
                    e();
                } else {
                    a(this.f1855d - this.h);
                }
            }
        }

        private void e() {
            this.e.clear();
            Arrays.fill(this.f1852a, (Object) null);
            this.f1853b = this.f1852a.length - 1;
            this.f1854c = 0;
            this.f1855d = 0;
        }

        private int a(int i) {
            int i2 = 0;
            if (i > 0) {
                int length = this.f1852a.length;
                while (true) {
                    length--;
                    if (length < this.f1853b || i <= 0) {
                        break;
                    }
                    i -= this.f1852a[length].j;
                    this.f1855d -= this.f1852a[length].j;
                    this.f1854c--;
                    i2++;
                }
                System.arraycopy(this.f1852a, this.f1853b + 1, this.f1852a, this.f1853b + 1 + i2, this.f1854c);
                this.f1853b += i2;
            }
            return i2;
        }

        void a() throws IOException {
            while (!this.f.f()) {
                int i = this.f.i() & 255;
                if (i == 128) {
                    throw new IOException("index == 0");
                }
                if ((i & 128) == 128) {
                    b(a(i, 127) - 1);
                } else if (i == 64) {
                    g();
                } else if ((i & 64) == 64) {
                    e(a(i, 63) - 1);
                } else if ((i & 32) == 32) {
                    this.h = a(i, 31);
                    if (this.h < 0 || this.h > this.g) {
                        throw new IOException("Invalid dynamic table size update " + this.h);
                    }
                    d();
                } else if (i == 16 || i == 0) {
                    f();
                } else {
                    d(a(i, 15) - 1);
                }
            }
        }

        public List<f> b() {
            ArrayList arrayList = new ArrayList(this.e);
            this.e.clear();
            return arrayList;
        }

        private void b(int i) throws IOException {
            if (g(i)) {
                this.e.add(h.f1850a[i]);
                return;
            }
            int iC = c(i - h.f1850a.length);
            if (iC < 0 || iC > this.f1852a.length - 1) {
                throw new IOException("Header index too large " + (i + 1));
            }
            this.e.add(this.f1852a[iC]);
        }

        private int c(int i) {
            return this.f1853b + 1 + i;
        }

        private void d(int i) throws IOException {
            this.e.add(new f(f(i), c()));
        }

        private void f() throws IOException {
            this.e.add(new f(h.b(c()), c()));
        }

        private void e(int i) throws IOException {
            a(-1, new f(f(i), c()));
        }

        private void g() throws IOException {
            a(-1, new f(h.b(c()), c()));
        }

        private c.f f(int i) {
            return g(i) ? h.f1850a[i].h : this.f1852a[c(i - h.f1850a.length)].h;
        }

        private boolean g(int i) {
            return i >= 0 && i <= h.f1850a.length + (-1);
        }

        private void a(int i, f fVar) {
            this.e.add(fVar);
            int i2 = fVar.j;
            if (i != -1) {
                i2 -= this.f1852a[c(i)].j;
            }
            if (i2 > this.h) {
                e();
                return;
            }
            int iA = a((this.f1855d + i2) - this.h);
            if (i == -1) {
                if (this.f1854c + 1 > this.f1852a.length) {
                    f[] fVarArr = new f[this.f1852a.length * 2];
                    System.arraycopy(this.f1852a, 0, fVarArr, this.f1852a.length, this.f1852a.length);
                    this.f1853b = this.f1852a.length - 1;
                    this.f1852a = fVarArr;
                }
                int i3 = this.f1853b;
                this.f1853b = i3 - 1;
                this.f1852a[i3] = fVar;
                this.f1854c++;
            } else {
                this.f1852a[iA + c(i) + i] = fVar;
            }
            this.f1855d = i2 + this.f1855d;
        }

        private int h() throws IOException {
            return this.f.i() & 255;
        }

        int a(int i, int i2) throws IOException {
            int i3 = i & i2;
            if (i3 >= i2) {
                int i4 = 0;
                while (true) {
                    int iH = h();
                    if ((iH & 128) != 0) {
                        i2 += (iH & 127) << i4;
                        i4 += 7;
                    } else {
                        return (iH << i4) + i2;
                    }
                }
            } else {
                return i3;
            }
        }

        c.f c() throws IOException {
            int iH = h();
            boolean z = (iH & 128) == 128;
            int iA = a(iH, 127);
            if (z) {
                return c.f.a(j.a().a(this.f.g(iA)));
            }
            return this.f.d(iA);
        }
    }

    private static Map<c.f, Integer> c() {
        LinkedHashMap linkedHashMap = new LinkedHashMap(f1850a.length);
        for (int i = 0; i < f1850a.length; i++) {
            if (!linkedHashMap.containsKey(f1850a[i].h)) {
                linkedHashMap.put(f1850a[i].h, Integer.valueOf(i));
            }
        }
        return Collections.unmodifiableMap(linkedHashMap);
    }

    static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f1856a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f1857b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        f[] f1858c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f1859d;
        int e;
        int f;
        private final c.c g;
        private int h;
        private boolean i;

        b(c.c cVar) {
            this(RecyclerView.ItemAnimator.FLAG_APPEARED_IN_PRE_LAYOUT, cVar);
        }

        b(int i, c.c cVar) {
            this.h = Integer.MAX_VALUE;
            this.f1858c = new f[8];
            this.f1859d = this.f1858c.length - 1;
            this.e = 0;
            this.f = 0;
            this.f1856a = i;
            this.f1857b = i;
            this.g = cVar;
        }

        private void a() {
            Arrays.fill(this.f1858c, (Object) null);
            this.f1859d = this.f1858c.length - 1;
            this.e = 0;
            this.f = 0;
        }

        private int b(int i) {
            int i2 = 0;
            if (i > 0) {
                int length = this.f1858c.length;
                while (true) {
                    length--;
                    if (length < this.f1859d || i <= 0) {
                        break;
                    }
                    i -= this.f1858c[length].j;
                    this.f -= this.f1858c[length].j;
                    this.e--;
                    i2++;
                }
                System.arraycopy(this.f1858c, this.f1859d + 1, this.f1858c, this.f1859d + 1 + i2, this.e);
                Arrays.fill(this.f1858c, this.f1859d + 1, this.f1859d + 1 + i2, (Object) null);
                this.f1859d += i2;
            }
            return i2;
        }

        private void a(f fVar) {
            int i = fVar.j;
            if (i > this.f1857b) {
                a();
                return;
            }
            b((this.f + i) - this.f1857b);
            if (this.e + 1 > this.f1858c.length) {
                f[] fVarArr = new f[this.f1858c.length * 2];
                System.arraycopy(this.f1858c, 0, fVarArr, this.f1858c.length, this.f1858c.length);
                this.f1859d = this.f1858c.length - 1;
                this.f1858c = fVarArr;
            }
            int i2 = this.f1859d;
            this.f1859d = i2 - 1;
            this.f1858c[i2] = fVar;
            this.e++;
            this.f = i + this.f;
        }

        void a(List<f> list) throws IOException {
            if (this.i) {
                if (this.h < this.f1857b) {
                    a(this.h, 31, 32);
                }
                this.i = false;
                this.h = Integer.MAX_VALUE;
                a(this.f1857b, 31, 32);
            }
            int size = list.size();
            for (int i = 0; i < size; i++) {
                f fVar = list.get(i);
                c.f fVarD = fVar.h.d();
                c.f fVar2 = fVar.i;
                Integer num = (Integer) h.f1851b.get(fVarD);
                if (num != null) {
                    a(num.intValue() + 1, 15, 0);
                    a(fVar2);
                } else {
                    int iA = b.a.c.a(this.f1858c, fVar);
                    if (iA != -1) {
                        a((iA - this.f1859d) + h.f1850a.length, 127, 128);
                    } else {
                        this.g.i(64);
                        a(fVarD);
                        a(fVar2);
                        a(fVar);
                    }
                }
            }
        }

        void a(int i, int i2, int i3) {
            if (i < i2) {
                this.g.i(i3 | i);
                return;
            }
            this.g.i(i3 | i2);
            int i4 = i - i2;
            while (i4 >= 128) {
                this.g.i((i4 & 127) | 128);
                i4 >>>= 7;
            }
            this.g.i(i4);
        }

        void a(c.f fVar) throws IOException {
            a(fVar.e(), 127, 0);
            this.g.b(fVar);
        }

        void a(int i) {
            this.f1856a = i;
            int iMin = Math.min(i, 16384);
            if (this.f1857b != iMin) {
                if (iMin < this.f1857b) {
                    this.h = Math.min(this.h, iMin);
                }
                this.i = true;
                this.f1857b = iMin;
                b();
            }
        }

        private void b() {
            if (this.f1857b < this.f) {
                if (this.f1857b == 0) {
                    a();
                } else {
                    b(this.f - this.f1857b);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static c.f b(c.f fVar) throws IOException {
        int iE = fVar.e();
        for (int i = 0; i < iE; i++) {
            byte bA = fVar.a(i);
            if (bA >= 65 && bA <= 90) {
                throw new IOException("PROTOCOL_ERROR response malformed: mixed case name: " + fVar.a());
            }
        }
        return fVar;
    }
}
