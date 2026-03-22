package com.roblox.engine.components;

import android.content.Context;
import com.roblox.engine.e;
import com.roblox.engine.jni.NativeGLInterface;
import com.roblox.platform.d;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f7961a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected b f7962b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected C0135a f7964d;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected C0135a f7963c = null;
    private e e = new e();

    /* JADX INFO: renamed from: com.roblox.engine.components.a$a, reason: collision with other inner class name */
    public static class C0135a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f7965a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f7966b;
    }

    public abstract b a();

    public a(Context context, C0135a c0135a) {
        this.f7964d = null;
        this.f7961a = context;
        this.f7964d = c0135a;
    }

    public void a(boolean z) {
        a(a(), z);
    }

    protected void a(b bVar, boolean z) {
        if (z || this.f7962b == null || !this.f7962b.equals(bVar)) {
            this.f7962b = bVar;
            try {
                float fB = b();
                if (this.f7963c == null) {
                    this.f7963c = new C0135a();
                    this.f7963c.f7965a = a(this.f7964d.f7965a, fB);
                    this.f7963c.f7966b = a(this.f7964d.f7966b, fB);
                }
                int iA = a(bVar.f7967a.right, fB);
                int iA2 = a(bVar.f7967a.bottom, fB);
                if (bVar.f7970d > 0) {
                    a(true, 0, iA2, iA, a(bVar.f7970d, fB));
                } else {
                    a(false, 0, iA2, iA, 0);
                }
                a(iA, a(bVar.f, fB), this.f7963c.f7965a, a(bVar.f7969c, fB), bVar.e ? this.f7963c.f7966b : 0);
            } catch (Exception e) {
                d.e("rbx.glview.layout", "onGlobalLayout() exception:" + e.getMessage());
            }
        }
    }

    public float b() {
        return this.e.a(this.f7961a);
    }

    private int a(int i, float f) {
        return (int) (i / f);
    }

    private void a(int i, int i2, int i3, int i4, int i5) {
        d.a("rbx.glview.layout", "doUpdateAppUISizes() vw:" + i + " sbh:" + i2 + " tbh:" + i3 + " bm:" + i4 + " twh:" + i5);
        NativeGLInterface.updateAppUISizes(i, i2, i3, i4 + i5);
    }

    protected void a(boolean z, int i, int i2, int i3, int i4) {
        d.a("rbx.glview.layout", "onUpdateKeyboardSize() v:" + z + " x:" + i + " y:" + i2 + " w:" + i3 + " h:" + i4);
        NativeGLInterface.updateKeyboardSize(z, i, i2, i3, i4);
    }
}
