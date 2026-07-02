package org.a.a;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Socket;
import java.net.URI;
import java.nio.ByteBuffer;
import java.nio.channels.NotYetConnectedException;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import org.a.a;
import org.a.b;
import org.a.c;
import org.a.c.d;
import org.a.d.d;
import org.a.e.f;
import org.a.e.h;

/* JADX INFO: loaded from: classes.dex */
public abstract class a extends b implements Runnable, org.a.a {
    static final /* synthetic */ boolean $assertionsDisabled;
    private CountDownLatch closeLatch;
    private CountDownLatch connectLatch;
    private int connectTimeout;
    private org.a.b.a draft;
    private c engine;
    private Map<String, String> headers;
    private InputStream istream;
    private OutputStream ostream;
    private Proxy proxy;
    private Socket socket;
    protected URI uri;
    private Thread writeThread;

    public abstract void onClose(int i, String str, boolean z);

    public abstract void onError(Exception exc);

    public abstract void onMessage(String str);

    public abstract void onOpen(h hVar);

    static {
        $assertionsDisabled = !a.class.desiredAssertionStatus();
    }

    public a(URI uri) {
        this(uri, new org.a.b.c());
    }

    public a(URI uri, org.a.b.a aVar) {
        this(uri, aVar, null, 0);
    }

    public a(URI uri, org.a.b.a aVar, Map<String, String> map, int i) {
        this.uri = null;
        this.engine = null;
        this.socket = null;
        this.proxy = Proxy.NO_PROXY;
        this.connectLatch = new CountDownLatch(1);
        this.closeLatch = new CountDownLatch(1);
        this.connectTimeout = 0;
        if (uri == null) {
            throw new IllegalArgumentException();
        }
        if (aVar == null) {
            throw new IllegalArgumentException("null as draft is permitted for `WebSocketServer` only!");
        }
        this.uri = uri;
        this.draft = aVar;
        this.headers = map;
        this.connectTimeout = i;
        this.engine = new c(this, aVar);
    }

    public URI getURI() {
        return this.uri;
    }

    public org.a.b.a getDraft() {
        return this.draft;
    }

    public void connect() {
        if (this.writeThread != null) {
            throw new IllegalStateException("WebSocketClient objects are not reuseable");
        }
        this.writeThread = new Thread(this);
        this.writeThread.start();
    }

    public boolean connectBlocking() throws InterruptedException {
        connect();
        this.connectLatch.await();
        return this.engine.d();
    }

    public void close() {
        if (this.writeThread != null) {
            this.engine.a(1000);
        }
    }

    public void closeBlocking() throws InterruptedException {
        close();
        this.closeLatch.await();
    }

    public void send(String str) throws NotYetConnectedException {
        this.engine.a(str);
    }

    public void send(byte[] bArr) throws NotYetConnectedException {
        this.engine.a(bArr);
    }

    @Override // java.lang.Runnable
    public void run() {
        int i;
        try {
            if (this.socket == null) {
                this.socket = new Socket(this.proxy);
            } else if (this.socket.isClosed()) {
                throw new IOException();
            }
            if (!this.socket.isBound()) {
                this.socket.connect(new InetSocketAddress(this.uri.getHost(), getPort()), this.connectTimeout);
            }
            this.istream = this.socket.getInputStream();
            this.ostream = this.socket.getOutputStream();
            sendHandshake();
            this.writeThread = new Thread(new RunnableC0143a());
            this.writeThread.start();
            byte[] bArr = new byte[c.f8194a];
            while (!isClosed() && (i = this.istream.read(bArr)) != -1) {
                try {
                    this.engine.a(ByteBuffer.wrap(bArr, 0, i));
                } catch (IOException e) {
                    this.engine.a();
                } catch (RuntimeException e2) {
                    onError(e2);
                    this.engine.b(1006, e2.getMessage());
                }
            }
            this.engine.a();
            if (!$assertionsDisabled && !this.socket.isClosed()) {
                throw new AssertionError();
            }
        } catch (Exception e3) {
            onWebsocketError(this.engine, e3);
            this.engine.b(-1, e3.getMessage());
        }
    }

    private int getPort() {
        int port = this.uri.getPort();
        if (port == -1) {
            String scheme = this.uri.getScheme();
            if (scheme.equals("wss")) {
                return 443;
            }
            if (scheme.equals("ws")) {
                return 80;
            }
            throw new RuntimeException("unknown scheme " + scheme);
        }
        return port;
    }

    private void sendHandshake() throws d {
        String path = this.uri.getPath();
        String query = this.uri.getQuery();
        if (path == null || path.length() == 0) {
            path = "/";
        }
        if (query != null) {
            path = path + "?" + query;
        }
        int port = getPort();
        String str = this.uri.getHost() + (port != 80 ? ":" + port : "");
        org.a.e.d dVar = new org.a.e.d();
        dVar.a(path);
        dVar.a("Host", str);
        if (this.headers != null) {
            for (Map.Entry<String, String> entry : this.headers.entrySet()) {
                dVar.a(entry.getKey(), entry.getValue());
            }
        }
        this.engine.a((org.a.e.b) dVar);
    }

