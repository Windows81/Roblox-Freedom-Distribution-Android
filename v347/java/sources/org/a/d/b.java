package org.a.d;

import java.nio.ByteBuffer;
import org.a.d.d;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class b extends e implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final ByteBuffer f8200a = ByteBuffer.allocate(0);
    private int f;
    private String g;

    public b() {
        super(d.a.CLOSING);
        a(true);
    }

    public b(int i) throws org.a.c.b {
        super(d.a.CLOSING);
        a(true);
        a(i, "");
    }

    public b(int i, String str) throws org.a.c.b {
        super(d.a.CLOSING);
        a(true);
        a(i, str);
    }

    private void a(int i, String str) throws org.a.c.b {
        String str2 = str == null ? "" : str;
        if (i == 1015) {
            str2 = "";
            i = 1005;
        }
        if (i == 1005) {
            if (str2.length() > 0) {
                throw new org.a.c.b(1002, "A close frame must have a closecode if it has a reason");
            }
            return;
        }
        byte[] bArrA = org.a.f.b.a(str2);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        byteBufferAllocate.putInt(i);
        byteBufferAllocate.position(2);
        ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(bArrA.length + 2);
        byteBufferAllocate2.put(byteBufferAllocate);
        byteBufferAllocate2.put(bArrA);
        byteBufferAllocate2.rewind();
        a(byteBufferAllocate2);
    }

    private void g() throws org.a.c.c {
        this.f = 1005;
        ByteBuffer byteBufferC = super.c();
        byteBufferC.mark();
        if (byteBufferC.remaining() >= 2) {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
            byteBufferAllocate.position(2);
            byteBufferAllocate.putShort(byteBufferC.getShort());
            byteBufferAllocate.position(0);
            this.f = byteBufferAllocate.getInt();
            if (this.f == 1006 || this.f == 1015 || this.f == 1005 || this.f > 4999 || this.f < 1000 || this.f == 1004) {
                throw new org.a.c.c("closecode must not be sent over the wire: " + this.f);
            }
        }
        byteBufferC.reset();
    }

    @Override // org.a.d.a
    public int a() {
        return this.f;
    }

    private void h() throws org.a.c.b {
        if (this.f == 1005) {
            this.g = org.a.f.b.a(super.c());
            return;
        }
        ByteBuffer byteBufferC = super.c();
        int iPosition = byteBufferC.position();
        try {
            try {
                byteBufferC.position(byteBufferC.position() + 2);
                this.g = org.a.f.b.a(byteBufferC);
            } catch (IllegalArgumentException e) {
                throw new org.a.c.c(e);
            }
        } finally {
            byteBufferC.position(iPosition);
        }
    }

    @Override // org.a.d.a
    public String b() {
        return this.g;
    }

    @Override // org.a.d.e
    public String toString() {
        return super.toString() + "code: " + this.f;
    }

    @Override // org.a.d.e, org.a.d.c
    public void a(ByteBuffer byteBuffer) throws org.a.c.b {
        super.a(byteBuffer);
        g();
        h();
    }

    @Override // org.a.d.e, org.a.d.d
    public ByteBuffer c() {
        return this.f == 1005 ? f8200a : super.c();
    }
}
