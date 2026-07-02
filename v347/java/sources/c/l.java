package c;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Logger f2149a = Logger.getLogger(l.class.getName());

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
        return new r() { // from class: c.l.1
            @Override // c.r
            public void a_(c cVar, long j) throws IOException {
                u.a(cVar.f2129b, 0L, j);
                while (j > 0) {
                    tVar.g();
                    o oVar = cVar.f2128a;
                    int iMin = (int) Math.min(j, oVar.f2164c - oVar.f2163b);
                    outputStream.write(oVar.f2162a, oVar.f2163b, iMin);
                    oVar.f2163b += iMin;
                    j -= (long) iMin;
                    cVar.f2129b -= (long) iMin;
                    if (oVar.f2163b == oVar.f2164c) {
                        cVar.f2128a = oVar.a();
                        p.a(oVar);
                    }
                }
            }

            @Override // c.r, java.io.Flushable
            public void flush() throws IOException {
                outputStream.flush();
            }

            @Override // c.r, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                outputStream.close();
            }

            @Override // c.r
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
        return new s() { // from class: c.l.2
            @Override // c.s
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
                    int i = inputStream.read(oVarE.f2162a, oVarE.f2164c, (int) Math.min(j, 8192 - oVarE.f2164c));
                    if (i == -1) {
                        return -1L;
                    }
                    oVarE.f2164c += i;
                    cVar.f2129b += (long) i;
                    return i;
                } catch (AssertionError e) {
                    if (l.a(e)) {
                        throw new IOException(e);
                    }
                    throw e;
                }
            }

            @Override // c.s, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                inputStream.close();
            }

            @Override // c.s
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
        return new a() { // from class: c.l.3
            @Override // c.a
            protected IOException a(IOException iOException) {
                SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
                if (iOException != null) {
                    socketTimeoutException.initCause(iOException);
                }
                return socketTimeoutException;
            }

            @Override // c.a
            protected void a() {
                try {
                    socket.close();
                } catch (AssertionError e) {
                    if (l.a(e)) {
                        l.f2149a.log(Level.WARNING, "Failed to close timed out socket " + socket, (Throwable) e);
                        return;
                    }
                    throw e;
                } catch (Exception e2) {
                    l.f2149a.log(Level.WARNING, "Failed to close timed out socket " + socket, (Throwable) e2);
                }
            }
        };
    }

    static boolean a(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }
}
