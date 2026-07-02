package org.a.b;

import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.Random;
import org.a.b.a;
import org.a.d.d;
import org.a.e.f;
import org.a.e.h;
import org.a.e.i;

/* JADX INFO: loaded from: classes.dex */
public class d extends a {
    protected ByteBuffer h;
    protected boolean f = false;
    protected List<org.a.d.d> g = new LinkedList();
    private final Random i = new Random();

    @Override // org.a.b.a
    public a.b a(org.a.e.a aVar, h hVar) {
        return (aVar.b("WebSocket-Origin").equals(hVar.b("Origin")) && a(hVar)) ? a.b.MATCHED : a.b.NOT_MATCHED;
    }

    @Override // org.a.b.a
    public a.b a(org.a.e.a aVar) {
        return (aVar.c("Origin") && a((f) aVar)) ? a.b.MATCHED : a.b.NOT_MATCHED;
    }

    @Override // org.a.b.a
    public ByteBuffer a(org.a.d.d dVar) {
        if (dVar.f() != d.a.TEXT) {
            throw new RuntimeException("only text frames supported");
        }
        ByteBuffer byteBufferC = dVar.c();
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(byteBufferC.remaining() + 2);
        byteBufferAllocate.put((byte) 0);
        byteBufferC.mark();
        byteBufferAllocate.put(byteBufferC);
        byteBufferC.reset();
        byteBufferAllocate.put((byte) -1);
        byteBufferAllocate.flip();
        return byteBufferAllocate;
    }

    @Override // org.a.b.a
    public List<org.a.d.d> a(ByteBuffer byteBuffer, boolean z) {
        throw new RuntimeException("not yet implemented");
    }

    @Override // org.a.b.a
    public List<org.a.d.d> a(String str, boolean z) {
        org.a.d.e eVar = new org.a.d.e();
        try {
            eVar.a(ByteBuffer.wrap(org.a.f.b.a(str)));
            eVar.a(true);
            eVar.a(d.a.TEXT);
            eVar.b(z);
            return Collections.singletonList(eVar);
        } catch (org.a.c.b e) {
            throw new org.a.c.f(e);
        }
    }

    @Override // org.a.b.a
    public org.a.e.b a(org.a.e.b bVar) throws org.a.c.d {
        bVar.a("Upgrade", "WebSocket");
        bVar.a("Connection", "Upgrade");
        if (!bVar.c("Origin")) {
            bVar.a("Origin", "random" + this.i.nextInt());
        }
        return bVar;
    }

    @Override // org.a.b.a
    public org.a.e.c a(org.a.e.a aVar, i iVar) throws org.a.c.d {
        iVar.a("Web Socket Protocol Handshake");
        iVar.a("Upgrade", "WebSocket");
        iVar.a("Connection", aVar.b("Connection"));
        iVar.a("WebSocket-Origin", aVar.b("Origin"));
        iVar.a("WebSocket-Location", "ws://" + aVar.b("Host") + aVar.a());
        return iVar;
    }

    protected List<org.a.d.d> e(ByteBuffer byteBuffer) throws org.a.c.b {
        while (byteBuffer.hasRemaining()) {
            byte b2 = byteBuffer.get();
            if (b2 == 0) {
                if (this.f) {
                    throw new org.a.c.c("unexpected START_OF_FRAME");
                }
                this.f = true;
            } else if (b2 == -1) {
                if (!this.f) {
                    throw new org.a.c.c("unexpected END_OF_FRAME");
                }
                if (this.h != null) {
                    this.h.flip();
                    org.a.d.e eVar = new org.a.d.e();
                    eVar.a(this.h);
                    eVar.a(true);
                    eVar.a(d.a.TEXT);
                    this.g.add(eVar);
                    this.h = null;
                    byteBuffer.mark();
                }
                this.f = false;
            } else {
                if (!this.f) {
                    return null;
                }
                if (this.h == null) {
                    this.h = d();
                } else if (!this.h.hasRemaining()) {
                    this.h = f(this.h);
                }
                this.h.put(b2);
            }
        }
        List<org.a.d.d> list = this.g;
        this.g = new LinkedList();
        return list;
    }

    @Override // org.a.b.a
    public List<org.a.d.d> c(ByteBuffer byteBuffer) throws org.a.c.b {
        List<org.a.d.d> listE = e(byteBuffer);
        if (listE == null) {
            throw new org.a.c.b(1002);
        }
        return listE;
    }

    @Override // org.a.b.a
    public void a() {
        this.f = false;
        this.h = null;
    }

    @Override // org.a.b.a
    public a.EnumC0144a b() {
        return a.EnumC0144a.NONE;
    }

    public ByteBuffer d() {
        return ByteBuffer.allocate(f8182b);
    }

    public ByteBuffer f(ByteBuffer byteBuffer) throws org.a.c.b {
        byteBuffer.flip();
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(a(byteBuffer.capacity() * 2));
        byteBufferAllocate.put(byteBuffer);
        return byteBufferAllocate;
    }

    @Override // org.a.b.a
    public a c() {
        return new d();
    }
}
