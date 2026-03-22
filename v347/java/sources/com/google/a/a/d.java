package com.google.a.a;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.UUID;
import microsoft.aspnet.signalr.client.Constants;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class d implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected MotionEvent f2574a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected DisplayMetrics f2575b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected i f2576c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private j f2577d;

    protected abstract void b(Context context);

    protected abstract void c(Context context);

    protected d(Context context, i iVar, j jVar) {
        this.f2576c = iVar;
        this.f2577d = jVar;
        try {
            this.f2575b = context.getResources().getDisplayMetrics();
        } catch (UnsupportedOperationException e) {
            this.f2575b = new DisplayMetrics();
            this.f2575b.density = 1.0f;
        }
    }

    @Override // com.google.a.a.c
    public String a(Context context) {
        return a(context, null, false);
    }

    @Override // com.google.a.a.c
    public String a(Context context, String str) {
        return a(context, str, true);
    }

    private String a(Context context, String str, boolean z) {
        byte[] bArrB;
        try {
            synchronized (this) {
                a();
                if (z) {
                    c(context);
                } else {
                    b(context);
                }
                bArrB = b();
            }
            if (bArrB.length == 0) {
                return Integer.toString(5);
            }
            return a(bArrB, str);
        } catch (UnsupportedEncodingException e) {
            return Integer.toString(7);
        } catch (IOException e2) {
            return Integer.toString(3);
        } catch (NoSuchAlgorithmException e3) {
            return Integer.toString(7);
        }
    }

    protected void a(int i, long j) throws IOException {
        this.f2577d.a(i, j);
    }

    protected void a(int i, String str) throws IOException {
        this.f2577d.a(i, str);
    }

    private void a() {
        this.f2577d.a();
    }

    private byte[] b() throws IOException {
        return this.f2577d.b();
    }

    String a(byte[] bArr, String str) throws NoSuchAlgorithmException, IOException {
        byte[] bArrArray;
        if (bArr.length > 239) {
            a();
            a(20, 1L);
            bArr = b();
        }
        if (bArr.length < 239) {
            byte[] bArr2 = new byte[239 - bArr.length];
            new SecureRandom().nextBytes(bArr2);
            bArrArray = ByteBuffer.allocate(240).put((byte) bArr.length).put(bArr).put(bArr2).array();
        } else {
            bArrArray = ByteBuffer.allocate(240).put((byte) bArr.length).put(bArr).array();
        }
        MessageDigest messageDigest = MessageDigest.getInstance("MD5");
        messageDigest.update(bArrArray);
        byte[] bArrArray2 = ByteBuffer.allocate(256).put(messageDigest.digest()).put(bArrArray).array();
        byte[] bArr3 = new byte[256];
        new b().a(bArrArray2, bArr3);
        if (str != null && str.length() > 0) {
            a(str, bArr3);
        }
        return this.f2576c.a(bArr3, true);
    }

    void a(String str, byte[] bArr) throws UnsupportedEncodingException {
        if (str.length() > 32) {
            str = str.substring(0, 32);
        }
        new com.google.d.a.a(str.getBytes(Constants.UTF8_NAME)).a(bArr);
    }

    protected String a(String str) {
        if (str != null && str.matches("^[a-fA-F0-9]{8}-([a-fA-F0-9]{4}-){3}[a-fA-F0-9]{12}$")) {
            UUID uuidFromString = UUID.fromString(str);
            byte[] bArr = new byte[16];
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
            byteBufferWrap.putLong(uuidFromString.getMostSignificantBits());
            byteBufferWrap.putLong(uuidFromString.getLeastSignificantBits());
            return this.f2576c.a(bArr, true);
        }
        return str;
    }
}
