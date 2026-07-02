package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Handler;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class kg {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f5200a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f5201b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f5202c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f5203d;
    private String e;
    private final float f;
    private float g;
    private float h;
    private float i;
    private int j;
    private int k;
    private float l;
    private float m;
    private float n;
    private float o;
    private Handler p;
    private Runnable q;

    public kg(Context context) {
        this.j = 0;
        this.q = new Runnable(this) { // from class: com.google.android.gms.internal.ads.kh

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final kg f5204a;

            {
                this.f5204a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f5204a.d();
            }
        };
        this.f5200a = context;
        this.f = context.getResources().getDisplayMetrics().density;
        this.k = ViewConfiguration.get(this.f5200a).getScaledTouchSlop();
        com.google.android.gms.ads.internal.aw.t().a();
        this.p = com.google.android.gms.ads.internal.aw.t().b();
    }

    public kg(Context context, String str) {
        this(context);
        this.f5201b = str;
    }

    private static int a(List<String> list, String str, boolean z) {
        if (!z) {
            return -1;
        }
        list.add(str);
        return list.size() - 1;
    }

    private final void a(int i, float f, float f2) {
        if (i == 0) {
            this.j = 0;
            this.g = f;
            this.h = f2;
            this.i = f2;
            return;
        }
        if (this.j != -1) {
            if (i != 2) {
                if (i == 1 && this.j == 4) {
                    a();
                    return;
                }
                return;
            }
            if (f2 > this.h) {
                this.h = f2;
            } else if (f2 < this.i) {
                this.i = f2;
            }
            if (this.h - this.i > 30.0f * this.f) {
                this.j = -1;
                return;
            }
            if (this.j == 0 || this.j == 2) {
                if (f - this.g >= 50.0f * this.f) {
                    this.g = f;
                    this.j++;
                }
            } else if ((this.j == 1 || this.j == 3) && f - this.g <= (-50.0f) * this.f) {
                this.g = f;
                this.j++;
            }
            if (this.j == 1 || this.j == 3) {
                if (f > this.g) {
                    this.g = f;
                }
            } else {
                if (this.j != 2 || f >= this.g) {
                    return;
                }
                this.g = f;
            }
        }
    }

    private final boolean a(float f, float f2, float f3, float f4) {
        return Math.abs(this.l - f) < ((float) this.k) && Math.abs(this.m - f2) < ((float) this.k) && Math.abs(this.n - f3) < ((float) this.k) && Math.abs(this.o - f4) < ((float) this.k);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x009a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void e() {
        /*
            r6 = this;
            android.content.Context r0 = r6.f5200a
            boolean r0 = r0 instanceof android.app.Activity
            if (r0 != 0) goto Lc
            java.lang.String r0 = "Can not create dialog without Activity Context"
            com.google.android.gms.internal.ads.jd.d(r0)
        Lb:
            return
        Lc:
            java.lang.String r0 = r6.f5201b
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 != 0) goto L9a
            java.lang.String r1 = "\\+"
            java.lang.String r2 = "%20"
            java.lang.String r0 = r0.replaceAll(r1, r2)
            android.net.Uri$Builder r1 = new android.net.Uri$Builder
            r1.<init>()
            android.net.Uri$Builder r0 = r1.encodedQuery(r0)
            android.net.Uri r0 = r0.build()
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            com.google.android.gms.ads.internal.aw.e()
            java.util.Map r2 = com.google.android.gms.internal.ads.jm.a(r0)
            java.util.Set r0 = r2.keySet()
            java.util.Iterator r3 = r0.iterator()
        L3d:
            boolean r0 = r3.hasNext()
            if (r0 == 0) goto L63
            java.lang.Object r0 = r3.next()
            java.lang.String r0 = (java.lang.String) r0
            java.lang.StringBuilder r4 = r1.append(r0)
            java.lang.String r5 = " = "
            java.lang.StringBuilder r4 = r4.append(r5)
            java.lang.Object r0 = r2.get(r0)
            java.lang.String r0 = (java.lang.String) r0
            java.lang.StringBuilder r0 = r4.append(r0)
            java.lang.String r4 = "\n\n"
            r0.append(r4)
            goto L3d
        L63:
            java.lang.String r0 = r1.toString()
            java.lang.String r0 = r0.trim()
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 != 0) goto L9a
        L71:
            android.app.AlertDialog$Builder r1 = new android.app.AlertDialog$Builder
            android.content.Context r2 = r6.f5200a
            r1.<init>(r2)
            r1.setMessage(r0)
            java.lang.String r2 = "Ad Information"
            r1.setTitle(r2)
            java.lang.String r2 = "Share"
            com.google.android.gms.internal.ads.kj r3 = new com.google.android.gms.internal.ads.kj
            r3.<init>(r6, r0)
            r1.setPositiveButton(r2, r3)
            java.lang.String r0 = "Close"
            android.content.DialogInterface$OnClickListener r2 = com.google.android.gms.internal.ads.kk.f5211a
            r1.setNegativeButton(r0, r2)
            android.app.AlertDialog r0 = r1.create()
            r0.show()
            goto Lb
        L9a:
            java.lang.String r0 = "No debug information"
            goto L71
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.kg.e():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0024 A[Catch: BadTokenException -> 0x00b0, TryCatch #0 {BadTokenException -> 0x00b0, blocks: (B:2:0x0000, B:4:0x0012, B:24:0x00c9, B:6:0x0024, B:8:0x002a, B:10:0x0030, B:13:0x0041, B:16:0x004e), top: B:27:0x0000 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a() {
        /*
            Method dump skipped, instruction units count: 206
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.kg.a():void");
    }

    final /* synthetic */ void a(int i, int i2, int i3, DialogInterface dialogInterface, int i4) {
        if (i4 == i) {
            e();
            return;
        }
        if (i4 == i2) {
            if (((Boolean) aoo.f().a(aro.cO)).booleanValue()) {
                jd.b("Debug mode [Creative Preview] selected.");
                jk.a(new Runnable(this) { // from class: com.google.android.gms.internal.ads.kl

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    private final kg f5212a;

                    {
                        this.f5212a = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f5212a.c();
                    }
                });
                return;
            }
        }
        if (i4 == i3) {
            if (((Boolean) aoo.f().a(aro.cP)).booleanValue()) {
                jd.b("Debug mode [Troubleshooting] selected.");
                jk.a(new Runnable(this) { // from class: com.google.android.gms.internal.ads.km

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    private final kg f5213a;

                    {
                        this.f5213a = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f5213a.b();
                    }
                });
            }
        }
    }

    public final void a(MotionEvent motionEvent) {
        boolean z = true;
        if (!((Boolean) aoo.f().a(aro.cQ)).booleanValue()) {
            int historySize = motionEvent.getHistorySize();
            for (int i = 0; i < historySize; i++) {
                a(motionEvent.getActionMasked(), motionEvent.getHistoricalX(0, i), motionEvent.getHistoricalY(0, i));
            }
            a(motionEvent.getActionMasked(), motionEvent.getX(), motionEvent.getY());
            return;
        }
        int actionMasked = motionEvent.getActionMasked();
        int historySize2 = motionEvent.getHistorySize();
        int pointerCount = motionEvent.getPointerCount();
        if (actionMasked == 0) {
            this.j = 0;
            this.l = motionEvent.getX();
            this.m = motionEvent.getY();
            return;
        }
        if (this.j != -1) {
            if (this.j == 0 && actionMasked == 5) {
                this.j = 5;
                this.n = motionEvent.getX(1);
                this.o = motionEvent.getY(1);
                this.p.postDelayed(this.q, ((Long) aoo.f().a(aro.cR)).longValue());
                return;
            }
            if (this.j == 5) {
                if (pointerCount == 2) {
                    if (actionMasked == 2) {
                        boolean z2 = false;
                        for (int i2 = 0; i2 < historySize2; i2++) {
                            if (!a(motionEvent.getHistoricalX(0, i2), motionEvent.getHistoricalY(0, i2), motionEvent.getHistoricalX(1, i2), motionEvent.getHistoricalY(1, i2))) {
                                z2 = true;
                            }
                        }
                        if (a(motionEvent.getX(), motionEvent.getY(), motionEvent.getX(1), motionEvent.getY(1))) {
                            z = z2;
                        }
                    } else {
                        z = false;
                    }
                }
                if (z) {
                    this.j = -1;
                    this.p.removeCallbacks(this.q);
                }
            }
        }
    }

    public final void a(String str) {
        this.f5202c = str;
    }

    final /* synthetic */ void a(String str, DialogInterface dialogInterface, int i) {
        com.google.android.gms.ads.internal.aw.e();
        jm.a(this.f5200a, Intent.createChooser(new Intent("android.intent.action.SEND").setType("text/plain").putExtra("android.intent.extra.TEXT", str), "Share via"));
    }

    final /* synthetic */ void b() {
        com.google.android.gms.ads.internal.aw.o().a(this.f5200a, this.f5202c, this.f5203d, this.e);
    }

    public final void b(String str) {
        this.f5203d = str;
    }

    final /* synthetic */ void c() {
        com.google.android.gms.ads.internal.aw.o().a(this.f5200a, this.f5202c, this.f5203d);
    }

    public final void c(String str) {
        this.f5201b = str;
    }

    final /* synthetic */ void d() {
        this.j = 4;
        a();
    }

    public final void d(String str) {
        this.e = str;
    }
}
