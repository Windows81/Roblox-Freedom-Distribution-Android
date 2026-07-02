package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Looper;
import android.support.v7.widget.RecyclerView;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.Nullable;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class in implements jj {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ajh f5132b;
    private Context f;
    private zzang g;
    private String l;
    private nd<ArrayList<String>> p;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f5131a = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final iu f5133c = new iu();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final jf f5134d = new jf();
    private boolean e = false;

    @Nullable
    private arr h = null;

    @Nullable
    private alb i = null;

    @Nullable
    private akw j = null;

    @Nullable
    private Boolean k = null;
    private final AtomicInteger m = new AtomicInteger(0);
    private final iq n = new iq(null);
    private final Object o = new Object();

    @Nullable
    private final alb a(@Nullable Context context, boolean z, boolean z2) {
        if (((Boolean) aoo.f().a(aro.Q)).booleanValue() && com.google.android.gms.common.util.n.b()) {
            if (!((Boolean) aoo.f().a(aro.Y)).booleanValue()) {
                if (!((Boolean) aoo.f().a(aro.W)).booleanValue()) {
                    return null;
                }
            }
            if (z && z2) {
                return null;
            }
            synchronized (this.f5131a) {
                if (Looper.getMainLooper() == null || context == null) {
                    return null;
                }
                if (this.j == null) {
                    this.j = new akw();
                }
                if (this.i == null) {
                    this.i = new alb(this.j, cg.a(context, this.g));
                }
                this.i.a();
                jd.d("start fetching content...");
                return this.i;
            }
        }
        return null;
    }

    @TargetApi(16)
    private static ArrayList<String> b(Context context) {
        ArrayList<String> arrayList = new ArrayList<>();
        try {
            PackageInfo packageInfoB = com.google.android.gms.common.c.c.b(context).b(context.getApplicationInfo().packageName, RecyclerView.ItemAnimator.FLAG_APPEARED_IN_PRE_LAYOUT);
            if (packageInfoB.requestedPermissions == null || packageInfoB.requestedPermissionsFlags == null) {
                return arrayList;
            }
            for (int i = 0; i < packageInfoB.requestedPermissions.length; i++) {
                if ((packageInfoB.requestedPermissionsFlags[i] & 2) != 0) {
                    arrayList.add(packageInfoB.requestedPermissions[i]);
                }
            }
            return arrayList;
        } catch (PackageManager.NameNotFoundException e) {
            return arrayList;
        }
    }

    @Nullable
    public final alb a(@Nullable Context context) {
        return a(context, this.f5134d.b(), this.f5134d.d());
    }

    public final iu a() {
        return this.f5133c;
    }

    @TargetApi(23)
    public final void a(Context context, zzang zzangVar) {
        arr arrVar;
        synchronized (this.f5131a) {
            if (!this.e) {
                this.f = context.getApplicationContext();
                this.g = zzangVar;
                com.google.android.gms.ads.internal.aw.h().a(com.google.android.gms.ads.internal.aw.j());
                this.f5134d.a(this.f);
                this.f5134d.a(this);
                cg.a(this.f, this.g);
                this.l = com.google.android.gms.ads.internal.aw.e().b(context, zzangVar.f5784a);
                this.f5132b = new ajh(context.getApplicationContext(), this.g);
                com.google.android.gms.ads.internal.aw.n();
                if (((Boolean) aoo.f().a(aro.N)).booleanValue()) {
                    arrVar = new arr();
                } else {
                    jd.a("CsiReporterFactory: CSI is not enabled. No CSI reporter created.");
                    arrVar = null;
                }
                this.h = arrVar;
                mq.a((nd) new ip(this).c(), "AppState.registerCsiReporter");
                this.e = true;
                n();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.jj
    public final void a(Bundle bundle) {
        if (bundle.containsKey("content_url_opted_out") && bundle.containsKey("content_vertical_opted_out")) {
            a(this.f, bundle.getBoolean("content_url_opted_out"), bundle.getBoolean("content_vertical_opted_out"));
        }
    }

    public final void a(Boolean bool) {
        synchronized (this.f5131a) {
            this.k = bool;
        }
    }

    public final void a(Throwable th, String str) {
        cg.a(this.f, this.g).a(th, str);
    }

    public final void a(boolean z) {
        this.n.a(z);
    }

    @Nullable
    public final arr b() {
        arr arrVar;
        synchronized (this.f5131a) {
            arrVar = this.h;
        }
        return arrVar;
    }

    public final void b(Throwable th, String str) {
        cg.a(this.f, this.g).a(th, str, ((Float) aoo.f().a(aro.f)).floatValue());
    }

    public final Boolean c() {
        Boolean bool;
        synchronized (this.f5131a) {
            bool = this.k;
        }
        return bool;
    }

    public final boolean d() {
        return this.n.a();
    }

    public final boolean e() {
        return this.n.b();
    }

    public final void f() {
        this.n.c();
    }

    public final ajh g() {
        return this.f5132b;
    }

    @Nullable
    public final Resources h() {
        if (this.g.f5787d) {
            return this.f.getResources();
        }
        try {
            DynamiteModule dynamiteModuleA = DynamiteModule.a(this.f, DynamiteModule.f3606a, ModuleDescriptor.MODULE_ID);
            if (dynamiteModuleA != null) {
                return dynamiteModuleA.a().getResources();
            }
            return null;
        } catch (DynamiteModule.a e) {
            jd.c("Cannot load resource from dynamite apk or local jar", e);
            return null;
        }
    }

    public final void i() {
        this.m.incrementAndGet();
    }

    public final void j() {
        this.m.decrementAndGet();
    }

    public final int k() {
        return this.m.get();
    }

    public final jf l() {
        jf jfVar;
        synchronized (this.f5131a) {
            jfVar = this.f5134d;
        }
        return jfVar;
    }

    @Nullable
    public final Context m() {
        return this.f;
    }

    public final nd<ArrayList<String>> n() {
        nd<ArrayList<String>> ndVarA;
        if (this.f != null && com.google.android.gms.common.util.n.d()) {
            if (!((Boolean) aoo.f().a(aro.bH)).booleanValue()) {
                synchronized (this.o) {
                    if (this.p != null) {
                        ndVarA = this.p;
                    } else {
                        ndVarA = jk.a(new Callable(this) { // from class: com.google.android.gms.internal.ads.io

                            /* JADX INFO: renamed from: a, reason: collision with root package name */
                            private final in f5135a;

                            {
                                this.f5135a = this;
                            }

                            @Override // java.util.concurrent.Callable
                            public final Object call() {
                                return this.f5135a.o();
                            }
                        });
                        this.p = ndVarA;
                    }
                }
                return ndVarA;
            }
        }
        return ms.a(new ArrayList());
    }

    final /* synthetic */ ArrayList o() throws Exception {
        return b(this.f);
    }
}
