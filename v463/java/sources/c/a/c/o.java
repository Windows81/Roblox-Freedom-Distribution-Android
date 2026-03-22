package c.a.c;

import c.a.c.b;
import d.r;
import java.io.Closeable;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.ProtocolException;
import java.util.List;
import java.util.zip.Deflater;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class o implements q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final byte[] f2621a;

    static {
        try {
            f2621a = "\u0000\u0000\u0000\u0007options\u0000\u0000\u0000\u0004head\u0000\u0000\u0000\u0004post\u0000\u0000\u0000\u0003put\u0000\u0000\u0000\u0006delete\u0000\u0000\u0000\u0005trace\u0000\u0000\u0000\u0006accept\u0000\u0000\u0000\u000eaccept-charset\u0000\u0000\u0000\u000faccept-encoding\u0000\u0000\u0000\u000faccept-language\u0000\u0000\u0000\raccept-ranges\u0000\u0000\u0000\u0003age\u0000\u0000\u0000\u0005allow\u0000\u0000\u0000\rauthorization\u0000\u0000\u0000\rcache-control\u0000\u0000\u0000\nconnection\u0000\u0000\u0000\fcontent-base\u0000\u0000\u0000\u0010content-encoding\u0000\u0000\u0000\u0010content-language\u0000\u0000\u0000\u000econtent-length\u0000\u0000\u0000\u0010content-location\u0000\u0000\u0000\u000bcontent-md5\u0000\u0000\u0000\rcontent-range\u0000\u0000\u0000\fcontent-type\u0000\u0000\u0000\u0004date\u0000\u0000\u0000\u0004etag\u0000\u0000\u0000\u0006expect\u0000\u0000\u0000\u0007expires\u0000\u0000\u0000\u0004from\u0000\u0000\u0000\u0004host\u0000\u0000\u0000\bif-match\u0000\u0000\u0000\u0011if-modified-since\u0000\u0000\u0000\rif-none-match\u0000\u0000\u0000\bif-range\u0000\u0000\u0000\u0013if-unmodified-since\u0000\u0000\u0000\rlast-modified\u0000\u0000\u0000\blocation\u0000\u0000\u0000\fmax-forwards\u0000\u0000\u0000\u0006pragma\u0000\u0000\u0000\u0012proxy-authenticate\u0000\u0000\u0000\u0013proxy-authorization\u0000\u0000\u0000\u0005range\u0000\u0000\u0000\u0007referer\u0000\u0000\u0000\u000bretry-after\u0000\u0000\u0000\u0006server\u0000\u0000\u0000\u0002te\u0000\u0000\u0000\u0007trailer\u0000\u0000\u0000\u0011transfer-encoding\u0000\u0000\u0000\u0007upgrade\u0000\u0000\u0000\nuser-agent\u0000\u0000\u0000\u0004vary\u0000\u0000\u0000\u0003via\u0000\u0000\u0000\u0007warning\u0000\u0000\u0000\u0010www-authenticate\u0000\u0000\u0000\u0006method\u0000\u0000\u0000\u0003get\u0000\u0000\u0000\u0006status\u0000\u0000\u0000\u0006200 OK\u0000\u0000\u0000\u0007version\u0000\u0000\u0000\bHTTP/1.1\u0000\u0000\u0000\u0003url\u0000\u0000\u0000\u0006public\u0000\u0000\u0000\nset-cookie\u0000\u0000\u0000\nkeep-alive\u0000\u0000\u0000\u0006origin100101201202205206300302303304305306307402405406407408409410411412413414415416417502504505203 Non-Authoritative Information204 No Content301 Moved Permanently400 Bad Request401 Unauthorized403 Forbidden404 Not Found500 Internal Server Error501 Not Implemented503 Service UnavailableJan Feb Mar Apr May Jun Jul Aug Sept Oct Nov Dec 00:00:00 Mon, Tue, Wed, Thu, Fri, Sat, Sun, GMTchunked,text/html,image/png,image/jpg,image/gif,application/xml,application/xhtml+xml,text/plain,text/javascript,publicprivatemax-age=gzip,deflate,sdchcharset=utf-8charset=iso-8859-1,utf-,*,enq=0.".getBytes(c.a.c.f2493c.name());
        } catch (UnsupportedEncodingException unused) {
            throw new AssertionError();
        }
    }

    @Override // c.a.c.q
    public c.a.c.b a(d.e eVar, boolean z) {
        return new a(eVar, z);
    }

    @Override // c.a.c.q
    public c a(d.d dVar, boolean z) {
        return new b(dVar, z);
    }

    static final class a implements c.a.c.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final d.e f2622a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f2623b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final k f2624c;

        @Override // c.a.c.b
        public void a() {
        }

        a(d.e eVar, boolean z) {
            this.f2622a = eVar;
            this.f2624c = new k(eVar);
            this.f2623b = z;
        }

        @Override // c.a.c.b
        public boolean a(b.a aVar) throws IOException {
            try {
                int iK = this.f2622a.k();
                int iK2 = this.f2622a.k();
                int i = ((-16777216) & iK2) >>> 24;
                int i2 = iK2 & 16777215;
                if (!((Integer.MIN_VALUE & iK) != 0)) {
                    aVar.a((i & 1) != 0, iK & Integer.MAX_VALUE, this.f2622a, i2);
                    return true;
                }
                int i3 = (2147418112 & iK) >>> 16;
                int i4 = iK & 65535;
                if (i3 != 3) {
                    throw new ProtocolException("version != 3: " + i3);
                }
                switch (i4) {
                    case 1:
                        a(aVar, i, i2);
                        return true;
                    case 2:
                        b(aVar, i, i2);
                        return true;
                    case 3:
                        c(aVar, i, i2);
                        return true;
                    case 4:
                        h(aVar, i, i2);
                        return true;
                    case 5:
                    default:
                        this.f2622a.h(i2);
                        return true;
                    case 6:
                        f(aVar, i, i2);
                        return true;
                    case 7:
                        g(aVar, i, i2);
                        return true;
                    case 8:
                        d(aVar, i, i2);
                        return true;
                    case 9:
                        e(aVar, i, i2);
                        return true;
                }
            } catch (IOException unused) {
                return false;
            }
        }

        private void a(b.a aVar, int i, int i2) throws IOException {
            int iK = this.f2622a.k() & Integer.MAX_VALUE;
            int iK2 = this.f2622a.k() & Integer.MAX_VALUE;
            this.f2622a.j();
            aVar.a((i & 2) != 0, (i & 1) != 0, iK, iK2, this.f2624c.a(i2 - 10), g.SPDY_SYN_STREAM);
        }

        private void b(b.a aVar, int i, int i2) throws IOException {
            aVar.a(false, (i & 1) != 0, this.f2622a.k() & Integer.MAX_VALUE, -1, this.f2624c.a(i2 - 4), g.SPDY_REPLY);
        }

        private void c(b.a aVar, int i, int i2) throws IOException {
            if (i2 != 8) {
                throw a("TYPE_RST_STREAM length: %d != 8", Integer.valueOf(i2));
            }
            int iK = this.f2622a.k() & Integer.MAX_VALUE;
            int iK2 = this.f2622a.k();
            c.a.c.a aVarA = c.a.c.a.a(iK2);
            if (aVarA == null) {
                throw a("TYPE_RST_STREAM unexpected error code: %d", Integer.valueOf(iK2));
            }
            aVar.a(iK, aVarA);
        }

        private void d(b.a aVar, int i, int i2) throws IOException {
            aVar.a(false, false, this.f2622a.k() & Integer.MAX_VALUE, -1, this.f2624c.a(i2 - 4), g.SPDY_HEADERS);
        }

        private void e(b.a aVar, int i, int i2) throws IOException {
            if (i2 != 8) {
                throw a("TYPE_WINDOW_UPDATE length: %d != 8", Integer.valueOf(i2));
            }
            int iK = this.f2622a.k() & Integer.MAX_VALUE;
            long jK = this.f2622a.k() & Integer.MAX_VALUE;
            if (jK == 0) {
                throw a("windowSizeIncrement was 0", Long.valueOf(jK));
            }
            aVar.a(iK, jK);
        }

        private void f(b.a aVar, int i, int i2) throws IOException {
            if (i2 != 4) {
                throw a("TYPE_PING length: %d != 4", Integer.valueOf(i2));
            }
            int iK = this.f2622a.k();
            aVar.a(this.f2623b == ((iK & 1) == 1), iK, 0);
        }

        private void g(b.a aVar, int i, int i2) throws IOException {
            if (i2 != 8) {
                throw a("TYPE_GOAWAY length: %d != 8", Integer.valueOf(i2));
            }
            int iK = this.f2622a.k() & Integer.MAX_VALUE;
            int iK2 = this.f2622a.k();
            c.a.c.a aVarC = c.a.c.a.c(iK2);
            if (aVarC == null) {
                throw a("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(iK2));
            }
            aVar.a(iK, aVarC, d.f.f7766b);
        }

        private void h(b.a aVar, int i, int i2) throws IOException {
            int iK = this.f2622a.k();
            if (i2 != (iK * 8) + 4) {
                throw a("TYPE_SETTINGS length: %d != 4 + 8 * %d", Integer.valueOf(i2), Integer.valueOf(iK));
            }
            n nVar = new n();
            for (int i3 = 0; i3 < iK; i3++) {
                int iK2 = this.f2622a.k();
                nVar.a(iK2 & 16777215, ((-16777216) & iK2) >>> 24, this.f2622a.k());
            }
            aVar.a((i & 1) != 0, nVar);
        }

        private static IOException a(String str, Object... objArr) throws IOException {
            throw new IOException(c.a.c.a(str, objArr));
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f2624c.a();
        }
    }

    static final class b implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final d.d f2625a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final d.c f2626b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final d.d f2627c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final boolean f2628d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f2629e;

        @Override // c.a.c.c
        public void a(int i, int i2, List<f> list) throws IOException {
        }

        @Override // c.a.c.c
        public void a(n nVar) {
        }

        @Override // c.a.c.c
        public int c() {
            return 16383;
        }

        b(d.d dVar, boolean z) {
            this.f2625a = dVar;
            this.f2628d = z;
            Deflater deflater = new Deflater();
            deflater.setDictionary(o.f2621a);
            d.c cVar = new d.c();
            this.f2626b = cVar;
            this.f2627c = d.l.a(new d.g((r) cVar, deflater));
        }

        @Override // c.a.c.c
        public synchronized void a() {
        }

        @Override // c.a.c.c
        public synchronized void b() throws IOException {
            if (this.f2629e) {
                throw new IOException("closed");
            }
            this.f2625a.flush();
        }

        @Override // c.a.c.c
        public synchronized void a(boolean z, boolean z2, int i, int i2, List<f> list) throws IOException {
            if (this.f2629e) {
                throw new IOException("closed");
            }
            a(list);
            int iB = (int) (this.f2626b.b() + 10);
            int i3 = (z ? 1 : 0) | (z2 ? 2 : 0);
            this.f2625a.g(-2147287039);
            this.f2625a.g(((i3 & 255) << 24) | (iB & 16777215));
            this.f2625a.g(i & Integer.MAX_VALUE);
            this.f2625a.g(Integer.MAX_VALUE & i2);
            this.f2625a.h(0);
            this.f2625a.a(this.f2626b);
            this.f2625a.flush();
        }

        @Override // c.a.c.c
        public synchronized void a(int i, c.a.c.a aVar) throws IOException {
            if (this.f2629e) {
                throw new IOException("closed");
            }
            if (aVar.t == -1) {
                throw new IllegalArgumentException();
            }
            this.f2625a.g(-2147287037);
            this.f2625a.g(8);
            this.f2625a.g(i & Integer.MAX_VALUE);
            this.f2625a.g(aVar.t);
            this.f2625a.flush();
        }

        @Override // c.a.c.c
        public synchronized void a(boolean z, int i, d.c cVar, int i2) throws IOException {
            a(i, z ? 1 : 0, cVar, i2);
        }

        void a(int i, int i2, d.c cVar, int i3) throws IOException {
            if (this.f2629e) {
                throw new IOException("closed");
            }
            long j = i3;
            if (j > 16777215) {
                throw new IllegalArgumentException("FRAME_TOO_LARGE max size is 16Mib: " + i3);
            }
            this.f2625a.g(i & Integer.MAX_VALUE);
            this.f2625a.g(((i2 & 255) << 24) | (16777215 & i3));
            if (i3 > 0) {
                this.f2625a.a_(cVar, j);
            }
        }

        private void a(List<f> list) throws IOException {
            this.f2627c.g(list.size());
            int size = list.size();
            for (int i = 0; i < size; i++) {
                d.f fVar = list.get(i).h;
                this.f2627c.g(fVar.e());
                this.f2627c.b(fVar);
                d.f fVar2 = list.get(i).i;
                this.f2627c.g(fVar2.e());
                this.f2627c.b(fVar2);
            }
            this.f2627c.flush();
        }

        @Override // c.a.c.c
        public synchronized void b(n nVar) throws IOException {
            if (this.f2629e) {
                throw new IOException("closed");
            }
            int iB = nVar.b();
            this.f2625a.g(-2147287036);
            this.f2625a.g((((iB * 8) + 4) & 16777215) | 0);
            this.f2625a.g(iB);
            for (int i = 0; i <= 10; i++) {
                if (nVar.a(i)) {
                    this.f2625a.g(((nVar.c(i) & 255) << 24) | (i & 16777215));
                    this.f2625a.g(nVar.b(i));
                }
            }
            this.f2625a.flush();
        }

        @Override // c.a.c.c
        public synchronized void a(boolean z, int i, int i2) throws IOException {
            if (this.f2629e) {
                throw new IOException("closed");
            }
            if (z != (this.f2628d != ((i & 1) == 1))) {
                throw new IllegalArgumentException("payload != reply");
            }
            this.f2625a.g(-2147287034);
            this.f2625a.g(4);
            this.f2625a.g(i);
            this.f2625a.flush();
        }

        @Override // c.a.c.c
        public synchronized void a(int i, c.a.c.a aVar, byte[] bArr) throws IOException {
            if (this.f2629e) {
                throw new IOException("closed");
            }
            if (aVar.u == -1) {
                throw new IllegalArgumentException("errorCode.spdyGoAwayCode == -1");
            }
            this.f2625a.g(-2147287033);
            this.f2625a.g(8);
            this.f2625a.g(i);
            this.f2625a.g(aVar.u);
            this.f2625a.flush();
        }

        @Override // c.a.c.c
        public synchronized void a(int i, long j) throws IOException {
            if (this.f2629e) {
                throw new IOException("closed");
            }
            if (j == 0 || j > 2147483647L) {
                throw new IllegalArgumentException("windowSizeIncrement must be between 1 and 0x7fffffff: " + j);
            }
            this.f2625a.g(-2147287031);
            this.f2625a.g(8);
            this.f2625a.g(i);
            this.f2625a.g((int) j);
            this.f2625a.flush();
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public synchronized void close() throws IOException {
            this.f2629e = true;
            c.a.c.a((Closeable) this.f2625a, (Closeable) this.f2627c);
        }
    }
}
