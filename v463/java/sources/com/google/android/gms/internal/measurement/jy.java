package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Binder;
import android.os.Build;
import android.util.Log;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class jy<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Object f4645b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Context f4646c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f4647d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static volatile Boolean f4648e = null;
    private static volatile Boolean f = null;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final String f4649a;
    private final kj g;
    private final String h;
    private final T i;
    private T j;
    private volatile jv k;
    private volatile SharedPreferences l;

    private jy(kj kjVar, String str, T t) {
        this.j = null;
        this.k = null;
        this.l = null;
        if (kjVar.f4660b == null) {
            throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
        }
        this.g = kjVar;
        String strValueOf = String.valueOf(kjVar.f4661c);
        String strValueOf2 = String.valueOf(str);
        this.h = strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf);
        String strValueOf3 = String.valueOf(kjVar.f4662d);
        String strValueOf4 = String.valueOf(str);
        this.f4649a = strValueOf4.length() != 0 ? strValueOf3.concat(strValueOf4) : new String(strValueOf3);
        this.i = t;
    }

    /* synthetic */ jy(kj kjVar, String str, Object obj, kc kcVar) {
        this(kjVar, str, obj);
    }

    private static <V> V a(ki<V> kiVar) {
        try {
            return kiVar.a();
        } catch (SecurityException unused) {
            long jClearCallingIdentity = Binder.clearCallingIdentity();
            try {
                return kiVar.a();
            } finally {
                Binder.restoreCallingIdentity(jClearCallingIdentity);
            }
        }
    }

    public static void a(Context context) {
        Context applicationContext;
        synchronized (f4645b) {
            if ((Build.VERSION.SDK_INT < 24 || !context.isDeviceProtectedStorage()) && (applicationContext = context.getApplicationContext()) != null) {
                context = applicationContext;
            }
            if (f4646c != context) {
                f4648e = null;
            }
            f4646c = context;
        }
        f4647d = false;
    }

    static boolean a(final String str, boolean z) {
        final boolean z2 = false;
        try {
            if (e()) {
                return ((Boolean) a(new ki(str, z2) { // from class: com.google.android.gms.internal.measurement.kb

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    private final String f4656a;

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    private final boolean f4657b = false;

                    {
                        this.f4656a = str;
                    }

                    @Override // com.google.android.gms.internal.measurement.ki
                    public final Object a() {
                        return Boolean.valueOf(jt.a(jy.f4646c.getContentResolver(), this.f4656a, this.f4657b));
                    }
                })).booleanValue();
            }
            return false;
        } catch (SecurityException e2) {
            Log.e("PhenotypeFlag", "Unable to read GServices, returning default value.", e2);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static jy<Double> b(kj kjVar, String str, double d2) {
        return new kf(kjVar, str, Double.valueOf(d2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static jy<Integer> b(kj kjVar, String str, int i) {
        return new kd(kjVar, str, Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static jy<Long> b(kj kjVar, String str, long j) {
        return new kc(kjVar, str, Long.valueOf(j));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static jy<String> b(kj kjVar, String str, String str2) {
        return new kh(kjVar, str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static jy<Boolean> b(kj kjVar, String str, boolean z) {
        return new ke(kjVar, str, Boolean.valueOf(z));
    }

    @Nullable
    private final T c() {
        if (a("gms:phenotype:phenotype_flag:debug_bypass_phenotype", false)) {
            String strValueOf = String.valueOf(this.f4649a);
            Log.w("PhenotypeFlag", strValueOf.length() != 0 ? "Bypass reading Phenotype values for flag: ".concat(strValueOf) : new String("Bypass reading Phenotype values for flag: "));
            return null;
        }
        if (this.g.f4660b == null) {
            return null;
        }
        if (this.k == null) {
            this.k = jv.a(f4646c.getContentResolver(), this.g.f4660b);
        }
        final jv jvVar = this.k;
        String str = (String) a(new ki(this, jvVar) { // from class: com.google.android.gms.internal.measurement.jz

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final jy f4650a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final jv f4651b;

            {
                this.f4650a = this;
                this.f4651b = jvVar;
            }

            @Override // com.google.android.gms.internal.measurement.ki
            public final Object a() {
                return this.f4651b.a().get(this.f4650a.f4649a);
            }
        });
        if (str != null) {
            return a(str);
        }
        return null;
    }

    @Nullable
    private final T d() {
        if (!e()) {
            return null;
        }
        try {
            String str = (String) a(new ki(this) { // from class: com.google.android.gms.internal.measurement.ka

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                private final jy f4655a;

                {
                    this.f4655a = this;
                }

                @Override // com.google.android.gms.internal.measurement.ki
                public final Object a() {
                    return this.f4655a.b();
                }
            });
            if (str != null) {
                return a(str);
            }
            return null;
        } catch (SecurityException e2) {
            String strValueOf = String.valueOf(this.f4649a);
            Log.e("PhenotypeFlag", strValueOf.length() != 0 ? "Unable to read GServices for flag: ".concat(strValueOf) : new String("Unable to read GServices for flag: "), e2);
            return null;
        }
    }

    private static boolean e() {
        if (f4648e == null) {
            Context context = f4646c;
            if (context == null) {
                return false;
            }
            f4648e = Boolean.valueOf(androidx.core.a.c.b(context, "com.google.android.providers.gsf.permission.READ_GSERVICES") == 0);
        }
        return f4648e.booleanValue();
    }

    public final T a() {
        if (f4646c == null) {
            throw new IllegalStateException("Must call PhenotypeFlag.init() first");
        }
        T tC = c();
        if (tC != null) {
            return tC;
        }
        T tD = d();
        return tD != null ? tD : this.i;
    }

    protected abstract T a(String str);

    final /* synthetic */ String b() {
        return jt.a(f4646c.getContentResolver(), this.h, (String) null);
    }
}
