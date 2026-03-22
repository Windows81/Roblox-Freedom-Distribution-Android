package com.roblox.engine.a;

import android.content.Context;
import com.roblox.engine.e;
import com.roblox.engine.jni.NativeGLInterface;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f7579a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected b f7580b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected C0183a f7581c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private e f7582d;

    /* JADX INFO: renamed from: com.roblox.engine.a.a$a, reason: collision with other inner class name */
    public static class C0183a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f7583a;
    }

    public abstract b a();

    protected boolean b() {
        return false;
    }

    public a(Context context) {
        this(context, null);
    }

    public a(Context context, C0183a c0183a) {
        this.f7582d = new e();
        this.f7579a = context;
        this.f7581c = c0183a;
    }

    public void a(boolean z) {
        a(a(), z);
    }

    protected void a(b bVar, boolean z) {
        b bVar2;
        if (bVar == null) {
            return;
        }
        if (z || (bVar2 = this.f7580b) == null || !bVar2.equals(bVar)) {
            this.f7580b = bVar;
            try {
                float fC = c();
                int iA = a(bVar.f7584a.right, fC);
                int iA2 = a(bVar.f, fC);
                if (bVar.f7588e > 0) {
                    a(true, 0, iA2, iA, a(bVar.f7588e, fC));
                } else {
                    a(false, 0, iA2, iA, 0);
                }
                if (b()) {
                    return;
                }
                int iA3 = a(bVar.f7586c, fC);
                int iA4 = a(bVar.g, fC);
                int iA5 = a(bVar.f7587d, fC);
                C0183a c0183a = this.f7581c;
                a(iA, iA4, c0183a != null ? c0183a.f7583a : 0, iA3, iA5);
            } catch (Exception e2) {
                com.roblox.platform.e.e("rbx.glview.layout", "onGlobalLayout() exception:" + e2.getMessage());
            }
        }
    }

    public float c() {
        return this.f7582d.a(this.f7579a);
    }

    private int a(int i, float f) {
        double d2 = i / f;
        Double.isNaN(d2);
        return (int) (d2 + 0.5d);
    }

    private void a(int i, int i2, int i3, int i4, int i5) {
        com.roblox.platform.e.a("rbx.glview.layout", "doUpdateAppUISizes() vw:" + i + " status:" + i2 + " tbh:" + i3 + " bm:" + i4 + " rm:" + i5);
        NativeGLInterface.updateAppUISizes(i, i2, i3, i4, i5);
    }

    protected void a(boolean z, int i, int i2, int i3, int i4) {
        com.roblox.platform.e.a("rbx.glview.layout", "onUpdateKeyboardSize() v:" + z + " x:" + i + " y:" + i2 + " w:" + i3 + " h:" + i4);
        NativeGLInterface.updateKeyboardSize(z, i, i2, i3, i4);
    }
}
