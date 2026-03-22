package d;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Logger f7784a = Logger.getLogger(l.class.getName());

    private l() {
    }

    public static e a(s sVar) {
        return new n(sVar);
    }

    public static d a(r rVar) {
        return new m(rVar);
    }

    private static r a(final OutputStream outputStream, final t tVar) {
        if (outputStream == null) {
            throw new IllegalArgumentException("out == null");
        }
        if (tVar == null) {
            throw new IllegalArgumentException("timeout == null");
        }
        return new r() { // from class: d.l.1
            @Override // d.r
            public void a_(c cVar, long j) throws IOException {
                u.a(cVar.f7762b, 0L, j);
                while (j > 0) {
                    tVar.g();
                    o oVar = cVar.f7761a;
                    int iMin = (int) Math.min(j, oVar.f7799c - oVar.f7798b);
                    outputStream.write(oVar.f7797a, oVar.f7798b, iMin);
                    oVar.f7798b += iMin;
                    long j2 = iMin;
                    j -= j2;
                    cVar.f7762b -= j2;
                    if (oVar.f7798b == oVar.f7799c) {
                        cVar.f7761a = oVar.a();
                        p.a(oVar);
                    }
                }
            }

            @Override // d.r, java.io.Flushable
            public void flush() throws IOException {
                outputStream.flush();
            }

            @Override // d.r, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                outputStream.close();
            }

            @Override // d.r
            public t a() {
                return tVar;
            }

            public String toString() {
                return "sink(" + outputStream + ")";
            }
        };
    }

    public static r a(Socket socket) throws IOException {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        }
        a aVarC = c(socket);
        return aVarC.a(a(socket.getOutputStream(), aVarC));
    }

    private static s a(final InputStream inputStream, final t tVar) {
        if (inputStream == null) {
            throw new IllegalArgumentException("in == null");
        }
        if (tVar == null) {
            throw new IllegalArgumentException("timeout == null");
        }
        return new s() { // from class: d.l.2
            @Override // d.s
            public long a(c cVar, long j) throws IOException {
                if (j < 0) {
                    throw new IllegalArgumentException("byteCount < 0: " + j);
                }
                if (j == 0) {
                    return 0L;
                }
                try {
                    tVar.g();
                    o oVarE = cVar.e(1);
                    int i = inputStream.read(oVarE.f7797a, oVarE.f7799c, (int) Math.min(j, 8192 - oVarE.f7799c));
                    if (i == -1) {
                        return -1L;
                    }
                    oVarE.f7799c += i;
                    long j2 = i;
                    cVar.f7762b += j2;
                    return j2;
                } catch (AssertionError e2) {
                    if (l.a(e2)) {
                        throw new IOException(e2);
                    }
                    throw e2;
                }
            }

            @Override // d.s, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                inputStream.close();
            }

            @Override // d.s
            public t a() {
                return tVar;
            }

            public String toString() {
                return "source(" + inputStream + ")";
            }
        };
    }

    public static s b(Socket socket) throws IOException {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        }
        a aVarC = c(socket);
        return aVarC.a(a(socket.getInputStream(), aVarC));
    }

    private static a c(final Socket socket) {
        return new a() { // from class: d.l.3
            @Override // d.a
            protected IOException a(IOException iOException) {
                SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
                if (iOException != null) {
                    socketTimeoutException.initCause(iOException);
                }
                return socketTimeoutException;
            }

            @Override // d.a
            protected void a() {
                try {
                    socket.close();
                } catch (AssertionError e2) {
                    if (l.a(e2)) {
                        l.f7784a.log(Level.WARNING, "Failed to close timed out socket " + socket, (Throwable) e2);
                        return;
                    }
                    throw e2;
                } catch (Exception e3) {
                    l.f7784a.log(Level.WARNING, "Failed to close timed out socket " + socket, (Throwable) e3);
                }
            }
        };
    }

    static boolean a(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }
}
