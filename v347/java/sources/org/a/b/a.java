package org.a.b;

import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.a.a;
import org.a.d.d;
import org.a.e.f;
import org.a.e.h;
import org.a.e.i;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f8181a = 1000;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static int f8182b = 64;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final byte[] f8183c = org.a.f.b.a("<policy-file-request/>\u0000");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected a.b f8184d = null;
    protected d.a e = null;

    /* JADX INFO: renamed from: org.a.b.a$a, reason: collision with other inner class name */
    public enum EnumC0144a {
        NONE,
        ONEWAY,
        TWOWAY
    }

    public enum b {
        MATCHED,
        NOT_MATCHED
    }

    public abstract ByteBuffer a(org.a.d.d dVar);

    public abstract List<org.a.d.d> a(String str, boolean z);

    public abstract List<org.a.d.d> a(ByteBuffer byteBuffer, boolean z);

    public abstract b a(org.a.e.a aVar) throws org.a.c.d;

    public abstract b a(org.a.e.a aVar, h hVar) throws org.a.c.d;

    public abstract org.a.e.b a(org.a.e.b bVar) throws org.a.c.d;

    public abstract org.a.e.c a(org.a.e.a aVar, i iVar) throws org.a.c.d;

    public abstract void a();

    public abstract EnumC0144a b();

    public abstract List<org.a.d.d> c(ByteBuffer byteBuffer) throws org.a.c.b;

    public abstract a c();

    public static ByteBuffer a(ByteBuffer byteBuffer) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(byteBuffer.remaining());
        byte b2 = 48;
        while (byteBuffer.hasRemaining()) {
            byte b3 = byteBuffer.get();
            byteBufferAllocate.put(b3);
            if (b2 == 13 && b3 == 10) {
                byteBufferAllocate.limit(byteBufferAllocate.position() - 2);
                byteBufferAllocate.position(0);
                return byteBufferAllocate;
            }
            b2 = b3;
        }
        byteBuffer.position(byteBuffer.position() - byteBufferAllocate.position());
        return null;
    }

    public static String b(ByteBuffer byteBuffer) {
        ByteBuffer byteBufferA = a(byteBuffer);
        if (byteBufferA == null) {
            return null;
        }
        return org.a.f.b.a(byteBufferA.array(), 0, byteBufferA.limit());
    }

    public static org.a.e.c a(ByteBuffer byteBuffer, a.b bVar) throws org.a.c.d, org.a.c.a {
        org.a.e.c cVar;
        String strB = b(byteBuffer);
        if (strB == null) {
            throw new org.a.c.a(byteBuffer.capacity() + 128);
        }
        String[] strArrSplit = strB.split(" ", 3);
        if (strArrSplit.length != 3) {
            throw new org.a.c.d();
        }
        if (bVar == a.b.CLIENT) {
            org.a.e.e eVar = new org.a.e.e();
            org.a.e.e eVar2 = eVar;
            eVar2.a(Short.parseShort(strArrSplit[1]));
            eVar2.a(strArrSplit[2]);
            cVar = eVar;
        } else {
            org.a.e.d dVar = new org.a.e.d();
            dVar.a(strArrSplit[1]);
            cVar = dVar;
        }
        String strB2 = b(byteBuffer);
        while (strB2 != null && strB2.length() > 0) {
            String[] strArrSplit2 = strB2.split(":", 2);
            if (strArrSplit2.length != 2) {
                throw new org.a.c.d("not an http header");
            }
            cVar.a(strArrSplit2[0], strArrSplit2[1].replaceFirst("^ +", ""));
            strB2 = b(byteBuffer);
        }
        if (strB2 == null) {
            throw new org.a.c.a();
        }
        return cVar;
    }

    protected boolean a(f fVar) {
        return fVar.b("Upgrade").equalsIgnoreCase("websocket") && fVar.b("Connection").toLowerCase(Locale.ENGLISH).contains("upgrade");
    }

    public List<org.a.d.d> a(d.a aVar, ByteBuffer byteBuffer, boolean z) {
        if (aVar != d.a.BINARY && aVar != d.a.TEXT && aVar != d.a.TEXT) {
            throw new IllegalArgumentException("Only Opcode.BINARY or  Opcode.TEXT are allowed");
        }
        if (this.e != null) {
            this.e = d.a.CONTINUOUS;
        } else {
            this.e = aVar;
        }
        org.a.d.e eVar = new org.a.d.e(this.e);
        try {
            eVar.a(byteBuffer);
            eVar.a(z);
            if (z) {
                this.e = null;
            } else {
                this.e = aVar;
            }
            return Collections.singletonList(eVar);
        } catch (org.a.c.b e) {
            throw new RuntimeException(e);
        }
    }

    public List<ByteBuffer> a(f fVar, a.b bVar) {
        return a(fVar, bVar, true);
    }

    public List<ByteBuffer> a(f fVar, a.b bVar, boolean z) {
        StringBuilder sb = new StringBuilder(100);
        if (fVar instanceof org.a.e.a) {
            sb.append("GET ");
            sb.append(((org.a.e.a) fVar).a());
            sb.append(" HTTP/1.1");
        } else if (fVar instanceof h) {
            sb.append("HTTP/1.1 101 " + ((h) fVar).a());
        } else {
            throw new RuntimeException("unknow role");
        }
        sb.append("\r\n");
        Iterator<String> itB = fVar.b();
        while (itB.hasNext()) {
            String next = itB.next();
            String strB = fVar.b(next);
            sb.append(next);
            sb.append(": ");
            sb.append(strB);
            sb.append("\r\n");
        }
        sb.append("\r\n");
        byte[] bArrB = org.a.f.b.b(sb.toString());
        byte[] bArrC = z ? fVar.c() : null;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate((bArrC == null ? 0 : bArrC.length) + bArrB.length);
        byteBufferAllocate.put(bArrB);
        if (bArrC != null) {
            byteBufferAllocate.put(bArrC);
        }
        byteBufferAllocate.flip();
        return Collections.singletonList(byteBufferAllocate);
    }

    public f d(ByteBuffer byteBuffer) throws org.a.c.d {
        return a(byteBuffer, this.f8184d);
    }

    public int a(int i) throws org.a.c.b {
        if (i < 0) {
            throw new org.a.c.b(1002, "Negative count");
        }
        return i;
    }

    public void a(a.b bVar) {
        this.f8184d = bVar;
    }
}