    public a.EnumC0142a getReadyState() {
        return this.engine.h();
    }

    @Override // org.a.d
    public final void onWebsocketMessage(org.a.a aVar, String str) {
        onMessage(str);
    }

    @Override // org.a.d
    public final void onWebsocketMessage(org.a.a aVar, ByteBuffer byteBuffer) {
        onMessage(byteBuffer);
    }

    @Override // org.a.b, org.a.d
    public void onWebsocketMessageFragment(org.a.a aVar, org.a.d.d dVar) {
        onFragment(dVar);
    }

    @Override // org.a.d
    public final void onWebsocketOpen(org.a.a aVar, f fVar) {
        this.connectLatch.countDown();
        onOpen((h) fVar);
    }

    @Override // org.a.d
    public final void onWebsocketClose(org.a.a aVar, int i, String str, boolean z) {
        this.connectLatch.countDown();
        this.closeLatch.countDown();
        if (this.writeThread != null) {
            this.writeThread.interrupt();
        }
        try {
            if (this.socket != null) {
                this.socket.close();
            }
        } catch (IOException e) {
            onWebsocketError(this, e);
        }
        onClose(i, str, z);
    }

    @Override // org.a.d
    public final void onWebsocketError(org.a.a aVar, Exception exc) {
        onError(exc);
    }

    @Override // org.a.d
    public final void onWriteDemand(org.a.a aVar) {
    }

    @Override // org.a.d
    public void onWebsocketCloseInitiated(org.a.a aVar, int i, String str) {
        onCloseInitiated(i, str);
    }

    @Override // org.a.d
    public void onWebsocketClosing(org.a.a aVar, int i, String str, boolean z) {
        onClosing(i, str, z);
    }

    public void onCloseInitiated(int i, String str) {
    }

    public void onClosing(int i, String str, boolean z) {
    }

    public org.a.a getConnection() {
        return this.engine;
    }

    @Override // org.a.d
    public InetSocketAddress getLocalSocketAddress(org.a.a aVar) {
        if (this.socket != null) {
            return (InetSocketAddress) this.socket.getLocalSocketAddress();
        }
        return null;
    }

    @Override // org.a.d
    public InetSocketAddress getRemoteSocketAddress(org.a.a aVar) {
        if (this.socket != null) {
            return (InetSocketAddress) this.socket.getRemoteSocketAddress();
        }
        return null;
    }

    public void onMessage(ByteBuffer byteBuffer) {
    }

    public void onFragment(org.a.d.d dVar) {
    }

    /* JADX INFO: renamed from: org.a.a.a$a, reason: collision with other inner class name */
    private class RunnableC0143a implements Runnable {
        private RunnableC0143a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Thread.currentThread().setName("WebsocketWriteThread");
            while (!Thread.interrupted()) {
                try {
                    ByteBuffer byteBufferTake = a.this.engine.f.take();
                    a.this.ostream.write(byteBufferTake.array(), 0, byteBufferTake.limit());
                    a.this.ostream.flush();
                } catch (IOException e) {
                    a.this.engine.a();
                    return;
                } catch (InterruptedException e2) {
                    return;
                }
            }
        }
    }

    public void setProxy(Proxy proxy) {
        if (proxy == null) {
            throw new IllegalArgumentException();
        }
        this.proxy = proxy;
    }

    public void setSocket(Socket socket) {
        if (this.socket != null) {
            throw new IllegalStateException("socket has already been set");
        }
        this.socket = socket;
    }

    public void sendFragmentedFrame(d.a aVar, ByteBuffer byteBuffer, boolean z) {
        this.engine.a(aVar, byteBuffer, z);
    }

    public boolean isOpen() {
        return this.engine.d();
    }

    public boolean isFlushAndClose() {
        return this.engine.f();
    }

    public boolean isClosed() {
        return this.engine.g();
    }

    public boolean isClosing() {
        return this.engine.e();
    }

    public boolean isConnecting() {
        return this.engine.c();
    }

    public boolean hasBufferedData() {
        return this.engine.b();
    }

    public void close(int i) {
        this.engine.j();
    }

    public void close(int i, String str) {
        this.engine.a(i, str);
    }

    public void closeConnection(int i, String str) {
        this.engine.b(i, str);
    }

    public void send(ByteBuffer byteBuffer) throws NotYetConnectedException, IllegalArgumentException {
        this.engine.b(byteBuffer);
    }

    @Override // org.a.a
    public void sendFrame(org.a.d.d dVar) {
        this.engine.sendFrame(dVar);
    }

    @Override // org.a.a
    public InetSocketAddress getLocalSocketAddress() {
        return this.engine.getLocalSocketAddress();
    }

    public InetSocketAddress getRemoteSocketAddress() {
        return this.engine.i();
    }

    public String getResourceDescriptor() {
        return this.uri.getPath();
    }
}
