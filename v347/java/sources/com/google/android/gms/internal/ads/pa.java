package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import android.util.Log;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.concurrent.CountDownLatch;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;

/* JADX INFO: loaded from: classes.dex */
@cm
@TargetApi(14)
public final class pa extends Thread implements SurfaceTexture.OnFrameAvailableListener, oz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final float[] f5409a = {-1.0f, -1.0f, -1.0f, 1.0f, -1.0f, -1.0f, -1.0f, 1.0f, -1.0f, 1.0f, 1.0f, -1.0f};
    private volatile boolean A;
    private volatile boolean B;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ox f5410b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float[] f5411c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float[] f5412d;
    private final float[] e;
    private final float[] f;
    private final float[] g;
    private final float[] h;
    private final float[] i;
    private float j;
    private float k;
    private float l;
    private int m;
    private int n;
    private SurfaceTexture o;
    private SurfaceTexture p;
    private int q;
    private int r;
    private int s;
    private FloatBuffer t;
    private final CountDownLatch u;
    private final Object v;
    private EGL10 w;
    private EGLDisplay x;
    private EGLContext y;
    private EGLSurface z;

    public pa(Context context) {
        super("SphericalVideoProcessor");
        this.t = ByteBuffer.allocateDirect(f5409a.length << 2).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.t.put(f5409a).position(0);
        this.f5411c = new float[9];
        this.f5412d = new float[9];
        this.e = new float[9];
        this.f = new float[9];
        this.g = new float[9];
        this.h = new float[9];
        this.i = new float[9];
        this.j = Float.NaN;
        this.f5410b = new ox(context);
        this.f5410b.a(this);
        this.u = new CountDownLatch(1);
        this.v = new Object();
    }

    private static int a(int i, String str) {
        int iGlCreateShader = GLES20.glCreateShader(i);
        a("createShader");
        if (iGlCreateShader != 0) {
            GLES20.glShaderSource(iGlCreateShader, str);
            a("shaderSource");
            GLES20.glCompileShader(iGlCreateShader);
            a("compileShader");
            int[] iArr = new int[1];
            GLES20.glGetShaderiv(iGlCreateShader, 35713, iArr, 0);
            a("getShaderiv");
            if (iArr[0] == 0) {
                Log.e("SphericalVideoRenderer", new StringBuilder(37).append("Could not compile shader ").append(i).append(":").toString());
                Log.e("SphericalVideoRenderer", GLES20.glGetShaderInfoLog(iGlCreateShader));
                GLES20.glDeleteShader(iGlCreateShader);
                a("deleteShader");
                return 0;
            }
        }
        return iGlCreateShader;
    }

    private static void a(String str) {
        int iGlGetError = GLES20.glGetError();
        if (iGlGetError != 0) {
            Log.e("SphericalVideoRenderer", new StringBuilder(String.valueOf(str).length() + 21).append(str).append(": glError ").append(iGlGetError).toString());
        }
    }

    private static void a(float[] fArr, float f) {
        fArr[0] = 1.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        fArr[4] = (float) Math.cos(f);
        fArr[5] = (float) (-Math.sin(f));
        fArr[6] = 0.0f;
        fArr[7] = (float) Math.sin(f);
        fArr[8] = (float) Math.cos(f);
    }

    private static void a(float[] fArr, float[] fArr2, float[] fArr3) {
        fArr[0] = (fArr2[0] * fArr3[0]) + (fArr2[1] * fArr3[3]) + (fArr2[2] * fArr3[6]);
        fArr[1] = (fArr2[0] * fArr3[1]) + (fArr2[1] * fArr3[4]) + (fArr2[2] * fArr3[7]);
        fArr[2] = (fArr2[0] * fArr3[2]) + (fArr2[1] * fArr3[5]) + (fArr2[2] * fArr3[8]);
        fArr[3] = (fArr2[3] * fArr3[0]) + (fArr2[4] * fArr3[3]) + (fArr2[5] * fArr3[6]);
        fArr[4] = (fArr2[3] * fArr3[1]) + (fArr2[4] * fArr3[4]) + (fArr2[5] * fArr3[7]);
        fArr[5] = (fArr2[3] * fArr3[2]) + (fArr2[4] * fArr3[5]) + (fArr2[5] * fArr3[8]);
        fArr[6] = (fArr2[6] * fArr3[0]) + (fArr2[7] * fArr3[3]) + (fArr2[8] * fArr3[6]);
        fArr[7] = (fArr2[6] * fArr3[1]) + (fArr2[7] * fArr3[4]) + (fArr2[8] * fArr3[7]);
        fArr[8] = (fArr2[6] * fArr3[2]) + (fArr2[7] * fArr3[5]) + (fArr2[8] * fArr3[8]);
    }

    private static void b(float[] fArr, float f) {
        fArr[0] = (float) Math.cos(f);
        fArr[1] = (float) (-Math.sin(f));
        fArr[2] = 0.0f;
        fArr[3] = (float) Math.sin(f);
        fArr[4] = (float) Math.cos(f);
        fArr[5] = 0.0f;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = 1.0f;
    }

    private final boolean d() {
        boolean zEglDestroyContext = false;
        if (this.z != null && this.z != EGL10.EGL_NO_SURFACE) {
            zEglDestroyContext = this.w.eglMakeCurrent(this.x, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT) | false | this.w.eglDestroySurface(this.x, this.z);
            this.z = null;
        }
        if (this.y != null) {
            zEglDestroyContext |= this.w.eglDestroyContext(this.x, this.y);
            this.y = null;
        }
        if (this.x == null) {
            return zEglDestroyContext;
        }
        boolean zEglTerminate = zEglDestroyContext | this.w.eglTerminate(this.x);
        this.x = null;
        return zEglTerminate;
    }

    @Override // com.google.android.gms.internal.ads.oz
    public final void a() {
        synchronized (this.v) {
            this.v.notifyAll();
        }
    }

    public final void a(float f, float f2) {
        float f3;
        float f4;
        if (this.n > this.m) {
            f3 = (1.7453293f * f) / this.n;
            f4 = (1.7453293f * f2) / this.n;
        } else {
            f3 = (1.7453293f * f) / this.m;
            f4 = (1.7453293f * f2) / this.m;
        }
        this.k -= f3;
        this.l -= f4;
        if (this.l < -1.5707964f) {
            this.l = -1.5707964f;
        }
        if (this.l > 1.5707964f) {
            this.l = 1.5707964f;
        }
    }

    public final void a(int i, int i2) {
        synchronized (this.v) {
            this.n = i;
            this.m = i2;
            this.A = true;
            this.v.notifyAll();
        }
    }

    public final void a(SurfaceTexture surfaceTexture, int i, int i2) {
        this.n = i;
        this.m = i2;
        this.p = surfaceTexture;
    }

    public final void b() {
        synchronized (this.v) {
            this.B = true;
            this.p = null;
            this.v.notifyAll();
        }
    }

    public final SurfaceTexture c() {
        if (this.p == null) {
            return null;
        }
        try {
            this.u.await();
        } catch (InterruptedException e) {
        }
        return this.o;
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.s++;
        synchronized (this.v) {
            this.v.notifyAll();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Object[] objArr;
        int iGlCreateProgram;
        if (this.p == null) {
            jd.c("SphericalVideoProcessor started with no output texture.");
            this.u.countDown();
            return;
        }
        this.w = (EGL10) EGLContext.getEGL();
        this.x = this.w.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
        if (this.x != EGL10.EGL_NO_DISPLAY && this.w.eglInitialize(this.x, new int[2])) {
            int[] iArr = new int[1];
            EGLConfig[] eGLConfigArr = new EGLConfig[1];
            EGLConfig eGLConfig = (!this.w.eglChooseConfig(this.x, new int[]{12352, 4, 12324, 8, 12323, 8, 12322, 8, 12325, 16, 12344}, eGLConfigArr, 1, iArr) || iArr[0] <= 0) ? null : eGLConfigArr[0];
            if (eGLConfig == null) {
                objArr = false;
            } else {
                this.y = this.w.eglCreateContext(this.x, eGLConfig, EGL10.EGL_NO_CONTEXT, new int[]{12440, 2, 12344});
                if (this.y == null || this.y == EGL10.EGL_NO_CONTEXT) {
                    objArr = false;
                } else {
                    this.z = this.w.eglCreateWindowSurface(this.x, eGLConfig, this.p, null);
                    objArr = (this.z == null || this.z == EGL10.EGL_NO_SURFACE || !this.w.eglMakeCurrent(this.x, this.z, this.z, this.y)) ? false : true;
                }
            }
        } else {
            objArr = false;
        }
        are<String> areVar = aro.bj;
        int iA = a(35633, !((String) aoo.f().a(areVar)).equals(areVar.b()) ? (String) aoo.f().a(areVar) : "attribute highp vec3 aPosition;varying vec3 pos;void main() {  gl_Position = vec4(aPosition, 1.0);  pos = aPosition;}");
        if (iA == 0) {
            iGlCreateProgram = 0;
        } else {
            are<String> areVar2 = aro.bk;
            int iA2 = a(35632, !((String) aoo.f().a(areVar2)).equals(areVar2.b()) ? (String) aoo.f().a(areVar2) : "#extension GL_OES_EGL_image_external : require\n#define INV_PI 0.3183\nprecision highp float;varying vec3 pos;uniform samplerExternalOES uSplr;uniform mat3 uVMat;uniform float uFOVx;uniform float uFOVy;void main() {  vec3 ray = vec3(pos.x * tan(uFOVx), pos.y * tan(uFOVy), -1);  ray = (uVMat * ray).xyz;  ray = normalize(ray);  vec2 texCrd = vec2(    0.5 + atan(ray.x, - ray.z) * INV_PI * 0.5, acos(ray.y) * INV_PI);  gl_FragColor = vec4(texture2D(uSplr, texCrd).xyz, 1.0);}");
            if (iA2 == 0) {
                iGlCreateProgram = 0;
            } else {
                iGlCreateProgram = GLES20.glCreateProgram();
                a("createProgram");
                if (iGlCreateProgram != 0) {
                    GLES20.glAttachShader(iGlCreateProgram, iA);
                    a("attachShader");
                    GLES20.glAttachShader(iGlCreateProgram, iA2);
                    a("attachShader");
                    GLES20.glLinkProgram(iGlCreateProgram);
                    a("linkProgram");
                    int[] iArr2 = new int[1];
                    GLES20.glGetProgramiv(iGlCreateProgram, 35714, iArr2, 0);
                    a("getProgramiv");
                    if (iArr2[0] != 1) {
                        Log.e("SphericalVideoRenderer", "Could not link program: ");
                        Log.e("SphericalVideoRenderer", GLES20.glGetProgramInfoLog(iGlCreateProgram));
                        GLES20.glDeleteProgram(iGlCreateProgram);
                        a("deleteProgram");
                        iGlCreateProgram = 0;
                    } else {
                        GLES20.glValidateProgram(iGlCreateProgram);
                        a("validateProgram");
                    }
                }
            }
        }
        this.q = iGlCreateProgram;
        GLES20.glUseProgram(this.q);
        a("useProgram");
        int iGlGetAttribLocation = GLES20.glGetAttribLocation(this.q, "aPosition");
        GLES20.glVertexAttribPointer(iGlGetAttribLocation, 3, 5126, false, 12, (Buffer) this.t);
        a("vertexAttribPointer");
        GLES20.glEnableVertexAttribArray(iGlGetAttribLocation);
        a("enableVertexAttribArray");
        int[] iArr3 = new int[1];
        GLES20.glGenTextures(1, iArr3, 0);
        a("genTextures");
        int i = iArr3[0];
        GLES20.glBindTexture(36197, i);
        a("bindTextures");
        GLES20.glTexParameteri(36197, 10240, 9729);
        a("texParameteri");
        GLES20.glTexParameteri(36197, 10241, 9729);
        a("texParameteri");
        GLES20.glTexParameteri(36197, 10242, 33071);
        a("texParameteri");
        GLES20.glTexParameteri(36197, 10243, 33071);
        a("texParameteri");
        this.r = GLES20.glGetUniformLocation(this.q, "uVMat");
        GLES20.glUniformMatrix3fv(this.r, 1, false, new float[]{1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 1.0f}, 0);
        boolean z = this.q != 0;
        if (objArr != true || !z) {
            String strValueOf = String.valueOf(GLUtils.getEGLErrorString(this.w.eglGetError()));
            String strConcat = strValueOf.length() != 0 ? "EGL initialization failed: ".concat(strValueOf) : new String("EGL initialization failed: ");
            jd.c(strConcat);
            com.google.android.gms.ads.internal.aw.i().a(new Throwable(strConcat), "SphericalVideoProcessor.run.1");
            d();
            this.u.countDown();
            return;
        }
        this.o = new SurfaceTexture(i);
        this.o.setOnFrameAvailableListener(this);
        this.u.countDown();
        this.f5410b.a();
        try {
            this.A = true;
            while (!this.B) {
                while (this.s > 0) {
                    this.o.updateTexImage();
                    this.s--;
                }
                if (this.f5410b.a(this.f5411c)) {
                    if (Float.isNaN(this.j)) {
                        float[] fArr = this.f5411c;
                        float[] fArr2 = {0.0f, 1.0f, 0.0f};
                        float[] fArr3 = {(fArr[0] * fArr2[0]) + (fArr[1] * fArr2[1]) + (fArr[2] * fArr2[2]), (fArr[3] * fArr2[0]) + (fArr[4] * fArr2[1]) + (fArr[5] * fArr2[2]), (fArr[8] * fArr2[2]) + (fArr[6] * fArr2[0]) + (fArr[7] * fArr2[1])};
                        this.j = -(((float) Math.atan2(fArr3[1], fArr3[0])) - 1.5707964f);
                    }
                    b(this.h, this.j + this.k);
                } else {
                    a(this.f5411c, -1.5707964f);
                    b(this.h, this.k);
                }
                a(this.f5412d, 1.5707964f);
                a(this.e, this.h, this.f5412d);
                a(this.f, this.f5411c, this.e);
                a(this.g, this.l);
                a(this.i, this.g, this.f);
                GLES20.glUniformMatrix3fv(this.r, 1, false, this.i, 0);
                GLES20.glDrawArrays(5, 0, 4);
                a("drawArrays");
                GLES20.glFinish();
                this.w.eglSwapBuffers(this.x, this.z);
                if (this.A) {
                    GLES20.glViewport(0, 0, this.n, this.m);
                    a("viewport");
                    int iGlGetUniformLocation = GLES20.glGetUniformLocation(this.q, "uFOVx");
                    int iGlGetUniformLocation2 = GLES20.glGetUniformLocation(this.q, "uFOVy");
                    if (this.n > this.m) {
                        GLES20.glUniform1f(iGlGetUniformLocation, 0.87266463f);
                        GLES20.glUniform1f(iGlGetUniformLocation2, (0.87266463f * this.m) / this.n);
                    } else {
                        GLES20.glUniform1f(iGlGetUniformLocation, (0.87266463f * this.n) / this.m);
                        GLES20.glUniform1f(iGlGetUniformLocation2, 0.87266463f);
                    }
                    this.A = false;
                }
                try {
                    synchronized (this.v) {
                        if (!this.B && !this.A && this.s == 0) {
                            this.v.wait();
                        }
                    }
                } catch (InterruptedException e) {
                }
            }
        } catch (IllegalStateException e2) {
            jd.e("SphericalVideoProcessor halted unexpectedly.");
        } catch (Throwable th) {
            jd.b("SphericalVideoProcessor died.", th);
            com.google.android.gms.ads.internal.aw.i().a(th, "SphericalVideoProcessor.run.2");
        } finally {
            this.f5410b.b();
            this.o.setOnFrameAvailableListener(null);
            this.o = null;
            d();
        }
    }
}
