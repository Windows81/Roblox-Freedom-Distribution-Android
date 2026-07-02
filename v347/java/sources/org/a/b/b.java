package org.a.b;

import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.Random;
import org.a.a;
import org.a.b.a;
import org.a.d.d;
import org.a.e.f;
import org.a.e.h;
import org.a.e.i;

/* JADX INFO: loaded from: classes.dex */
public class b extends org.a.b.a {
    static final /* synthetic */ boolean f;
    private ByteBuffer g;
    private org.a.d.d h = null;
    private final Random i = new Random();

    static {
        f = !b.class.desiredAssertionStatus();
    }

    private class a extends Throwable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f8193b;

        public a(int i) {
            this.f8193b = i;
        }

        public int a() {
            return this.f8193b;
        }
    }

    public static int b(f fVar) {
        String strB = fVar.b("Sec-WebSocket-Version");
        if (strB.length() <= 0) {
            return -1;
        }
        try {
            return new Integer(strB.trim()).intValue();
        } catch (NumberFormatException e) {
            return -1;
        }
    }

    @Override // org.a.b.a
    public a.b a(org.a.e.a aVar, h hVar) throws org.a.c.d {
        if (!aVar.c("Sec-WebSocket-Key") || !hVar.c("Sec-WebSocket-Accept")) {
            return a.b.NOT_MATCHED;
        }
        if (a(aVar.b("Sec-WebSocket-Key")).equals(hVar.b("Sec-WebSocket-Accept"))) {
            return a.b.MATCHED;
        }
        return a.b.NOT_MATCHED;
    }

    @Override // org.a.b.a
    public a.b a(org.a.e.a aVar) throws org.a.c.d {
        int iB = b(aVar);
        if (iB == 7 || iB == 8) {
            return a((f) aVar) ? a.b.MATCHED : a.b.NOT_MATCHED;
        }
        return a.b.NOT_MATCHED;
    }

    @Override // org.a.b.a
    public ByteBuffer a(org.a.d.d dVar) {
        int i;
        int i2 = 0;
        ByteBuffer byteBufferC = dVar.c();
        boolean z = this.f8184d == a.b.CLIENT;
        if (byteBufferC.remaining() <= 125) {
            i = 1;
        } else {
            i = byteBufferC.remaining() <= 65535 ? 2 : 8;
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate((z ? 4 : 0) + (i > 1 ? i + 1 : i) + 1 + byteBufferC.remaining());
        byteBufferAllocate.put((byte) (((byte) (dVar.d() ? -128 : 0)) | a(dVar.f())));
        byte[] bArrA = a(byteBufferC.remaining(), i);
        if (!f && bArrA.length != i) {
            throw new AssertionError();
        }
        if (i == 1) {
            byteBufferAllocate.put((byte) (bArrA[0] | (z ? (byte) -128 : (byte) 0)));
        } else if (i == 2) {
            byteBufferAllocate.put((byte) ((z ? (byte) -128 : (byte) 0) | 126));
            byteBufferAllocate.put(bArrA);
        } else if (i == 8) {
            byteBufferAllocate.put((byte) ((z ? (byte) -128 : (byte) 0) | 127));
            byteBufferAllocate.put(bArrA);
        } else {
            throw new RuntimeException("Size representation not supported/specified");
        }
        if (z) {
            ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(4);
            byteBufferAllocate2.putInt(this.i.nextInt());
            byteBufferAllocate.put(byteBufferAllocate2.array());
            while (byteBufferC.hasRemaining()) {
                byteBufferAllocate.put((byte) (byteBufferC.get() ^ byteBufferAllocate2.get(i2 % 4)));
                i2++;
            }
        } else {
            byteBufferAllocate.put(byteBufferC);
        }
        if (!f && byteBufferAllocate.remaining() != 0) {
            throw new AssertionError(byteBufferAllocate.remaining());
        }
        byteBufferAllocate.flip();
        return byteBufferAllocate;
    }

    @Override // org.a.b.a
    public List<org.a.d.d> a(ByteBuffer byteBuffer, boolean z) {
        org.a.d.e eVar = new org.a.d.e();
        try {
            eVar.a(byteBuffer);
            eVar.a(true);
            eVar.a(d.a.BINARY);
            eVar.b(z);
            return Collections.singletonList(eVar);
        } catch (org.a.c.b e) {
            throw new org.a.c.f(e);
        }
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

    private byte a(d.a aVar) {
        if (aVar == d.a.CONTINUOUS) {
            return (byte) 0;
        }
        if (aVar == d.a.TEXT) {
            return (byte) 1;
        }
        if (aVar == d.a.BINARY) {
            return (byte) 2;
        }
        if (aVar == d.a.CLOSING) {
            return (byte) 8;
        }
        if (aVar == d.a.PING) {
            return (byte) 9;
        }
        if (aVar == d.a.PONG) {
            return (byte) 10;
        }
        throw new RuntimeException("Don't know how to handle " + aVar.toString());
    }

    private String a(String str) {
        try {
            return org.a.f.a.a(MessageDigest.getInstance("SHA1").digest((str.trim() + "258EAFA5-E914-47DA-95CA-C5AB0DC85B11").getBytes()));
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // org.a.b.a
    public org.a.e.b a(org.a.e.b bVar) {
        bVar.a("Upgrade", "websocket");
        bVar.a("Connection", "Upgrade");
        bVar.a("Sec-WebSocket-Version", "8");
        byte[] bArr = new byte[16];
        this.i.nextBytes(bArr);
        bVar.a("Sec-WebSocket-Key", org.a.f.a.a(bArr));
        return bVar;
    }

    @Override // org.a.b.a
    public org.a.e.c a(org.a.e.a aVar, i iVar) throws org.a.c.d {
        iVar.a("Upgrade", "websocket");
        iVar.a("Connection", aVar.b("Connection"));
        iVar.a("Switching Protocols");
        String strB = aVar.b("Sec-WebSocket-Key");
        if (strB == null) {
            throw new org.a.c.d("missing Sec-WebSocket-Key");
        }
        iVar.a("Sec-WebSocket-Accept", a(strB));
        return iVar;
    }

    private byte[] a(long j, int i) {
        byte[] bArr = new byte[i];
        int i2 = (i * 8) - 8;
        for (int i3 = 0; i3 < i; i3++) {
            bArr[i3] = (byte) (j >>> (i2 - (i3 * 8)));
        }
        return bArr;
    }

    private d.a a(byte b2) throws org.a.c.c {
        switch (b2) {
            case 0:
                return d.a.CONTINUOUS;
            case 1:
                return d.a.TEXT;
            case 2:
                return d.a.BINARY;
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            default:
                throw new org.a.c.c("unknow optcode " + ((int) b2));
            case 8:
                return d.a.CLOSING;
            case 9:
                return d.a.PING;
            case 10:
                return d.a.PONG;
        }
    }

    @Override // org.a.b.a
    public List<org.a.d.d> c(ByteBuffer byteBuffer) throws org.a.c.b {
        LinkedList linkedList = new LinkedList();
        if (this.g != null) {
            try {
                byteBuffer.mark();
                int iRemaining = byteBuffer.remaining();
                int iRemaining2 = this.g.remaining();
                if (iRemaining2 > iRemaining) {
                    this.g.put(byteBuffer.array(), byteBuffer.position(), iRemaining);
                    byteBuffer.position(iRemaining + byteBuffer.position());
                    return Collections.emptyList();
                }
                this.g.put(byteBuffer.array(), byteBuffer.position(), iRemaining2);
                byteBuffer.position(byteBuffer.position() + iRemaining2);
                linkedList.add(e((ByteBuffer) this.g.duplicate().position(0)));
                this.g = null;
            } catch (a e) {
                this.g.limit();
                ByteBuffer byteBufferAllocate = ByteBuffer.allocate(a(e.a()));
                if (!f && byteBufferAllocate.limit() <= this.g.limit()) {
                    throw new AssertionError();
                }
                this.g.rewind();
                byteBufferAllocate.put(this.g);
                this.g = byteBufferAllocate;
                return c(byteBuffer);
            }
        }
        while (byteBuffer.hasRemaining()) {
            byteBuffer.mark();
            try {
                linkedList.add(e(byteBuffer));
            } catch (a e2) {
                byteBuffer.reset();
                this.g = ByteBuffer.allocate(a(e2.a()));
                this.g.put(byteBuffer);
            }
        }
        return linkedList;
    }

    public org.a.d.d e(ByteBuffer byteBuffer) throws org.a.c.b, a {
        org.a.d.c eVar;
        int i = 2;
        int iRemaining = byteBuffer.remaining();
        if (iRemaining < 2) {
            throw new a(2);
        }
        byte b2 = byteBuffer.get();
        boolean z = (b2 >> 8) != 0;
        byte b3 = (byte) ((b2 & 127) >> 4);
        if (b3 != 0) {
            throw new org.a.c.c("bad rsv " + ((int) b3));
        }
        byte b4 = byteBuffer.get();
        boolean z2 = (b4 & (-128)) != 0;
        int iIntValue = (byte) (b4 & 127);
        d.a aVarA = a((byte) (b2 & 15));
        if (!z && (aVarA == d.a.PING || aVarA == d.a.PONG || aVarA == d.a.CLOSING)) {
            throw new org.a.c.c("control frames may no be fragmented");
        }
        if (iIntValue < 0 || iIntValue > 125) {
            if (aVarA == d.a.PING || aVarA == d.a.PONG || aVarA == d.a.CLOSING) {
                throw new org.a.c.c("more than 125 octets");
            }
            if (iIntValue == 126) {
                if (iRemaining < 4) {
                    throw new a(4);
                }
                iIntValue = new BigInteger(new byte[]{0, byteBuffer.get(), byteBuffer.get()}).intValue();
                i = 4;
            } else {
                if (iRemaining < 10) {
                    throw new a(10);
                }
                byte[] bArr = new byte[8];
                for (int i2 = 0; i2 < 8; i2++) {
                    bArr[i2] = byteBuffer.get();
                }
                long jLongValue = new BigInteger(bArr).longValue();
                if (jLongValue <= 2147483647L) {
                    i = 10;
                    iIntValue = (int) jLongValue;
                } else {
                    throw new org.a.c.e("Payloadsize is to big...");
                }
            }
        }
        int i3 = (z2 ? 4 : 0) + i + iIntValue;
        if (iRemaining < i3) {
            throw new a(i3);
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(a(iIntValue));
        if (z2) {
            byte[] bArr2 = new byte[4];
            byteBuffer.get(bArr2);
            for (int i4 = 0; i4 < iIntValue; i4++) {
                byteBufferAllocate.put((byte) (byteBuffer.get() ^ bArr2[i4 % 4]));
            }
        } else {
            byteBufferAllocate.put(byteBuffer.array(), byteBuffer.position(), byteBufferAllocate.limit());
            byteBuffer.position(byteBuffer.position() + byteBufferAllocate.limit());
        }
        if (aVarA == d.a.CLOSING) {
            eVar = new org.a.d.b();
        } else {
            eVar = new org.a.d.e();
            eVar.a(z);
            eVar.a(aVarA);
        }
        byteBufferAllocate.flip();
        eVar.a(byteBufferAllocate);
        return eVar;
    }

    @Override // org.a.b.a
    public void a() {
        this.g = null;
    }

    @Override // org.a.b.a
    public org.a.b.a c() {
        return new b();
    }

    @Override // org.a.b.a
    public a.EnumC0144a b() {
        return a.EnumC0144a.TWOWAY;
    }
}
