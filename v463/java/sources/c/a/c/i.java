package c.a.c;

import c.a.c.b;
import c.a.c.h;
import d.s;
import d.t;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class i implements q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Logger f2582a = Logger.getLogger(b.class.getName());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final d.f f2583b = d.f.a("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");

    @Override // c.a.c.q
    public c.a.c.b a(d.e eVar, boolean z) {
        return new c(eVar, 4096, z);
    }

    @Override // c.a.c.q
    public c.a.c.c a(d.d dVar, boolean z) {
        return new d(dVar, z);
    }

    static final class c implements c.a.c.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final h.a f2592a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final d.e f2593b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final a f2594c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final boolean f2595d;

        c(d.e eVar, int i, boolean z) {
            this.f2593b = eVar;
            this.f2595d = z;
            a aVar = new a(eVar);
            this.f2594c = aVar;
            this.f2592a = new h.a(i, aVar);
        }

        @Override // c.a.c.b
        public void a() throws IOException {
            if (this.f2595d) {
                return;
            }
            d.f fVarD = this.f2593b.d(i.f2583b.e());
            if (i.f2582a.isLoggable(Level.FINE)) {
                i.f2582a.fine(c.a.c.a("<< CONNECTION %s", fVarD.c()));
            }
            if (!i.f2583b.equals(fVarD)) {
                throw i.d("Expected a connection header but was %s", fVarD.a());
            }
        }

        @Override // c.a.c.b
        public boolean a(b.a aVar) throws IOException {
            try {
                this.f2593b.a(9L);
                int iB = i.b(this.f2593b);
                if (iB < 0 || iB > 16384) {
                    throw i.d("FRAME_SIZE_ERROR: %s", Integer.valueOf(iB));
                }
                byte bI = (byte) (this.f2593b.i() & 255);
                byte bI2 = (byte) (this.f2593b.i() & 255);
                int iK = this.f2593b.k() & Integer.MAX_VALUE;
                if (i.f2582a.isLoggable(Level.FINE)) {
                    i.f2582a.fine(b.a(true, iK, iB, bI, bI2));
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
                        this.f2593b.h(iB);
                        return true;
                }
            } catch (IOException unused) {
                return false;
            }
        }

        private void a(b.a aVar, int i, byte b2, int i2) throws IOException {
            if (i2 == 0) {
                throw i.d("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
            }
            boolean z = (b2 & 1) != 0;
            short sI = (b2 & 8) != 0 ? (short) (this.f2593b.i() & 255) : (short) 0;
            if ((b2 & 32) != 0) {
                a(aVar, i2);
                i -= 5;
            }
            aVar.a(false, z, i2, -1, a(i.b(i, b2, sI), sI, b2, i2), g.HTTP_20_HEADERS);
        }

        private List<f> a(int i, short s, byte b2, int i2) throws IOException {
            a aVar = this.f2594c;
            aVar.f2587d = i;
            aVar.f2584a = i;
            this.f2594c.f2588e = s;
            this.f2594c.f2585b = b2;
            this.f2594c.f2586c = i2;
            this.f2592a.a();
            return this.f2592a.b();
        }

        private void b(b.a aVar, int i, byte b2, int i2) throws IOException {
            boolean z = (b2 & 1) != 0;
            if ((b2 & 32) != 0) {
                throw i.d("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
            }
            short sI = (b2 & 8) != 0 ? (short) (this.f2593b.i() & 255) : (short) 0;
            aVar.a(z, i2, this.f2593b, i.b(i, b2, sI));
            this.f2593b.h(sI);
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
            int iK = this.f2593b.k();
            aVar.a(i, iK & Integer.MAX_VALUE, (this.f2593b.i() & 255) + 1, (Integer.MIN_VALUE & iK) != 0);
        }

        private void d(b.a aVar, int i, byte b2, int i2) throws IOException {
            if (i != 4) {
                throw i.d("TYPE_RST_STREAM length: %d != 4", Integer.valueOf(i));
            }
            if (i2 == 0) {
                throw i.d("TYPE_RST_STREAM streamId == 0", new Object[0]);
            }
            int iK = this.f2593b.k();
            c.a.c.a aVarB = c.a.c.a.b(iK);
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
                short sJ = this.f2593b.j();
                int iK = this.f2593b.k();
                if (sJ == 2) {
                    if (iK != 0 && iK != 1) {
                        throw i.d("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
                    }
                } else if (sJ == 3) {
                    sJ = 4;
                } else if (sJ == 4) {
                    sJ = 7;
                    if (iK < 0) {
                        throw i.d("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
                    }
                } else if (sJ == 5 && (iK < 16384 || iK > 16777215)) {
                    throw i.d("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", Integer.valueOf(iK));
                }
                nVar.a(sJ, 0, iK);
            }
            aVar.a(false, nVar);
        }

        private void f(b.a aVar, int i, byte b2, int i2) throws IOException {
            if (i2 == 0) {
                throw i.d("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
            }
            short sI = (b2 & 8) != 0 ? (short) (this.f2593b.i() & 255) : (short) 0;
            aVar.a(i2, this.f2593b.k() & Integer.MAX_VALUE, a(i.b(i - 4, b2, sI), sI, b2, i2));
        }

        private void g(b.a aVar, int i, byte b2, int i2) throws IOException {
            if (i != 8) {
                throw i.d("TYPE_PING length != 8: %s", Integer.valueOf(i));
            }
            if (i2 != 0) {
                throw i.d("TYPE_PING streamId != 0", new Object[0]);
            }
            aVar.a((b2 & 1) != 0, this.f2593b.k(), this.f2593b.k());
        }

        private void h(b.a aVar, int i, byte b2, int i2) throws IOException {
            if (i < 8) {
                throw i.d("TYPE_GOAWAY length < 8: %s", Integer.valueOf(i));
            }
            if (i2 != 0) {
                throw i.d("TYPE_GOAWAY streamId != 0", new Object[0]);
            }
            int iK = this.f2593b.k();
            int iK2 = this.f2593b.k();
            int i3 = i - 8;
            c.a.c.a aVarB = c.a.c.a.b(iK2);
            if (aVarB == null) {
                throw i.d("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(iK2));
            }
            d.f fVarD = d.f.f7766b;
            if (i3 > 0) {
                fVarD = this.f2593b.d(i3);
            }
            aVar.a(iK, aVarB, fVarD);
        }

        private void i(b.a aVar, int i, byte b2, int i2) throws IOException {
            if (i != 4) {
                throw i.d("TYPE_WINDOW_UPDATE length !=4: %s", Integer.valueOf(i));
            }
            long jK = ((long) this.f2593b.k()) & 2147483647L;
            if (jK == 0) {
                throw i.d("windowSizeIncrement was 0", Long.valueOf(jK));
            }
            aVar.a(i2, jK);
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f2593b.close();
        }
    }

    static final class d implements c.a.c.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final h.b f2596a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final d.d f2597b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f2598c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final d.c f2599d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f2600e;
        private boolean f;

        d(d.d dVar, boolean z) {
            this.f2597b = dVar;
            this.f2598c = z;
            d.c cVar = new d.c();
            this.f2599d = cVar;
            this.f2596a = new h.b(cVar);
            this.f2600e = 16384;
        }

        @Override // c.a.c.c
        public synchronized void b() throws IOException {
            if (this.f) {
                throw new IOException("closed");
            }
            this.f2597b.flush();
        }

        @Override // c.a.c.c
        public synchronized void a(n nVar) throws IOException {
            if (this.f) {
                throw new IOException("closed");
            }
            this.f2600e = nVar.e(this.f2600e);
            if (nVar.c() > -1) {
                this.f2596a.a(nVar.c());
            }
            a(0, 0, (byte) 4, (byte) 1);
            this.f2597b.flush();
        }

        @Override // c.a.c.c
        public synchronized void a() throws IOException {
            if (this.f) {
                throw new IOException("closed");
            }
            if (this.f2598c) {
                if (i.f2582a.isLoggable(Level.FINE)) {
                    i.f2582a.fine(c.a.c.a(">> CONNECTION %s", i.f2583b.c()));
                }
                this.f2597b.c(i.f2583b.f());
                this.f2597b.flush();
            }
        }

        @Override // c.a.c.c
        public synchronized void a(boolean z, boolean z2, int i, int i2, List<f> list) throws IOException {
            try {
                if (z2) {
                    throw new UnsupportedOperationException();
                }
                if (this.f) {
                    throw new IOException("closed");
                }
                a(z, i, list);
            } catch (Throwable th) {
                throw th;
            }
        }

        @Override // c.a.c.c
        public synchronized void a(int i, int i2, List<f> list) throws IOException {
            if (this.f) {
                throw new IOException("closed");
            }
            this.f2596a.a(list);
            long jB = this.f2599d.b();
            int iMin = (int) Math.min(this.f2600e - 4, jB);
            long j = iMin;
            a(i, iMin + 4, (byte) 5, jB == j ? (byte) 4 : (byte) 0);
            this.f2597b.g(i2 & Integer.MAX_VALUE);
            this.f2597b.a_(this.f2599d, j);
            if (jB > j) {
                b(i, jB - j);
            }
        }

        void a(boolean z, int i, List<f> list) throws IOException {
            if (this.f) {
                throw new IOException("closed");
            }
            this.f2596a.a(list);
            long jB = this.f2599d.b();
            int iMin = (int) Math.min(this.f2600e, jB);
            long j = iMin;
            byte b2 = jB == j ? (byte) 4 : (byte) 0;
            if (z) {
                b2 = (byte) (b2 | 1);
            }
            a(i, iMin, (byte) 1, b2);
            this.f2597b.a_(this.f2599d, j);
            if (jB > j) {
                b(i, jB - j);
            }
        }

        private void b(int i, long j) throws IOException {
            while (j > 0) {
                int iMin = (int) Math.min(this.f2600e, j);
                long j2 = iMin;
                j -= j2;
                a(i, iMin, (byte) 9, j == 0 ? (byte) 4 : (byte) 0);
                this.f2597b.a_(this.f2599d, j2);
            }
        }

        @Override // c.a.c.c
        public synchronized void a(int i, c.a.c.a aVar) throws IOException {
            if (this.f) {
                throw new IOException("closed");
            }
            if (aVar.s == -1) {
                throw new IllegalArgumentException();
            }
            a(i, 4, (byte) 3, (byte) 0);
            this.f2597b.g(aVar.s);
            this.f2597b.flush();
        }

        @Override // c.a.c.c
        public int c() {
            return this.f2600e;
        }

        @Override // c.a.c.c
        public synchronized void a(boolean z, int i, d.c cVar, int i2) throws IOException {
            if (this.f) {
                throw new IOException("closed");
            }
            a(i, z ? (byte) 1 : (byte) 0, cVar, i2);
        }

        void a(int i, byte b2, d.c cVar, int i2) throws IOException {
            a(i, i2, (byte) 0, b2);
            if (i2 > 0) {
                this.f2597b.a_(cVar, i2);
            }
        }

        @Override // c.a.c.c
        public synchronized void b(n nVar) throws IOException {
            if (this.f) {
                throw new IOException("closed");
            }
            int i = 0;
            a(0, nVar.b() * 6, (byte) 4, (byte) 0);
            while (i < 10) {
                if (nVar.a(i)) {
                    this.f2597b.h(i == 4 ? 3 : i == 7 ? 4 : i);
                    this.f2597b.g(nVar.b(i));
                }
                i++;
            }
            this.f2597b.flush();
        }

        @Override // c.a.c.c
        public synchronized void a(boolean z, int i, int i2) throws IOException {
            if (this.f) {
                throw new IOException("closed");
            }
            a(0, 8, (byte) 6, z ? (byte) 1 : (byte) 0);
            this.f2597b.g(i);
            this.f2597b.g(i2);
            this.f2597b.flush();
        }

        @Override // c.a.c.c
        public synchronized void a(int i, c.a.c.a aVar, byte[] bArr) throws IOException {
            if (this.f) {
                throw new IOException("closed");
            }
            if (aVar.s == -1) {
                throw i.c("errorCode.httpCode == -1", new Object[0]);
            }
            a(0, bArr.length + 8, (byte) 7, (byte) 0);
            this.f2597b.g(i);
            this.f2597b.g(aVar.s);
            if (bArr.length > 0) {
                this.f2597b.c(bArr);
            }
            this.f2597b.flush();
        }

        @Override // c.a.c.c
        public synchronized void a(int i, long j) throws IOException {
            if (this.f) {
                throw new IOException("closed");
            }
            if (j == 0 || j > 2147483647L) {
                throw i.c("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", Long.valueOf(j));
            }
            a(i, 4, (byte) 8, (byte) 0);
            this.f2597b.g((int) j);
            this.f2597b.flush();
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public synchronized void close() throws IOException {
            this.f = true;
            this.f2597b.close();
        }

        void a(int i, int i2, byte b2, byte b3) throws IOException {
            if (i.f2582a.isLoggable(Level.FINE)) {
                i.f2582a.fine(b.a(false, i, i2, b2, b3));
            }
            int i3 = this.f2600e;
            if (i2 > i3) {
                throw i.c("FRAME_SIZE_ERROR length > %d: %d", Integer.valueOf(i3), Integer.valueOf(i2));
            }
            if ((Integer.MIN_VALUE & i) == 0) {
                i.b(this.f2597b, i2);
                this.f2597b.i(b2 & 255);
                this.f2597b.i(b3 & 255);
                this.f2597b.g(i & Integer.MAX_VALUE);
                return;
            }
            throw i.c("reserved bit set: %s", Integer.valueOf(i));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static IllegalArgumentException c(String str, Object... objArr) {
        throw new IllegalArgumentException(c.a.c.a(str, objArr));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static IOException d(String str, Object... objArr) throws IOException {
        throw new IOException(c.a.c.a(str, objArr));
    }

    static final class a implements s {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f2584a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        byte f2585b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f2586c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f2587d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        short f2588e;
        private final d.e f;

        @Override // d.s, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }

        public a(d.e eVar) {
            this.f = eVar;
        }

        @Override // d.s
        public long a(d.c cVar, long j) throws IOException {
            while (true) {
                int i = this.f2587d;
                if (i == 0) {
                    this.f.h(this.f2588e);
                    this.f2588e = (short) 0;
                    if ((this.f2585b & 4) != 0) {
                        return -1L;
                    }
                    b();
                } else {
                    long jA = this.f.a(cVar, Math.min(j, i));
                    if (jA == -1) {
                        return -1L;
                    }
                    this.f2587d = (int) (((long) this.f2587d) - jA);
                    return jA;
                }
            }
        }

        @Override // d.s
        public t a() {
            return this.f.a();
        }

        private void b() throws IOException {
            int i = this.f2586c;
            int iB = i.b(this.f);
            this.f2587d = iB;
            this.f2584a = iB;
            byte bI = (byte) (this.f.i() & 255);
            this.f2585b = (byte) (this.f.i() & 255);
            if (i.f2582a.isLoggable(Level.FINE)) {
                i.f2582a.fine(b.a(true, this.f2586c, this.f2584a, bI, this.f2585b));
            }
            int iK = this.f.k() & Integer.MAX_VALUE;
            this.f2586c = iK;
            if (bI != 9) {
                throw i.d("%s != TYPE_CONTINUATION", Byte.valueOf(bI));
            }
            if (iK != i) {
                throw i.d("TYPE_CONTINUATION streamId changed", new Object[0]);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int b(int i, byte b2, short s) throws IOException {
        if ((b2 & 8) != 0) {
            i--;
        }
        if (s <= i) {
            return (short) (i - s);
        }
        throw d("PROTOCOL_ERROR padding %s > remaining length %s", Short.valueOf(s), Integer.valueOf(i));
    }

    static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final String[] f2589a = {"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final String[] f2590b = new String[64];

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final String[] f2591c = new String[256];

        b() {
        }

        static String a(boolean z, int i, int i2, byte b2, byte b3) {
            String[] strArr = f2589a;
            String strA = b2 < strArr.length ? strArr[b2] : c.a.c.a("0x%02x", Byte.valueOf(b2));
            String strA2 = a(b2, b3);
            Object[] objArr = new Object[5];
            objArr[0] = z ? "<<" : ">>";
            objArr[1] = Integer.valueOf(i);
            objArr[2] = Integer.valueOf(i2);
            objArr[3] = strA;
            objArr[4] = strA2;
            return c.a.c.a("%s 0x%08x %5d %-13s %s", objArr);
        }

        static String a(byte b2, byte b3) {
            if (b3 == 0) {
                return "";
            }
            if (b2 != 2 && b2 != 3) {
                if (b2 == 4 || b2 == 6) {
                    return b3 == 1 ? "ACK" : f2591c[b3];
                }
                if (b2 != 7 && b2 != 8) {
                    String[] strArr = f2590b;
                    String str = b3 < strArr.length ? strArr[b3] : f2591c[b3];
                    if (b2 != 5 || (b3 & 4) == 0) {
                        return (b2 != 0 || (b3 & 32) == 0) ? str : str.replace("PRIORITY", "COMPRESSED");
                    }
                    return str.replace("HEADERS", "PUSH_PROMISE");
                }
            }
            return f2591c[b3];
        }

        static {
            int i = 0;
            int i2 = 0;
            while (true) {
                String[] strArr = f2591c;
                if (i2 >= strArr.length) {
                    break;
                }
                strArr[i2] = c.a.c.a("%8s", Integer.toBinaryString(i2)).replace(' ', '0');
                i2++;
            }
            String[] strArr2 = f2590b;
            strArr2[0] = "";
            strArr2[1] = "END_STREAM";
            int[] iArr = {1};
            strArr2[8] = "PADDED";
            for (int i3 = 0; i3 < 1; i3++) {
                int i4 = iArr[i3];
                f2590b[i4 | 8] = f2590b[i4] + "|PADDED";
            }
            String[] strArr3 = f2590b;
            strArr3[4] = "END_HEADERS";
            strArr3[32] = "PRIORITY";
            strArr3[36] = "END_HEADERS|PRIORITY";
            int[] iArr2 = {4, 32, 36};
            for (int i5 = 0; i5 < 3; i5++) {
                int i6 = iArr2[i5];
                for (int i7 = 0; i7 < 1; i7++) {
                    int i8 = iArr[i7];
                    int i9 = i8 | i6;
                    f2590b[i9] = f2590b[i8] + '|' + f2590b[i6];
                    f2590b[i9 | 8] = f2590b[i8] + '|' + f2590b[i6] + "|PADDED";
                }
            }
            while (true) {
                String[] strArr4 = f2590b;
                if (i >= strArr4.length) {
                    return;
                }
                if (strArr4[i] == null) {
                    strArr4[i] = f2591c[i];
                }
                i++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int b(d.e eVar) throws IOException {
        return (eVar.i() & 255) | ((eVar.i() & 255) << 16) | ((eVar.i() & 255) << 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(d.d dVar, int i) throws IOException {
        dVar.i((i >>> 16) & 255);
        dVar.i((i >>> 8) & 255);
        dVar.i(i & 255);
    }
}
