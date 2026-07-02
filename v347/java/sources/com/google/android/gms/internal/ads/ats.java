package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.graphics.Point;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class ats extends auh implements View.OnClickListener, View.OnTouchListener, ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String[] f4498a = {"2011", "1009", "3010"};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final FrameLayout f4500c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private FrameLayout f4501d;
    private View e;
    private final boolean f;
    private View h;
    private ate i;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f4499b = new Object();
    private Map<String, WeakReference<View>> g = Collections.synchronizedMap(new HashMap());
    private boolean j = false;
    private Point k = new Point();
    private Point l = new Point();
    private WeakReference<akf> m = new WeakReference<>(null);

    @TargetApi(21)
    public ats(FrameLayout frameLayout, FrameLayout frameLayout2) {
        this.f4500c = frameLayout;
        this.f4501d = frameLayout2;
        com.google.android.gms.ads.internal.aw.A();
        nw.a((View) this.f4500c, (ViewTreeObserver.OnGlobalLayoutListener) this);
        com.google.android.gms.ads.internal.aw.A();
        nw.a((View) this.f4500c, (ViewTreeObserver.OnScrollChangedListener) this);
        this.f4500c.setOnTouchListener(this);
        this.f4500c.setOnClickListener(this);
        if (frameLayout2 != null && com.google.android.gms.common.util.n.i()) {
            frameLayout2.setElevation(Float.MAX_VALUE);
        }
        aro.a(this.f4500c.getContext());
        this.f = ((Boolean) aoo.f().a(aro.ci)).booleanValue();
    }

    private final int a(int i) {
        aoo.a();
        return ly.b(this.i.m(), i);
    }

    private final void a(View view) {
        if (this.i != null) {
            ate ateVarF = this.i instanceof atd ? ((atd) this.i).f() : this.i;
            if (ateVarF != null) {
                ateVarF.c(view);
            }
        }
    }

    private final void b() {
        synchronized (this.f4499b) {
            if (!this.f && this.j) {
                int measuredWidth = this.f4500c.getMeasuredWidth();
                int measuredHeight = this.f4500c.getMeasuredHeight();
                if (measuredWidth != 0 && measuredHeight != 0 && this.f4501d != null) {
                    this.f4501d.setLayoutParams(new FrameLayout.LayoutParams(measuredWidth, measuredHeight));
                    this.j = false;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.aug
    public final com.google.android.gms.b.a a(String str) {
        synchronized (this.f4499b) {
            if (this.g == null) {
                return null;
            }
            WeakReference<View> weakReference = this.g.get(str);
            return com.google.android.gms.b.b.a(weakReference != null ? weakReference.get() : null);
        }
    }

    @Override // com.google.android.gms.internal.ads.aug
    public final void a() {
        synchronized (this.f4499b) {
            if (this.f4501d != null) {
                this.f4501d.removeAllViews();
            }
            this.f4501d = null;
            this.g = null;
            this.h = null;
            this.i = null;
            this.k = null;
            this.l = null;
            this.m = null;
            this.e = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:117:0x021b  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0279  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x018f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x010f A[Catch: all -> 0x00b0, TryCatch #0 {, blocks: (B:5:0x0008, B:7:0x0013, B:8:0x0018, B:10:0x001a, B:12:0x001e, B:14:0x0022, B:15:0x0033, B:17:0x003c, B:19:0x004e, B:20:0x0057, B:22:0x005d, B:24:0x0063, B:26:0x0069, B:28:0x0079, B:30:0x007f, B:31:0x0083, B:34:0x008f, B:35:0x0092, B:37:0x0098, B:39:0x00a2, B:40:0x00a9, B:42:0x00ad, B:50:0x00c2, B:52:0x00d4, B:53:0x00da, B:55:0x00e5, B:57:0x00e9, B:59:0x00f9, B:61:0x0105, B:62:0x010b, B:64:0x010f, B:68:0x0117, B:70:0x0121, B:72:0x0125, B:74:0x0135, B:118:0x021e, B:120:0x023a, B:75:0x013d, B:77:0x014b, B:79:0x014f, B:80:0x0168, B:82:0x0172, B:83:0x0179, B:85:0x017f, B:87:0x0183, B:88:0x018c, B:89:0x018e, B:101:0x01b8, B:103:0x01cf, B:105:0x01d5, B:107:0x01db, B:109:0x01eb, B:111:0x01f5, B:112:0x0209, B:113:0x0210, B:136:0x0274, B:122:0x0242, B:124:0x024b, B:125:0x0253, B:115:0x0213, B:47:0x00b3, B:49:0x00b9, B:90:0x018f, B:92:0x0198, B:94:0x019e, B:96:0x01aa, B:97:0x01b0, B:99:0x01b4, B:100:0x01b7, B:129:0x0263, B:131:0x026c, B:132:0x026f, B:137:0x0275), top: B:140:0x0008, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0114 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0121 A[Catch: all -> 0x00b0, TryCatch #0 {, blocks: (B:5:0x0008, B:7:0x0013, B:8:0x0018, B:10:0x001a, B:12:0x001e, B:14:0x0022, B:15:0x0033, B:17:0x003c, B:19:0x004e, B:20:0x0057, B:22:0x005d, B:24:0x0063, B:26:0x0069, B:28:0x0079, B:30:0x007f, B:31:0x0083, B:34:0x008f, B:35:0x0092, B:37:0x0098, B:39:0x00a2, B:40:0x00a9, B:42:0x00ad, B:50:0x00c2, B:52:0x00d4, B:53:0x00da, B:55:0x00e5, B:57:0x00e9, B:59:0x00f9, B:61:0x0105, B:62:0x010b, B:64:0x010f, B:68:0x0117, B:70:0x0121, B:72:0x0125, B:74:0x0135, B:118:0x021e, B:120:0x023a, B:75:0x013d, B:77:0x014b, B:79:0x014f, B:80:0x0168, B:82:0x0172, B:83:0x0179, B:85:0x017f, B:87:0x0183, B:88:0x018c, B:89:0x018e, B:101:0x01b8, B:103:0x01cf, B:105:0x01d5, B:107:0x01db, B:109:0x01eb, B:111:0x01f5, B:112:0x0209, B:113:0x0210, B:136:0x0274, B:122:0x0242, B:124:0x024b, B:125:0x0253, B:115:0x0213, B:47:0x00b3, B:49:0x00b9, B:90:0x018f, B:92:0x0198, B:94:0x019e, B:96:0x01aa, B:97:0x01b0, B:99:0x01b4, B:100:0x01b7, B:129:0x0263, B:131:0x026c, B:132:0x026f, B:137:0x0275), top: B:140:0x0008, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x014b A[Catch: all -> 0x00b0, TryCatch #0 {, blocks: (B:5:0x0008, B:7:0x0013, B:8:0x0018, B:10:0x001a, B:12:0x001e, B:14:0x0022, B:15:0x0033, B:17:0x003c, B:19:0x004e, B:20:0x0057, B:22:0x005d, B:24:0x0063, B:26:0x0069, B:28:0x0079, B:30:0x007f, B:31:0x0083, B:34:0x008f, B:35:0x0092, B:37:0x0098, B:39:0x00a2, B:40:0x00a9, B:42:0x00ad, B:50:0x00c2, B:52:0x00d4, B:53:0x00da, B:55:0x00e5, B:57:0x00e9, B:59:0x00f9, B:61:0x0105, B:62:0x010b, B:64:0x010f, B:68:0x0117, B:70:0x0121, B:72:0x0125, B:74:0x0135, B:118:0x021e, B:120:0x023a, B:75:0x013d, B:77:0x014b, B:79:0x014f, B:80:0x0168, B:82:0x0172, B:83:0x0179, B:85:0x017f, B:87:0x0183, B:88:0x018c, B:89:0x018e, B:101:0x01b8, B:103:0x01cf, B:105:0x01d5, B:107:0x01db, B:109:0x01eb, B:111:0x01f5, B:112:0x0209, B:113:0x0210, B:136:0x0274, B:122:0x0242, B:124:0x024b, B:125:0x0253, B:115:0x0213, B:47:0x00b3, B:49:0x00b9, B:90:0x018f, B:92:0x0198, B:94:0x019e, B:96:0x01aa, B:97:0x01b0, B:99:0x01b4, B:100:0x01b7, B:129:0x0263, B:131:0x026c, B:132:0x026f, B:137:0x0275), top: B:140:0x0008, inners: #1, #2 }] */
    @Override // com.google.android.gms.internal.ads.aug
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a(com.google.android.gms.b.a r13) {
        /*
            Method dump skipped, instruction units count: 636
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ats.a(com.google.android.gms.b.a):void");
    }

    @Override // com.google.android.gms.internal.ads.aug
    public final void a(com.google.android.gms.b.a aVar, int i) {
        akf akfVar;
        if (com.google.android.gms.ads.internal.aw.B().c(this.f4500c.getContext()) && this.m != null && (akfVar = this.m.get()) != null) {
            akfVar.a();
        }
        b();
    }

    @Override // com.google.android.gms.internal.ads.aug
    public final void a(String str, com.google.android.gms.b.a aVar) {
        View view = (View) com.google.android.gms.b.b.a(aVar);
        synchronized (this.f4499b) {
            if (this.g == null) {
                return;
            }
            if (view == null) {
                this.g.remove(str);
            } else {
                this.g.put(str, new WeakReference<>(view));
                if ("1098".equals(str) || "3011".equals(str)) {
                    return;
                }
                view.setOnTouchListener(this);
                view.setClickable(true);
                view.setOnClickListener(this);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.aug
    public final void b(com.google.android.gms.b.a aVar) {
        this.i.a((View) com.google.android.gms.b.b.a(aVar));
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        synchronized (this.f4499b) {
            if (this.i == null) {
                return;
            }
            this.i.c();
            Bundle bundle = new Bundle();
            bundle.putFloat("x", a(this.k.x));
            bundle.putFloat("y", a(this.k.y));
            bundle.putFloat("start_x", a(this.l.x));
            bundle.putFloat("start_y", a(this.l.y));
            if (this.h == null || !this.h.equals(view)) {
                this.i.a(view, this.g, bundle, this.f4500c);
            } else if (!(this.i instanceof atd)) {
                this.i.a(view, "1007", bundle, this.g, this.f4500c);
            } else if (((atd) this.i).f() != null) {
                ((atd) this.i).f().a(view, "1007", bundle, this.g, this.f4500c);
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        synchronized (this.f4499b) {
            b();
            if (this.i != null) {
                this.i.c(this.f4500c, this.g);
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        synchronized (this.f4499b) {
            if (this.i != null) {
                this.i.c(this.f4500c, this.g);
            }
            b();
        }
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        synchronized (this.f4499b) {
            if (this.i != null) {
                this.f4500c.getLocationOnScreen(new int[2]);
                Point point = new Point((int) (motionEvent.getRawX() - r0[0]), (int) (motionEvent.getRawY() - r0[1]));
                this.k = point;
                if (motionEvent.getAction() == 0) {
                    this.l = point;
                }
                MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
                motionEventObtain.setLocation(point.x, point.y);
                this.i.a(motionEventObtain);
                motionEventObtain.recycle();
            }
        }
        return false;
    }
}
