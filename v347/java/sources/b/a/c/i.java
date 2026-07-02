package b.a.c;

import android.support.v7.widget.RecyclerView;
import b.a.c.b;
import b.a.c.h;
import c.s;
import c.t;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
public final class i implements q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Logger f1860a = Logger.getLogger(b.class.getName());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final c.f f1861b = c.f.a("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");

    @Override // b.a.c.q
    public b.a.c.b a(c.e eVar, boolean z) {
        return new c(eVar, RecyclerView.ItemAnimator.FLAG_APPEARED_IN_PRE_LAYOUT, z);
    }

    @Override // b.a.c.q
    public b.a.c.c a(c.d dVar, boolean z) {
        return new d(dVar, z);
    }

    static final class c implements b.a.c.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final h.a f1869a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final c.e f1870b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final a f1871c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final boolean f1872d;

        c(c.e eVar, int i, boolean z) {
            this.f1870b = eVar;
            this.f1872d = z;
            this.f1871c = new a(this.f1870b);
            this.f1869a = new h.a(i, this.f1871c);
        }

        @Override // b.a.c.b
        public void a() throws IOException {
            if (!this.f1872d) {
                c.f fVarD = this.f1870b.d(i.f1861b.e());
                if (i.f1860a.isLoggable(Level.FINE)) {
                    i.f1860a.fine(b.a.c.a("<< CONNECTION %s", fVarD.c()));
                }
                if (!i.f1861b.equals(fVarD)) {
                    throw i.d("Expected a connection header but was %s", fVarD.a());
                }
            }
        }

        @Override // b.a.c.b
        public boolean a(b.a aVar) throws IOException {
            try {
                this.f1870b.a(9L);
                int iB = i.b(this.f1870b);
                if (iB < 0 || iB > 16384) {
                    throw i.d("FRAME_SIZE_ERROR: %s", Integer.valueOf(iB));
                }
                byte bI = (byte) (this.f1870b.i() & 255);
                byte bI2 = (byte) (this.f1870b.i() & 255);
                int iK = this.f1870b.k() & Integer.MAX_VALUE;
                if (i.f1860a.isLoggable(Level.FINE)) {
                    i.f1860a.fine(b.a(true, iK, iB, bI, bI2));
                }
                switch (bI) {
                    case 0:
                        b(aVar, iB, bI2, iK);
                        return true;
                    case 1:
                        a(aVar, iB, bI2, iK);
                        return true;
                    case 2:
                        c(aVar, iB, bI2, iK);
                        return true;
                    case 3:
                        d(aVar, iB, bI2, iK);
                        return true;
                    case 4:
                        e(aVar, iB, bI2, iK);
                        return true;
                    case 5:
                        f(aVar, iB, bI2, iK);
                        return true;
                    case 6:
                        g(aVar, iB, bI2, iK);
                        return true;
                    case 7:
                        h(aVar, iB, bI2, iK);
                        return true;
                    case 8:
                        i(aVar, iB, bI2, iK);
                        return true;
                    default:
                        this.f1870b.h(iB);
                        return true;
                }
            } catch (IOException e) {
                return false;
            }
        }

        private void a(b.a aVar, int i, byte b2, int i2) throws IOException {
            if (i2 == 0) {
                throw i.d("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
            }
            boolean z = (b2 & 1) != 0;
            short sI = (b2 & 8) != 0 ? (short) (this.f1870b.i() & 255) : (short) 0;
            if ((b2 & 32) != 0) {
                a(aVar, i2);
                i -= 5;
            }
            aVar.a(false, z, i2, -1, a(i.b(i, b2, sI), sI, b2, i2), g.HTTP_20_HEADERS);
        }

        private List<f> a(int i, short s, byte b2, int i2) throws IOException {
            a aVar = this.f1871c;
            this.f1871c.f1865d = i;
            aVar.f1862a = i;
            this.f1871c.e = s;
            this.f1871c.f1863b = b2;
            this.f1871c.f1864c = i2;
            this.f1869a.a();
            return this.f1869a.b();
        }

        private void b(b.a aVar, int i, byte b2, int i2) throws IOException {
            boolean z = (b2 & 1) != 0;
            if ((b2 & 32) != 0) {
                throw i.d("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
            }
            short sI = (b2 & 8) != 0 ? (short) (this.f1870b.i() & 255) : (short) 0;
            aVar.a(z, i2, this.f1870b, i.b(i, b2, sI));
            this.f1870b.h(sI);
        }

        private void c(b.a aVar, int i, byte b2, int i2) throws IOException {
            if (i != 5) {
                throw i.d("TYPE_PRIORITY length: %d != 5", Integer.valueOf(i));
            }
            if (i2 == 0) {
                throw i.d("TYPE_PRIORITY streamId == 0", new Object[0]);
            }
            a(aVar, i2);
        }

        private void a(b.a aVar, int i) throws IOException {
            int iK = this.f1870b.k();
            aVar.a(i, iK & Integer.MAX_VALUE, (this.f1870b.i() & 255) + 1, (Integer.MIN_VALUE & iK) != 0);
        }

        private void d(b.a aVar, int i, byte b2, int i2) throws IOException {
            if (i != 4) {
                throw i.d("TYPE_RST_STREAM length: %d != 4", Integer.valueOf(i));
            }
            if (i2 == 0) {
                throw i.d("TYPE_RST_STREAM streamId == 0", new Object[0]);
            }
            int iK = this.f1870b.k();
            b.a.c.a aVarB = b.a.c.a.b(iK);
            if (aVarB == null) {
                throw i.d("TYPE_RST_STREAM unexpected error code: %d", Integer.valueOf(iK));
            }
            aVar.a(i2, aVarB);
        }

        private void e(b.a aVar, int i, byte b2, int i2) throws IOException {
            if (i2 != 0) {
                throw i.d("TYPE_SETTINGS streamId != 0", new Object[0]);
            }
            if ((b2 & 1) != 0) {
                if (i != 0) {
                    throw i.d("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
                }
                aVar.a();
                return;
            }
            if (i % 6 != 0) {
                throw i.d("TYPE_SETTINGS length %% 6 != 0: %s", Integer.valueOf(i));
            }
            n nVar = new n();
            for (int i3 = 0; i3 < i; i3 += 6) {
                short sJ = this.f1870b.j();
                int iK = this.f1870b.k();
                switch (sJ) {
                    case 2:
                        if (iK != 0 && iK != 1) {
                            throw i.d("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
                        }
                        break;
                        break;
                    case 3:
                        sJ = 4;
                        break;
                    case 4:
                        sJ = 7;
                        if (iK < 0) {
                            throw i.d("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
                        }
                        break;
                        break;
                    case 5:
                        if (iK < 16384 || iK > 16777215) {
                            throw i.d("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", Integer.valueOf(iK));
                        }
                        break;
                        break;
                }
                nVar.a(sJ, 0, iK);
            }
            aVar.a(false, nVar);
        }

        private void f(b.a aVar, int i, byte b2, int i2) throws IOException {
            if (i2 == 0) {
                throw i.d("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
            }
            short sI = (b2 & 8) != 0 ? (short) (this.f1870b.i() & 255) : (short) 0;
            aVar.a(i2, this.f1870b.k() & Integer.MAX_VALUE, a(i.b(i - 4, b2, sI), sI, b2, i2));
        }

        private void g(b.a aVar, int i, byte b2, int i2) throws IOException {
            if (i != 8) {
                throw i.d("TYPE_PING length != 8: %s", Integer.valueOf(i));
            }
            if (i2 != 0) {
                throw i.d("TYPE_PING streamId != 0", new Object[0]);
            }
            aVar.a((b2 & 1) != 0, this.f1870b.k(), this.f1870b.k());
        }

        private void h(b.a aVar, int i, byte b2, int i2) throws IOException {
            if (i < 8) {
                throw i.d("TYPE_GOAWAY length < 8: %s", Integer.valueOf(i));
            }
            if (i2 != 0) {
                throw i.d("TYPE_GOAWAY streamId != 0", new Object[0]);
            }
            int iK = this.f1870b.k();
            int iK2 = this.f1870b.k();
            int i3 = i - 8;
            b.a.c.a aVarB = b.a.c.a.b(iK2);
            if (aVarB == null) {
                throw i.d("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(iK2));
            }
            c.f fVarD = c.f.f2133b;
            if (i3 > 0) {
                fVarD = this.f1870b.d(i3);
            }
            aVar.a(iK, aVarB, fVarD);
        }

        private void i(b.a aVar, int i, byte b2, int i2) throws IOException {
            if (i != 4) {
                throw i.d("TYPE_WINDOW_UPDATE length !=4: %s", Integer.valueOf(i));
            }
            long jK = ((long) this.f1870b.k()) & 2147483647L;
            if (jK == 0) {
                throw i.d("windowSizeIncrement was 0", Long.valueOf(jK));
            }
            aVar.a(i2, jK);
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f1870b.close();
        }
    }

    static final class d implements b.a.c.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final c.d f1874b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f1875c;
        private boolean f;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final c.c f1876d = new c.c();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final h.b f1873a = new h.b(this.f1876d);
        private int e = 16384;

        d(c.d dVar, boolean z) {
            this.f1874b = dVar;
            this.f1875c = z;
        }

        @Override // b.a.c.c
        public synchronized void b() throws IOException {
            if (this.f) {
                throw new IOException("closed");
            }
            this.f1874b.flush();
        }

        @Override // b.a.c.c
        public synchronized void a(n nVar) throws IOException {
            if (this.f) {
                throw new IOException("closed");
            }
            this.e = nVar.e(this.e);
            if (nVar.c() > -1) {
                this.f1873a.a(nVar.c());
            }
            a(0, 0, (byte) 4, (byte) 1);
            this.f1874b.flush();
        }

        @Override // b.a.c.c
        public synchronized void a() throws IOException {
            if (this.f) {
                throw new IOException("closed");
            }
            if (this.f1875c) {
                if (i.f1860a.isLoggable(Level.FINE)) {
                    i.f1860a.fine(b.a.c.a(">> CONNECTION %s", i.f1861b.c()));
                }
                this.f1874b.c(i.f1861b.f());
                this.f1874b.flush();
            }
        }

        @Override // b.a.c.c
        public synchronized void a(boolean z, boolean z2, int i, int i2, List<f> list) throws IOException {
            if (z2) {
                throw new UnsupportedOperationException();
            }
            if (this.f) {
                throw new IOException("closed");
            }
            a(z, i, list);
        }

        @Override // b.a.c.c
        public synchronized void a(int i, int i2, List<f> list) throws IOException {
            if (this.f) {
                throw new IOException("closed");
            }
            this.f1873a.a(list);
            long jB = this.f1876d.b();
            int iMin = (int) Math.min(this.e - 4, jB);
            a(i, iMin + 4, (byte) 5, jB == ((long) iMin) ? (byte) 4 : (byte) 0);
            this.f1874b.g(Integer.MAX_VALUE & i2);
            this.f1874b.a_(this.f1876d, iMin);
            if (jB > iMin) {
                b(i, jB - ((long) iMin));
            }
        }

        void a(boolean z, int i, List<f> list) throws IOException {
            if (this.f) {
                throw new IOException("closed");
            }
            this.f1873a.a(list);
            long jB = this.f1876d.b();
            int iMin = (int) Math.min(this.e, jB);
            byte b2 = jB == ((long) iMin) ? (byte) 4 : (byte) 0;
            if (z) {
                b2 = (byte) (b2 | 1);
            }
            a(i, iMin, (byte) 1, b2);
            this.f1874b.a_(this.f1876d, iMin);
            if (jB > iMin) {
                b(i, jB - ((long) iMin));
            }
        }

        private void b(int i, long j) throws IOException {
            while (j > 0) {
                int iMin = (int) Math.min(this.e, j);
                j -= (long) iMin;
                a(i, iMin, (byte) 9, j == 0 ? (byte) 4 : (byte) 0);
                this.f1874b.a_(this.f1876d, iMin);
            }
        }

        @Override // b.a.c.c
        public synchronized void a(int i, b.a.c.a aVar) throws IOException {
            if (this.f) {
                throw new IOException("closed");
            }
            if (aVar.s == -1) {
                throw new IllegalArgumentException();
            }
            a(i, 4, (byte) 3, (byte) 0);
            this.f1874b.g(aVar.s);
            this.f1874b.flush();
        }

        @Override // b.a.c.c
        public int c() {
            return this.e;
        }

        @Override // b.a.c.c
        public synchronized void a(boolean z, int i, c.c cVar, int i2) throws IOException {
            if (this.f) {
                throw new IOException("closed");
            }
            a(i, z ? (byte) 1 : (byte) 0, cVar, i2);
        }

        void a(int i, byte b2, c.c cVar, int i2) throws IOException {
            a(i, i2, (byte) 0, b2);
            if (i2 > 0) {
                this.f1874b.a_(cVar, i2);
            }
        }

        @Override // b.a.c.c
        public synchronized void b(n nVar) throws IOException {
            int i;
            int i2 = 0;
            synchronized (this) {
                if (this.f) {
                    throw new IOException("closed");
                }
                a(0, nVar.b() * 6, (byte) 4, (byte) 0);
                while (i2 < 10) {
                    if (nVar.a(i2)) {
                        if (i2 == 4) {
                            i = 3;
                        } else {
                            i = i2 == 7 ? 4 : i2;
                        }
                        this.f1874b.h(i);
                        this.f1874b.g(nVar.b(i2));
                    }
                    i2++;
                }
                this.f1874b.flush();
            }
        }

        @Override // b.a.c.c
        public synchronized void a(boolean z, int i, int i2) throws IOException {
            synchronized (this) {
                if (this.f) {
                    throw new IOException("closed");
                }
                a(0, 8, (byte) 6, z ? (byte) 1 : (byte) 0);
                this.f1874b.g(i);
                this.f1874b.g(i2);
                this.f1874b.flush();
            }
        }

        @Override // b.a.c.c
        public synchronized void a(int i, b.a.c.a aVar, byte[] bArr) throws IOException {
            if (this.f) {
                throw new IOException("closed");
            }
            if (aVar.s == -1) {
                throw i.c("errorCode.httpCode == -1", new Object[0]);
            }
            a(0, bArr.length + 8, (byte) 7, (byte) 0);
            this.f1874b.g(i);
            this.f1874b.g(aVar.s);
            if (bArr.length > 0) {
                this.f1874b.c(bArr);
            }
            this.f1874b.flush();
        }

        @Override // b.a.c.c
        public synchronized void a(int i, long j) throws IOException {
            if (this.f) {
                throw new IOException("closed");
            }
            if (j == 0 || j > 2147483647L) {
                throw i.c("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", Long.valueOf(j));
            }
            a(i, 4, (byte) 8, (byte) 0);
            this.f1874b.g((int) j);
            this.f1874b.flush();
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public synchronized void close() throws IOException {
            this.f = true;
            this.f1874b.close();
        }

        void a(int i, int i2, byte b2, byte b3) throws IOException {
            if (i.f1860a.isLoggable(Level.FINE)) {
                i.f1860a.fine(b.a(false, i, i2, b2, b3));
            }
            if (i2 > this.e) {
                throw i.c("FRAME_SIZE_ERROR length > %d: %d", Integer.valueOf(this.e), Integer.valueOf(i2));
            }
            if ((Integer.MIN_VALUE & i) != 0) {
                throw i.c("reserved bit set: %s", Integer.valueOf(i));
            }
            i.b(this.f1874b, i2);
            this.f1874b.i(b2 & 255);
            this.f1874b.i(b3 & 255);
            this.f1874b.g(Integer.MAX_VALUE & i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static IllegalArgumentException c(String str, Object... objArr) {
        throw new IllegalArgumentException(b.a.c.a(str, objArr));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static IOException d(String str, Object... objArr) throws IOException {
        throw new IOException(b.a.c.a(str, objArr));
    }

    static final class a implements s {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f1862a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        byte f1863b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f1864c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f1865d;
        short e;
        private final c.e f;

        public a(c.e eVar) {
            this.f = eVar;
        }

        @Override // c.s
        public long a(c.c cVar, long j) throws IOException {
            while (this.f1865d == 0) {
                this.f.h(this.e);
                this.e = (short) 0;
                if ((this.f1863b & 4) != 0) {
                    return -1L;
                }
                b();
            }
            long jA = this.f.a(cVar, Math.min(j, this.f1865d));
            if (jA == -1) {
                return -1L;
            }
            this.f1865d = (int) (((long) this.f1865d) - jA);
            return jA;
        }

        @Override // c.s
        public t a() {
            return this.f.a();
        }

        @Override // c.s, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }

        private void b() throws IOException {
            int i = this.f1864c;
            int iB = i.b(this.f);
            this.f1865d = iB;
            this.f1862a = iB;
            byte bI = (byte) (this.f.i() & 255);
            this.f1863b = (byte) (this.f.i() & 255);
            if (i.f1860a.isLoggable(Level.FINE)) {
                i.f1860a.fine(b.a(true, this.f1864c, this.f1862a, bI, this.f1863b));
            }
            this.f1864c = this.f.k() & Integer.MAX_VALUE;
            if (bI != 9) {
                throw i.d("%s != TYPE_CONTINUATION", Byte.valueOf(bI));
            }
            if (this.f1864c != i) {
                throw i.d("TYPE_CONTINUATION streamId changed", new Object[0]);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int b(int i, byte b2, short s) throws IOException {
        if ((b2 & 8) != 0) {
            i--;
        }
        if (s > i) {
            throw d("PROTOCOL_ERROR padding %s > remaining length %s", Short.valueOf(s), Integer.valueOf(i));
        }
        return (short) (i - s);
    }

    static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final String[] f1866a = {"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final String[] f1867b = new String[64];

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final String[] f1868c = new String[256];

        b() {
        }

        static String a(boolean z, int i, int i2, byte b2, byte b3) {
            String strA = b2 < f1866a.length ? f1866a[b2] : b.a.c.a("0x%02x", Byte.valueOf(b2));
            String strA2 = a(b2, b3);
            Object[] objArr = new Object[5];
            objArr[0] = z ? "<<" : ">>";
            objArr[1] = Integer.valueOf(i);
            objArr[2] = Integer.valueOf(i2);
            objArr[3] = strA;
            objArr[4] = strA2;
            return b.a.c.a("%s 0x%08x %5d %-13s %s", objArr);
        }

        static String a(byte b2, byte b3) {
            if (b3 == 0) {
                return "";
            }
            switch (b2) {
                case 2:
                case 3:
                case 7:
                case 8:
                    return f1868c[b3];
                case 4:
                case 6:
                    return b3 == 1 ? "ACK" : f1868c[b3];
                case 5:
                default:
                    String str = b3 < f1867b.length ? f1867b[b3] : f1868c[b3];
                    if (b2 == 5 && (b3 & 4) != 0) {
                        return str.replace("HEADERS", "PUSH_PROMISE");
                    }
                    if (b2 == 0 && (b3 & 32) != 0) {
                        return str.replace("PRIORITY", "COMPRESSED");
                    }
                    return str;
            }
        }

        static {
            for (int i = 0; i < f1868c.length; i++) {
                f1868c[i] = b.a.c.a("%8s", Integer.toBinaryString(i)).replace(' ', '0');
            }
            f1867b[0] = "";
            f1867b[1] = "END_STREAM";
            int[] iArr = {1};
            f1867b[8] = "PADDED";
            for (int i2 : iArr) {
                f1867b[i2 | 8] = f1867b[i2] + "|PADDED";
            }
            f1867b[4] = "END_HEADERS";
            f1867b[32] = "PRIORITY";
            f1867b[36] = "END_HEADERS|PRIORITY";
            for (int i3 : new int[]{4, 32, 36}) {
                for (int i4 : iArr) {
                    f1867b[i4 | i3] = f1867b[i4] + '|' + f1867b[i3];
                    f1867b[i4 | i3 | 8] = f1867b[i4] + '|' + f1867b[i3] + "|PADDED";
                }
            }
            for (int i5 = 0; i5 < f1867b.length; i5++) {
                if (f1867b[i5] == null) {
                    f1867b[i5] = f1868c[i5];
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int b(c.e eVar) throws IOException {
        return ((eVar.i() & 255) << 16) | ((eVar.i() & 255) << 8) | (eVar.i() & 255);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(c.d dVar, int i) throws IOException {
        dVar.i((i >>> 16) & 255);
        dVar.i((i >>> 8) & 255);
        dVar.i(i & 255);
    }
}
