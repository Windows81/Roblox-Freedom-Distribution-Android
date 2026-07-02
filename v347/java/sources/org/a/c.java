package org.a;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.channels.SelectionKey;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import org.a.a;
import org.a.b.a;
import org.a.b.e;
import org.a.c.g;
import org.a.d.d;
import org.a.e.f;

/* JADX INFO: loaded from: classes.dex */
public class c implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f8194a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f8195b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final List<org.a.b.a> f8196c;
    static final /* synthetic */ boolean h;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public SelectionKey f8197d;
    public ByteChannel e;
    public final BlockingQueue<ByteBuffer> f;
    public final BlockingQueue<ByteBuffer> g;
    private final d k;
    private List<org.a.b.a> l;
    private org.a.b.a m;
    private a.b n;
    private volatile boolean i = false;
    private a.EnumC0142a j = a.EnumC0142a.NOT_YET_CONNECTED;
    private d.a o = null;
    private ByteBuffer p = ByteBuffer.allocate(0);
    private org.a.e.a q = null;
    private String r = null;
    private Integer s = null;
    private Boolean t = null;
    private String u = null;

    static {
        h = !c.class.desiredAssertionStatus();
        f8194a = 16384;
        f8195b = false;
        f8196c = new ArrayList(4);
        f8196c.add(new org.a.b.c());
        f8196c.add(new org.a.b.b());
        f8196c.add(new e());
        f8196c.add(new org.a.b.d());
    }

    public c(d dVar, org.a.b.a aVar) {
        this.m = null;
        if (dVar == null || (aVar == null && this.n == a.b.SERVER)) {
            throw new IllegalArgumentException("parameters must not be null");
        }
        this.f = new LinkedBlockingQueue();
        this.g = new LinkedBlockingQueue();
        this.k = dVar;
        this.n = a.b.CLIENT;
        if (aVar != null) {
            this.m = aVar.c();
        }
    }

    public void a(ByteBuffer byteBuffer) {
        if (!h && !byteBuffer.hasRemaining()) {
            throw new AssertionError();
        }
        if (f8195b) {
            System.out.println("process(" + byteBuffer.remaining() + "): {" + (byteBuffer.remaining() > 1000 ? "too big to display" : new String(byteBuffer.array(), byteBuffer.position(), byteBuffer.remaining())) + "}");
        }
        if (this.j != a.EnumC0142a.NOT_YET_CONNECTED) {
            d(byteBuffer);
        } else if (c(byteBuffer)) {
            if (!h && this.p.hasRemaining() == byteBuffer.hasRemaining() && byteBuffer.hasRemaining()) {
                throw new AssertionError();
            }
            if (byteBuffer.hasRemaining()) {
                d(byteBuffer);
            } else if (this.p.hasRemaining()) {
                d(this.p);
            }
        }
        if (!h && !e() && !f() && byteBuffer.hasRemaining()) {
            throw new AssertionError();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01fa  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean c(java.nio.ByteBuffer r9) {
        /*
            Method dump skipped, instruction units count: 533
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: org.a.c.c(java.nio.ByteBuffer):boolean");
    }

    private void d(ByteBuffer byteBuffer) {
        String strB;
        int iA;
        try {
            for (org.a.d.d dVar : this.m.c(byteBuffer)) {
                if (f8195b) {
                    System.out.println("matched frame: " + dVar);
                }
                d.a aVarF = dVar.f();
                boolean zD = dVar.d();
                if (aVarF == d.a.CLOSING) {
                    if (!(dVar instanceof org.a.d.a)) {
                        strB = "";
                        iA = 1005;
                    } else {
                        org.a.d.a aVar = (org.a.d.a) dVar;
                        iA = aVar.a();
                        strB = aVar.b();
                    }
                    if (this.j == a.EnumC0142a.CLOSING) {
                        a(iA, strB, true);
                    } else if (this.m.b() == a.EnumC0144a.TWOWAY) {
                        c(iA, strB, true);
                    } else {
                        b(iA, strB, false);
                    }
                } else if (aVarF == d.a.PING) {
                    this.k.onWebsocketPing(this, dVar);
                } else if (aVarF == d.a.PONG) {
                    this.k.onWebsocketPong(this, dVar);
                } else if (!zD || aVarF == d.a.CONTINUOUS) {
                    if (aVarF != d.a.CONTINUOUS) {
                        if (this.o != null) {
                            throw new org.a.c.b(1002, "Previous continuous frame sequence not completed.");
                        }
                        this.o = aVarF;
                    } else if (zD) {
                        if (this.o == null) {
                            throw new org.a.c.b(1002, "Continuous frame sequence was not started.");
                        }
                        this.o = null;
                    } else if (this.o == null) {
                        throw new org.a.c.b(1002, "Continuous frame sequence was not started.");
                    }
                    try {
                        this.k.onWebsocketMessageFragment(this, dVar);
                    } catch (RuntimeException e) {
                        this.k.onWebsocketError(this, e);
                    }
                } else {
                    if (this.o != null) {
                        throw new org.a.c.b(1002, "Continuous frame sequence not completed.");
                    }
                    if (aVarF == d.a.TEXT) {
                        try {
                            this.k.onWebsocketMessage(this, org.a.f.b.a(dVar.c()));
                        } catch (RuntimeException e2) {
                            this.k.onWebsocketError(this, e2);
                        }
                    } else if (aVarF == d.a.BINARY) {
                        try {
                            this.k.onWebsocketMessage(this, dVar.c());
                        } catch (RuntimeException e3) {
                            this.k.onWebsocketError(this, e3);
                        }
                    } else {
                        throw new org.a.c.b(1002, "non control or continious frame expected");
                    }
                }
            }
        } catch (org.a.c.b e4) {
            this.k.onWebsocketError(this, e4);
            a(e4);
        }
    }

    private void c(int i, String str, boolean z) {
        if (this.j != a.EnumC0142a.CLOSING && this.j != a.EnumC0142a.CLOSED) {
            if (this.j == a.EnumC0142a.OPEN) {
                if (i == 1006) {
                    if (!h && z) {
                        throw new AssertionError();
                    }
                    this.j = a.EnumC0142a.CLOSING;
                    b(i, str, false);
                    return;
                }
                if (this.m.b() != a.EnumC0144a.NONE) {
                    if (!z) {
                        try {
                            try {
                                this.k.onWebsocketCloseInitiated(this, i, str);
                            } catch (RuntimeException e) {
                                this.k.onWebsocketError(this, e);
                            }
                        } catch (org.a.c.b e2) {
                            this.k.onWebsocketError(this, e2);
                            b(1006, "generated frame is invalid", false);
                        }
                    }
                    sendFrame(new org.a.d.b(i, str));
                }
                b(i, str, z);
            } else if (i == -3) {
                if (!h && !z) {
                    throw new AssertionError();
                }
                b(-3, str, true);
            } else {
                b(-1, str, false);
            }
            if (i == 1002) {
                b(i, str, z);
            }
            this.j = a.EnumC0142a.CLOSING;
            this.p = null;
        }
    }

    public void a(int i, String str) {
        c(i, str, false);
    }

    protected synchronized void a(int i, String str, boolean z) {
        if (this.j != a.EnumC0142a.CLOSED) {
            if (this.f8197d != null) {
                this.f8197d.cancel();
            }
            if (this.e != null) {
                try {
                    this.e.close();
                } catch (IOException e) {
                    this.k.onWebsocketError(this, e);
                }
            }
            try {
                this.k.onWebsocketClose(this, i, str, z);
            } catch (RuntimeException e2) {
                this.k.onWebsocketError(this, e2);
            }
            if (this.m != null) {
                this.m.a();
            }
            this.q = null;
            this.j = a.EnumC0142a.CLOSED;
            this.f.clear();
        }
    }

    protected void a(int i, boolean z) {
        a(i, "", z);
    }

    public void b(int i, String str) {
        a(i, str, false);
    }

    protected synchronized void b(int i, String str, boolean z) {
        if (!this.i) {
            this.s = Integer.valueOf(i);
            this.r = str;
            this.t = Boolean.valueOf(z);
            this.i = true;
            this.k.onWriteDemand(this);
            try {
                this.k.onWebsocketClosing(this, i, str, z);
            } catch (RuntimeException e) {
                this.k.onWebsocketError(this, e);
            }
            if (this.m != null) {
                this.m.a();
            }
            this.q = null;
        }
    }

    public void a() {
        if (h() == a.EnumC0142a.NOT_YET_CONNECTED) {
            a(-1, true);
            return;
        }
        if (this.i) {
            a(this.s.intValue(), this.r, this.t.booleanValue());
            return;
        }
        if (this.m.b() == a.EnumC0144a.NONE) {
            a(1000, true);
            return;
        }
        if (this.m.b() == a.EnumC0144a.ONEWAY) {
            if (this.n == a.b.SERVER) {
                a(1006, true);
                return;
            } else {
                a(1000, true);
                return;
            }
        }
        a(1006, true);
    }

    public void a(int i) {
        c(i, "", false);
    }

    public void a(org.a.c.b bVar) {
        c(bVar.a(), bVar.getMessage(), false);
    }

    public void a(String str) throws g {
        if (str == null) {
            throw new IllegalArgumentException("Cannot send 'null' data to a WebSocketImpl.");
        }
        a(this.m.a(str, this.n == a.b.CLIENT));
    }

    public void b(ByteBuffer byteBuffer) throws g, IllegalArgumentException {
        if (byteBuffer == null) {
            throw new IllegalArgumentException("Cannot send 'null' data to a WebSocketImpl.");
        }
        a(this.m.a(byteBuffer, this.n == a.b.CLIENT));
    }

    public void a(byte[] bArr) throws g, IllegalArgumentException {
        b(ByteBuffer.wrap(bArr));
    }

    private void a(Collection<org.a.d.d> collection) {
        if (!d()) {
            throw new g();
        }
        Iterator<org.a.d.d> it = collection.iterator();
        while (it.hasNext()) {
            sendFrame(it.next());
        }
    }

    public void a(d.a aVar, ByteBuffer byteBuffer, boolean z) {
        a(this.m.a(aVar, byteBuffer, z));
    }

    @Override // org.a.a
    public void sendFrame(org.a.d.d dVar) {
        if (f8195b) {
            System.out.println("send frame: " + dVar);
        }
        f(this.m.a(dVar));
    }

    public boolean b() {
        return !this.f.isEmpty();
    }

    private a.b e(ByteBuffer byteBuffer) throws org.a.c.a {
        byteBuffer.mark();
        if (byteBuffer.limit() > org.a.b.a.f8183c.length) {
            return a.b.NOT_MATCHED;
        }
        if (byteBuffer.limit() < org.a.b.a.f8183c.length) {
            throw new org.a.c.a(org.a.b.a.f8183c.length);
        }
        int i = 0;
        while (byteBuffer.hasRemaining()) {
            if (org.a.b.a.f8183c[i] == byteBuffer.get()) {
                i++;
            } else {
                byteBuffer.reset();
                return a.b.NOT_MATCHED;
            }
        }
        return a.b.MATCHED;
    }

    public void a(org.a.e.b bVar) throws org.a.c.d {
        if (!h && this.j == a.EnumC0142a.CONNECTING) {
            throw new AssertionError("shall only be called once");
        }
        this.q = this.m.a(bVar);
        this.u = bVar.a();
        if (!h && this.u == null) {
            throw new AssertionError();
        }
        try {
            this.k.onWebsocketHandshakeSentAsClient(this, this.q);
            a(this.m.a(this.q, this.n));
        } catch (RuntimeException e) {
            this.k.onWebsocketError(this, e);
            throw new org.a.c.d("rejected because of" + e);
        } catch (org.a.c.b e2) {
            throw new org.a.c.d("Handshake data rejected by client.");
        }
    }

    private void f(ByteBuffer byteBuffer) {
        if (f8195b) {
            System.out.println("write(" + byteBuffer.remaining() + "): {" + (byteBuffer.remaining() > 1000 ? "too big to display" : new String(byteBuffer.array())) + "}");
        }
        this.f.add(byteBuffer);
        this.k.onWriteDemand(this);
    }

    private void a(List<ByteBuffer> list) {
        Iterator<ByteBuffer> it = list.iterator();
        while (it.hasNext()) {
            f(it.next());
        }
    }

    private void a(f fVar) {
        if (f8195b) {
            System.out.println("open using draft: " + this.m.getClass().getSimpleName());
        }
        this.j = a.EnumC0142a.OPEN;
        try {
            this.k.onWebsocketOpen(this, fVar);
        } catch (RuntimeException e) {
            this.k.onWebsocketError(this, e);
        }
    }

    public boolean c() {
        if (h || !this.i || this.j == a.EnumC0142a.CONNECTING) {
            return this.j == a.EnumC0142a.CONNECTING;
        }
        throw new AssertionError();
    }

    public boolean d() {
        if (!h && this.j == a.EnumC0142a.OPEN && this.i) {
            throw new AssertionError();
        }
        return this.j == a.EnumC0142a.OPEN;
    }

    public boolean e() {
        return this.j == a.EnumC0142a.CLOSING;
    }

    public boolean f() {
        return this.i;
    }

    public boolean g() {
        return this.j == a.EnumC0142a.CLOSED;
    }

    public a.EnumC0142a h() {
        return this.j;
    }

    public int hashCode() {
        return super.hashCode();
    }

    public String toString() {
        return super.toString();
    }

    public InetSocketAddress i() {
        return this.k.getRemoteSocketAddress(this);
    }

    @Override // org.a.a
    public InetSocketAddress getLocalSocketAddress() {
        return this.k.getLocalSocketAddress(this);
    }

    public void j() {
        a(1000);
    }
}
