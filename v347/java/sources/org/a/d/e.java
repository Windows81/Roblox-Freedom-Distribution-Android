package org.a.d;

import java.nio.ByteBuffer;
import java.util.Arrays;
import org.a.d.d;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class e implements c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected static byte[] f8205b = new byte[0];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ByteBuffer f8206a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected boolean f8207c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected d.a f8208d;
    protected boolean e;

    public e() {
    }

    public e(d.a aVar) {
        this.f8208d = aVar;
        this.f8206a = ByteBuffer.wrap(f8205b);
    }

    public e(d dVar) {
        this.f8207c = dVar.d();
        this.f8208d = dVar.f();
        this.f8206a = dVar.c();
        this.e = dVar.e();
    }

    @Override // org.a.d.d
    public boolean d() {
        return this.f8207c;
    }

    @Override // org.a.d.d
    public d.a f() {
        return this.f8208d;
    }

    @Override // org.a.d.d
    public boolean e() {
        return this.e;
    }

    @Override // org.a.d.d
    public ByteBuffer c() {
        return this.f8206a;
    }

    @Override // org.a.d.c
    public void a(boolean z) {
        this.f8207c = z;
    }

    @Override // org.a.d.c
    public void a(d.a aVar) {
        this.f8208d = aVar;
    }

    @Override // org.a.d.c
    public void a(ByteBuffer byteBuffer) throws org.a.c.b {
        this.f8206a = byteBuffer;
    }

    @Override // org.a.d.c
    public void b(boolean z) {
        this.e = z;
    }

    public String toString() {
        return "Framedata{ optcode:" + f() + ", fin:" + d() + ", payloadlength:[pos:" + this.f8206a.position() + ", len:" + this.f8206a.remaining() + "], payload:" + Arrays.toString(org.a.f.b.a(new String(this.f8206a.array()))) + "}";
    }
}
