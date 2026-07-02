package com.google.a.a;

import android.content.Context;
import com.google.a.a.e;
import com.google.android.gms.ads.a.a;
import java.io.IOException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class f extends e {
    private static com.google.android.gms.ads.a.a e = null;
    private static CountDownLatch f = new CountDownLatch(1);
    private static volatile boolean g;
    private boolean h;

    class a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f2580b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f2581c;

        public a(String str, boolean z) {
            this.f2580b = str;
            this.f2581c = z;
        }

        public String a() {
            return this.f2580b;
        }

        public boolean b() {
            return this.f2581c;
        }
    }

    private static final class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Context f2582a;

        public b(Context context) {
            this.f2582a = context.getApplicationContext();
            if (this.f2582a == null) {
                this.f2582a = context;
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (f.class) {
                try {
                    try {
                        try {
                            if (f.e == null) {
                                com.google.android.gms.ads.a.a aVar = new com.google.android.gms.ads.a.a(this.f2582a);
                                aVar.a();
                                com.google.android.gms.ads.a.a unused = f.e = aVar;
                            }
                        } catch (com.google.android.gms.common.h e) {
                            boolean unused2 = f.g = true;
                            f.f.countDown();
                        }
                    } finally {
                        f.f.countDown();
                    }
                } catch (com.google.android.gms.common.i e2) {
                    f.f.countDown();
                } catch (IOException e3) {
                    f.f.countDown();
                }
            }
        }
    }

    public static f a(String str, Context context) {
        return a(str, context, true);
    }

    public static f a(String str, Context context, boolean z) {
        com.google.a.a.a aVar = new com.google.a.a.a();
        a(str, context, aVar);
        if (z) {
            synchronized (f.class) {
                if (e == null) {
                    new Thread(new b(context)).start();
                }
            }
        }
        return new f(context, aVar, new l(239), z);
    }

    protected f(Context context, i iVar, j jVar, boolean z) {
        super(context, iVar, jVar);
        this.h = z;
    }

    a e() throws IOException {
        a aVar;
        try {
            if (!f.await(2L, TimeUnit.SECONDS)) {
                return new a(null, false);
            }
            synchronized (f.class) {
                if (e == null) {
                    aVar = new a(null, false);
                } else {
                    a.C0063a c0063aB = e.b();
                    aVar = new a(a(c0063aB.a()), c0063aB.b());
                }
            }
            return aVar;
        } catch (InterruptedException e2) {
            return new a(null, false);
        }
    }

    @Override // com.google.a.a.e, com.google.a.a.d
    protected void b(Context context) {
        super.b(context);
        try {
            if (g || !this.h) {
                a(24, d(context));
            } else {
                a aVarE = e();
                String strA = aVarE.a();
                if (strA != null) {
                    a(28, aVarE.b() ? 1L : 0L);
                    a(26, 5L);
                    a(24, strA);
                }
            }
        } catch (e.a e2) {
        } catch (IOException e3) {
        }
    }
}
