package c.a.c;

import d.s;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final f[] f2570a = {new f(f.f2564e, ""), new f(f.f2561b, "GET"), new f(f.f2561b, "POST"), new f(f.f2562c, "/"), new f(f.f2562c, "/index.html"), new f(f.f2563d, "http"), new f(f.f2563d, "https"), new f(f.f2560a, "200"), new f(f.f2560a, "204"), new f(f.f2560a, "206"), new f(f.f2560a, "304"), new f(f.f2560a, "400"), new f(f.f2560a, "404"), new f(f.f2560a, "500"), new f("accept-charset", ""), new f("accept-encoding", "gzip, deflate"), new f("accept-language", ""), new f("accept-ranges", ""), new f("accept", ""), new f("access-control-allow-origin", ""), new f("age", ""), new f("allow", ""), new f("authorization", ""), new f("cache-control", ""), new f("content-disposition", ""), new f("content-encoding", ""), new f("content-language", ""), new f("content-length", ""), new f("content-location", ""), new f("content-range", ""), new f("content-type", ""), new f("cookie", ""), new f("date", ""), new f("etag", ""), new f("expect", ""), new f("expires", ""), new f("from", ""), new f("host", ""), new f("if-match", ""), new f("if-modified-since", ""), new f("if-none-match", ""), new f("if-range", ""), new f("if-unmodified-since", ""), new f("last-modified", ""), new f("link", ""), new f("location", ""), new f("max-forwards", ""), new f("proxy-authenticate", ""), new f("proxy-authorization", ""), new f("range", ""), new f("referer", ""), new f("refresh", ""), new f("retry-after", ""), new f("server", ""), new f("set-cookie", ""), new f("strict-transport-security", ""), new f("transfer-encoding", ""), new f("user-agent", ""), new f("vary", ""), new f("via", ""), new f("www-authenticate", "")};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Map<d.f, Integer> f2571b = c();

    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        f[] f2572a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f2573b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f2574c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f2575d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final List<f> f2576e;
        private final d.e f;
        private final int g;
        private int h;

        a(int i, s sVar) {
            this(i, i, sVar);
        }

        a(int i, int i2, s sVar) {
            this.f2576e = new ArrayList();
            this.f2572a = new f[8];
            this.f2573b = r0.length - 1;
            this.f2574c = 0;
            this.f2575d = 0;
            this.g = i;
            this.h = i2;
            this.f = d.l.a(sVar);
        }

        private void d() {
            int i = this.h;
            int i2 = this.f2575d;
            if (i < i2) {
                if (i == 0) {
                    e();
                } else {
                    a(i2 - i);
                }
            }
        }

        private void e() {
            this.f2576e.clear();
            Arrays.fill(this.f2572a, (Object) null);
            this.f2573b = this.f2572a.length - 1;
            this.f2574c = 0;
            this.f2575d = 0;
        }

        private int a(int i) {
            int i2 = 0;
            if (i > 0) {
                int length = this.f2572a.length;
                while (true) {
                    length--;
                    if (length < this.f2573b || i <= 0) {
                        break;
                    }
                    i -= this.f2572a[length].j;
                    this.f2575d -= this.f2572a[length].j;
                    this.f2574c--;
                    i2++;
                }
                f[] fVarArr = this.f2572a;
                int i3 = this.f2573b;
                System.arraycopy(fVarArr, i3 + 1, fVarArr, i3 + 1 + i2, this.f2574c);
                this.f2573b += i2;
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
                    int iA = a(i, 31);
                    this.h = iA;
                    if (iA < 0 || iA > this.g) {
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
            ArrayList arrayList = new ArrayList(this.f2576e);
            this.f2576e.clear();
            return arrayList;
        }

        private void b(int i) throws IOException {
            if (g(i)) {
                this.f2576e.add(h.f2570a[i]);
                return;
            }
            int iC = c(i - h.f2570a.length);
            if (iC >= 0) {
                f[] fVarArr = this.f2572a;
                if (iC <= fVarArr.length - 1) {
                    this.f2576e.add(fVarArr[iC]);
                    return;
                }
            }
            throw new IOException("Header index too large " + (i + 1));
        }

        private int c(int i) {
            return this.f2573b + 1 + i;
        }

        private void d(int i) throws IOException {
            this.f2576e.add(new f(f(i), c()));
        }

        private void f() throws IOException {
            this.f2576e.add(new f(h.b(c()), c()));
        }

        private void e(int i) throws IOException {
            a(-1, new f(f(i), c()));
        }

        private void g() throws IOException {
            a(-1, new f(h.b(c()), c()));
        }

        private d.f f(int i) {
            return g(i) ? h.f2570a[i].h : this.f2572a[c(i - h.f2570a.length)].h;
        }

        private boolean g(int i) {
            return i >= 0 && i <= h.f2570a.length - 1;
        }

        private void a(int i, f fVar) {
            this.f2576e.add(fVar);
            int i2 = fVar.j;
            if (i != -1) {
                i2 -= this.f2572a[c(i)].j;
            }
            int i3 = this.h;
            if (i2 > i3) {
                e();
                return;
            }
            int iA = a((this.f2575d + i2) - i3);
            if (i == -1) {
                int i4 = this.f2574c + 1;
                f[] fVarArr = this.f2572a;
                if (i4 > fVarArr.length) {
                    f[] fVarArr2 = new f[fVarArr.length * 2];
                    System.arraycopy(fVarArr, 0, fVarArr2, fVarArr.length, fVarArr.length);
                    this.f2573b = this.f2572a.length - 1;
                    this.f2572a = fVarArr2;
                }
                int i5 = this.f2573b;
                this.f2573b = i5 - 1;
                this.f2572a[i5] = fVar;
                this.f2574c++;
            } else {
                this.f2572a[i + c(i) + iA] = fVar;
            }
            this.f2575d += i2;
        }

        private int h() throws IOException {
            return this.f.i() & 255;
        }

        int a(int i, int i2) throws IOException {
            int i3 = i & i2;
            if (i3 < i2) {
                return i3;
            }
            int i4 = 0;
            while (true) {
                int iH = h();
                if ((iH & 128) == 0) {
                    return i2 + (iH << i4);
                }
                i2 += (iH & 127) << i4;
                i4 += 7;
            }
        }

        d.f c() throws IOException {
            int iH = h();
            boolean z = (iH & 128) == 128;
            int iA = a(iH, 127);
            if (z) {
                return d.f.a(j.a().a(this.f.g(iA)));
            }
            return this.f.d(iA);
        }
    }

    private static Map<d.f, Integer> c() {
        LinkedHashMap linkedHashMap = new LinkedHashMap(f2570a.length);
        int i = 0;
        while (true) {
            f[] fVarArr = f2570a;
            if (i < fVarArr.length) {
                if (!linkedHashMap.containsKey(fVarArr[i].h)) {
                    linkedHashMap.put(f2570a[i].h, Integer.valueOf(i));
                }
                i++;
            } else {
                return Collections.unmodifiableMap(linkedHashMap);
            }
        }
    }

    static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f2577a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f2578b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        f[] f2579c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f2580d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f2581e;
        int f;
        private final d.c g;
        private int h;
        private boolean i;

        b(d.c cVar) {
            this(4096, cVar);
        }

        b(int i, d.c cVar) {
            this.h = Integer.MAX_VALUE;
            this.f2579c = new f[8];
            this.f2580d = r0.length - 1;
            this.f2581e = 0;
            this.f = 0;
            this.f2577a = i;
            this.f2578b = i;
            this.g = cVar;
        }

        private void a() {
            Arrays.fill(this.f2579c, (Object) null);
            this.f2580d = this.f2579c.length - 1;
            this.f2581e = 0;
            this.f = 0;
        }

        private int b(int i) {
            int i2 = 0;
            if (i > 0) {
                int length = this.f2579c.length;
                while (true) {
                    length--;
                    if (length < this.f2580d || i <= 0) {
                        break;
                    }
                    i -= this.f2579c[length].j;
                    this.f -= this.f2579c[length].j;
                    this.f2581e--;
                    i2++;
                }
                f[] fVarArr = this.f2579c;
                int i3 = this.f2580d;
                System.arraycopy(fVarArr, i3 + 1, fVarArr, i3 + 1 + i2, this.f2581e);
                f[] fVarArr2 = this.f2579c;
                int i4 = this.f2580d;
                Arrays.fill(fVarArr2, i4 + 1, i4 + 1 + i2, (Object) null);
                this.f2580d += i2;
            }
            return i2;
        }

        private void a(f fVar) {
            int i = fVar.j;
            int i2 = this.f2578b;
            if (i > i2) {
                a();
                return;
            }
            b((this.f + i) - i2);
            int i3 = this.f2581e + 1;
            f[] fVarArr = this.f2579c;
            if (i3 > fVarArr.length) {
                f[] fVarArr2 = new f[fVarArr.length * 2];
                System.arraycopy(fVarArr, 0, fVarArr2, fVarArr.length, fVarArr.length);
                this.f2580d = this.f2579c.length - 1;
                this.f2579c = fVarArr2;
            }
            int i4 = this.f2580d;
            this.f2580d = i4 - 1;
            this.f2579c[i4] = fVar;
            this.f2581e++;
            this.f += i;
        }

        void a(List<f> list) throws IOException {
            if (this.i) {
                int i = this.h;
                if (i < this.f2578b) {
                    a(i, 31, 32);
                }
                this.i = false;
                this.h = Integer.MAX_VALUE;
                a(this.f2578b, 31, 32);
            }
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                f fVar = list.get(i2);
                d.f fVarD = fVar.h.d();
                d.f fVar2 = fVar.i;
                Integer num = (Integer) h.f2571b.get(fVarD);
                if (num != null) {
                    a(num.intValue() + 1, 15, 0);
                    a(fVar2);
                } else {
                    int iA = c.a.c.a(this.f2579c, fVar);
                    if (iA != -1) {
                        a((iA - this.f2580d) + h.f2570a.length, 127, 128);
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
                this.g.i(i | i3);
                return;
            }
            this.g.i(i3 | i2);
            int i4 = i - i2;
            while (i4 >= 128) {
                this.g.i(128 | (i4 & 127));
                i4 >>>= 7;
            }
            this.g.i(i4);
        }

        void a(d.f fVar) throws IOException {
            a(fVar.e(), 127, 0);
            this.g.b(fVar);
        }

        void a(int i) {
            this.f2577a = i;
            int iMin = Math.min(i, 16384);
            int i2 = this.f2578b;
            if (i2 == iMin) {
                return;
            }
            if (iMin < i2) {
                this.h = Math.min(this.h, iMin);
            }
            this.i = true;
            this.f2578b = iMin;
            b();
        }

        private void b() {
            int i = this.f2578b;
            int i2 = this.f;
            if (i < i2) {
                if (i == 0) {
                    a();
                } else {
                    b(i2 - i);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static d.f b(d.f fVar) throws IOException {
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
