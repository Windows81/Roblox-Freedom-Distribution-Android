package com.google.a.a;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import com.google.a.a.k;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import microsoft.aspnet.signalr.client.Constants;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class e extends d {
    private static Method e;
    private static Method f;
    private static Method g;
    private static Method h;
    private static Method i;
    private static Method j;
    private static Method k;
    private static Method l;
    private static Method m;
    private static Method n;
    private static Method o;
    private static Method p;
    private static Method q;
    private static String r;
    private static String s;
    private static String t;
    private static k v;
    private static long u = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static boolean f2578d = false;

    static class a extends Exception {
        public a() {
        }

        public a(Throwable th) {
            super(th);
        }
    }

    protected static synchronized void a(String str, Context context, i iVar) {
        if (!f2578d) {
            try {
                v = new k(iVar, null);
                r = str;
                k(context);
                u = b().longValue();
                f2578d = true;
            } catch (a e2) {
            } catch (UnsupportedOperationException e3) {
            }
        }
    }

    protected e(Context context, i iVar, j jVar) {
        super(context, iVar, jVar);
    }

    @Override // com.google.a.a.d
    protected void b(Context context) {
        try {
            try {
                a(1, c());
            } catch (IOException e2) {
                return;
            }
        } catch (a e3) {
        }
        try {
            a(2, a());
        } catch (a e4) {
        }
        try {
            long jLongValue = b().longValue();
            a(25, jLongValue);
            if (u != 0) {
                a(17, jLongValue - u);
                a(23, u);
            }
        } catch (a e5) {
        }
        try {
            ArrayList<Long> arrayListG = g(context);
            a(31, arrayListG.get(0).longValue());
            a(32, arrayListG.get(1).longValue());
        } catch (a e6) {
        }
        try {
            a(33, d().longValue());
        } catch (a e7) {
        }
        try {
            a(27, a(context, this.f2576c));
        } catch (a e8) {
        }
        try {
            a(29, b(context, this.f2576c));
        } catch (a e9) {
        }
        try {
            int[] iArrH = h(context);
            a(5, iArrH[0]);
            a(6, iArrH[1]);
        } catch (a e10) {
        }
        try {
            a(12, i(context));
        } catch (a e11) {
        }
        try {
            a(3, j(context));
        } catch (a e12) {
        }
        try {
            a(34, e(context));
        } catch (a e13) {
        }
        try {
            a(35, f(context).longValue());
        } catch (a e14) {
        }
    }

    @Override // com.google.a.a.d
    protected void c(Context context) {
        try {
            try {
                a(2, a());
            } catch (IOException e2) {
                return;
            }
        } catch (a e3) {
        }
        try {
            a(1, c());
        } catch (a e4) {
        }
        try {
            a(25, b().longValue());
        } catch (a e5) {
        }
        try {
            ArrayList<Long> arrayListA = a(this.f2574a, this.f2575b);
            a(14, arrayListA.get(0).longValue());
            a(15, arrayListA.get(1).longValue());
            if (arrayListA.size() >= 3) {
                a(16, arrayListA.get(2).longValue());
            }
        } catch (a e6) {
        }
        try {
            a(34, e(context));
        } catch (a e7) {
        }
        try {
            a(35, f(context).longValue());
        } catch (a e8) {
        }
    }

    static String a() throws a {
        if (r == null) {
            throw new a();
        }
        return r;
    }

    static Long b() throws a {
        if (e == null) {
            throw new a();
        }
        try {
            return (Long) e.invoke(null, new Object[0]);
        } catch (IllegalAccessException e2) {
            throw new a(e2);
        } catch (InvocationTargetException e3) {
            throw new a(e3);
        }
    }

    static String d(Context context) throws a {
        if (j == null) {
            throw new a();
        }
        try {
            String str = (String) j.invoke(null, context);
            if (str == null) {
                throw new a();
            }
            return str;
        } catch (IllegalAccessException e2) {
            throw new a(e2);
        } catch (InvocationTargetException e3) {
            throw new a(e3);
        }
    }

    static String c() throws a {
        if (g == null) {
            throw new a();
        }
        try {
            return (String) g.invoke(null, new Object[0]);
        } catch (IllegalAccessException e2) {
            throw new a(e2);
        } catch (InvocationTargetException e3) {
            throw new a(e3);
        }
    }

    static ArrayList<Long> a(MotionEvent motionEvent, DisplayMetrics displayMetrics) throws a {
        if (i == null || motionEvent == null) {
            throw new a();
        }
        try {
            return (ArrayList) i.invoke(null, motionEvent, displayMetrics);
        } catch (IllegalAccessException e2) {
            throw new a(e2);
        } catch (InvocationTargetException e3) {
            throw new a(e3);
        }
    }

    static String e(Context context) throws a {
        if (n == null) {
            throw new a();
        }
        try {
            return (String) n.invoke(null, context);
        } catch (IllegalAccessException e2) {
            throw new a(e2);
        } catch (InvocationTargetException e3) {
            throw new a(e3);
        }
    }

    static Long f(Context context) throws a {
        if (o == null) {
            throw new a();
        }
        try {
            return (Long) o.invoke(null, context);
        } catch (IllegalAccessException e2) {
            throw new a(e2);
        } catch (InvocationTargetException e3) {
            throw new a(e3);
        }
    }

    static String a(Context context, i iVar) throws a {
        if (s != null) {
            return s;
        }
        if (h == null) {
            throw new a();
        }
        try {
            ByteBuffer byteBuffer = (ByteBuffer) h.invoke(null, context);
            if (byteBuffer == null) {
                throw new a();
            }
            s = iVar.a(byteBuffer.array(), true);
            return s;
        } catch (IllegalAccessException e2) {
            throw new a(e2);
        } catch (InvocationTargetException e3) {
            throw new a(e3);
        }
    }

    static ArrayList<Long> g(Context context) throws a {
        if (l == null) {
            throw new a();
        }
        try {
            ArrayList<Long> arrayList = (ArrayList) l.invoke(null, context);
            if (arrayList == null || arrayList.size() != 2) {
                throw new a();
            }
            return arrayList;
        } catch (IllegalAccessException e2) {
            throw new a(e2);
        } catch (InvocationTargetException e3) {
            throw new a(e3);
        }
    }

    static String b(Context context, i iVar) throws a {
        if (t != null) {
            return t;
        }
        if (k == null) {
            throw new a();
        }
        try {
            ByteBuffer byteBuffer = (ByteBuffer) k.invoke(null, context);
            if (byteBuffer == null) {
                throw new a();
            }
            t = iVar.a(byteBuffer.array(), true);
            return t;
        } catch (IllegalAccessException e2) {
            throw new a(e2);
        } catch (InvocationTargetException e3) {
            throw new a(e3);
        }
    }

    static Long d() throws a {
        if (f == null) {
            throw new a();
        }
        try {
            return (Long) f.invoke(null, new Object[0]);
        } catch (IllegalAccessException e2) {
            throw new a(e2);
        } catch (InvocationTargetException e3) {
            throw new a(e3);
        }
    }

    static int[] h(Context context) throws a {
        if (m == null) {
            throw new a();
        }
        try {
            return (int[]) m.invoke(null, context);
        } catch (IllegalAccessException e2) {
            throw new a(e2);
        } catch (InvocationTargetException e3) {
            throw new a(e3);
        }
    }

    static int i(Context context) throws a {
        if (p == null) {
            throw new a();
        }
        try {
            return ((Integer) p.invoke(null, context)).intValue();
        } catch (IllegalAccessException e2) {
            throw new a(e2);
        } catch (InvocationTargetException e3) {
            throw new a(e3);
        }
    }

    static int j(Context context) throws a {
        if (q == null) {
            throw new a();
        }
        try {
            return ((Integer) q.invoke(null, context)).intValue();
        } catch (IllegalAccessException e2) {
            throw new a(e2);
        } catch (InvocationTargetException e3) {
            throw new a(e3);
        }
    }

    private static String b(byte[] bArr, String str) throws a {
        try {
            return new String(v.a(bArr, str), Constants.UTF8_NAME);
        } catch (k.a e2) {
            throw new a(e2);
        } catch (UnsupportedEncodingException e3) {
            throw new a(e3);
        }
    }

    private static void k(Context context) throws a {
        try {
            byte[] bArrA = v.a(m.a());
            byte[] bArrA2 = v.a(bArrA, m.b());
            File cacheDir = context.getCacheDir();
            if (cacheDir == null && (cacheDir = context.getDir("dex", 0)) == null) {
                throw new a();
            }
            File file = cacheDir;
            File fileCreateTempFile = File.createTempFile("ads", ".jar", file);
            FileOutputStream fileOutputStream = new FileOutputStream(fileCreateTempFile);
            fileOutputStream.write(bArrA2, 0, bArrA2.length);
            fileOutputStream.close();
            try {
                DexClassLoader dexClassLoader = new DexClassLoader(fileCreateTempFile.getAbsolutePath(), file.getAbsolutePath(), null, context.getClassLoader());
                Class clsLoadClass = dexClassLoader.loadClass(b(bArrA, m.k()));
                Class clsLoadClass2 = dexClassLoader.loadClass(b(bArrA, m.y()));
                Class clsLoadClass3 = dexClassLoader.loadClass(b(bArrA, m.s()));
                Class clsLoadClass4 = dexClassLoader.loadClass(b(bArrA, m.o()));
                Class clsLoadClass5 = dexClassLoader.loadClass(b(bArrA, m.A()));
                Class clsLoadClass6 = dexClassLoader.loadClass(b(bArrA, m.m()));
                Class clsLoadClass7 = dexClassLoader.loadClass(b(bArrA, m.w()));
                Class clsLoadClass8 = dexClassLoader.loadClass(b(bArrA, m.u()));
                Class clsLoadClass9 = dexClassLoader.loadClass(b(bArrA, m.i()));
                Class clsLoadClass10 = dexClassLoader.loadClass(b(bArrA, m.g()));
                Class clsLoadClass11 = dexClassLoader.loadClass(b(bArrA, m.e()));
                Class clsLoadClass12 = dexClassLoader.loadClass(b(bArrA, m.q()));
                Class clsLoadClass13 = dexClassLoader.loadClass(b(bArrA, m.c()));
                e = clsLoadClass.getMethod(b(bArrA, m.l()), new Class[0]);
                f = clsLoadClass2.getMethod(b(bArrA, m.z()), new Class[0]);
                g = clsLoadClass3.getMethod(b(bArrA, m.t()), new Class[0]);
                h = clsLoadClass4.getMethod(b(bArrA, m.p()), Context.class);
                i = clsLoadClass5.getMethod(b(bArrA, m.B()), MotionEvent.class, DisplayMetrics.class);
                j = clsLoadClass6.getMethod(b(bArrA, m.n()), Context.class);
                k = clsLoadClass7.getMethod(b(bArrA, m.x()), Context.class);
                l = clsLoadClass8.getMethod(b(bArrA, m.v()), Context.class);
                m = clsLoadClass9.getMethod(b(bArrA, m.j()), Context.class);
                n = clsLoadClass10.getMethod(b(bArrA, m.h()), Context.class);
                o = clsLoadClass11.getMethod(b(bArrA, m.f()), Context.class);
                p = clsLoadClass12.getMethod(b(bArrA, m.r()), Context.class);
                q = clsLoadClass13.getMethod(b(bArrA, m.d()), Context.class);
            } finally {
                String name = fileCreateTempFile.getName();
                fileCreateTempFile.delete();
                new File(file, name.replace(".jar", ".dex")).delete();
            }
        } catch (k.a e2) {
            throw new a(e2);
        } catch (FileNotFoundException e3) {
            throw new a(e3);
        } catch (IOException e4) {
            throw new a(e4);
        } catch (ClassNotFoundException e5) {
            throw new a(e5);
        } catch (NoSuchMethodException e6) {
            throw new a(e6);
        } catch (NullPointerException e7) {
            throw new a(e7);
        }
    }
}
