package org.a.b;

import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
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
public class e extends d {
    private static final byte[] j = {-1, 0};
    private boolean i = false;
    private final Random k = new Random();

    public static byte[] a(String str, String str2, byte[] bArr) throws org.a.c.d {
        byte[] bArrA = a(str);
        byte[] bArrA2 = a(str2);
        try {
            return MessageDigest.getInstance("MD5").digest(new byte[]{bArrA[0], bArrA[1], bArrA[2], bArrA[3], bArrA2[0], bArrA2[1], bArrA2[2], bArrA2[3], bArr[0], bArr[1], bArr[2], bArr[3], bArr[4], bArr[5], bArr[6], bArr[7]});
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }

    private static String e() {
        Random random = new Random();
        long jNextInt = random.nextInt(12) + 1;
        String string = Long.toString(((long) (random.nextInt(Math.abs(new Long(4294967295L / jNextInt).intValue())) + 1)) * jNextInt);
        int iNextInt = random.nextInt(12) + 1;
        for (int i = 0; i < iNextInt; i++) {
            int iAbs = Math.abs(random.nextInt(string.length()));
            char cNextInt = (char) (random.nextInt(95) + 33);
            if (cNextInt >= '0' && cNextInt <= '9') {
                cNextInt = (char) (cNextInt - 15);
            }
            string = new StringBuilder(string).insert(iAbs, cNextInt).toString();
        }
        String string2 = string;
        for (int i2 = 0; i2 < jNextInt; i2++) {
            string2 = new StringBuilder(string2).insert(Math.abs(random.nextInt(string2.length() - 1) + 1), " ").toString();
        }
        return string2;
    }

    private static byte[] a(String str) throws org.a.c.d {
        try {
            long j2 = Long.parseLong(str.replaceAll("[^0-9]", ""));
            long length = str.split(" ").length - 1;
            if (length == 0) {
                throw new org.a.c.d("invalid Sec-WebSocket-Key (/key2/)");
            }
            long jLongValue = new Long(j2 / length).longValue();
            return new byte[]{(byte) (jLongValue >> 24), (byte) ((jLongValue << 8) >> 24), (byte) ((jLongValue << 16) >> 24), (byte) ((jLongValue << 24) >> 24)};
        } catch (NumberFormatException e) {
            throw new org.a.c.d("invalid Sec-WebSocket-Key (/key1/ or /key2/)");
        }
    }

    @Override // org.a.b.d, org.a.b.a
    public a.b a(org.a.e.a aVar, h hVar) {
        if (this.i) {
            return a.b.NOT_MATCHED;
        }
        try {
            if (!hVar.b("Sec-WebSocket-Origin").equals(aVar.b("Origin")) || !a(hVar)) {
                return a.b.NOT_MATCHED;
            }
            byte[] bArrC = hVar.c();
            if (bArrC == null || bArrC.length == 0) {
                throw new org.a.c.a();
            }
            if (Arrays.equals(bArrC, a(aVar.b("Sec-WebSocket-Key1"), aVar.b("Sec-WebSocket-Key2"), aVar.c()))) {
                return a.b.MATCHED;
            }
            return a.b.NOT_MATCHED;
        } catch (org.a.c.d e) {
            throw new RuntimeException("bad handshakerequest", e);
        }
    }

    @Override // org.a.b.d, org.a.b.a
    public a.b a(org.a.e.a aVar) {
        return (aVar.b("Upgrade").equals("WebSocket") && aVar.b("Connection").contains("Upgrade") && aVar.b("Sec-WebSocket-Key1").length() > 0 && !aVar.b("Sec-WebSocket-Key2").isEmpty() && aVar.c("Origin")) ? a.b.MATCHED : a.b.NOT_MATCHED;
    }

    @Override // org.a.b.d, org.a.b.a
    public org.a.e.b a(org.a.e.b bVar) {
        bVar.a("Upgrade", "WebSocket");
        bVar.a("Connection", "Upgrade");
        bVar.a("Sec-WebSocket-Key1", e());
        bVar.a("Sec-WebSocket-Key2", e());
        if (!bVar.c("Origin")) {
            bVar.a("Origin", "random" + this.k.nextInt());
        }
        byte[] bArr = new byte[8];
        this.k.nextBytes(bArr);
        bVar.a(bArr);
        return bVar;
    }

    @Override // org.a.b.d, org.a.b.a
    public org.a.e.c a(org.a.e.a aVar, i iVar) throws org.a.c.d {
        iVar.a("WebSocket Protocol Handshake");
        iVar.a("Upgrade", "WebSocket");
        iVar.a("Connection", aVar.b("Connection"));
        iVar.a("Sec-WebSocket-Origin", aVar.b("Origin"));
        iVar.a("Sec-WebSocket-Location", "ws://" + aVar.b("Host") + aVar.a());
        String strB = aVar.b("Sec-WebSocket-Key1");
        String strB2 = aVar.b("Sec-WebSocket-Key2");
        byte[] bArrC = aVar.c();
        if (strB == null || strB2 == null || bArrC == null || bArrC.length != 8) {
            throw new org.a.c.d("Bad keys");
        }
        iVar.a(a(strB, strB2, bArrC));
        return iVar;
    }

    @Override // org.a.b.a
    public f d(ByteBuffer byteBuffer) throws org.a.c.d {
        org.a.e.c cVarA = a(byteBuffer, this.f8184d);
        if ((cVarA.c("Sec-WebSocket-Key1") || this.f8184d == a.b.CLIENT) && !cVarA.c("Sec-WebSocket-Version")) {
            byte[] bArr = new byte[this.f8184d == a.b.SERVER ? 8 : 16];
            try {
                byteBuffer.get(bArr);
                cVarA.a(bArr);
            } catch (BufferUnderflowException e) {
                throw new org.a.c.a(byteBuffer.capacity() + 16);
            }
        }
        return cVarA;
    }

    @Override // org.a.b.d, org.a.b.a
    public List<org.a.d.d> c(ByteBuffer byteBuffer) throws org.a.c.b {
        byteBuffer.mark();
        List<org.a.d.d> listE = super.e(byteBuffer);
        if (listE == null) {
            byteBuffer.reset();
            listE = this.g;
            this.f = true;
            if (this.h == null) {
                this.h = ByteBuffer.allocate(2);
                if (byteBuffer.remaining() > this.h.remaining()) {
                    throw new org.a.c.c();
                }
                this.h.put(byteBuffer);
                if (!this.h.hasRemaining()) {
                    if (Arrays.equals(this.h.array(), j)) {
                        listE.add(new org.a.d.b(1000));
                    } else {
                        throw new org.a.c.c();
                    }
                } else {
                    this.g = new LinkedList();
                }
            } else {
                throw new org.a.c.c();
            }
        }
        return listE;
    }

    @Override // org.a.b.d, org.a.b.a
    public ByteBuffer a(org.a.d.d dVar) {
        return dVar.f() == d.a.CLOSING ? ByteBuffer.wrap(j) : super.a(dVar);
    }

    @Override // org.a.b.d, org.a.b.a
    public a.EnumC0144a b() {
        return a.EnumC0144a.ONEWAY;
    }

    @Override // org.a.b.d, org.a.b.a
    public a c() {
        return new e();
    }
}
