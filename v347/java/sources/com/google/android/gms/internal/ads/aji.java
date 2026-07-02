package com.google.android.gms.internal.ads;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.PowerManager;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class aji implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final ajg f4076a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final WeakReference<ii> f4078c;
    private final aku e;
    private final Context f;
    private final WindowManager g;
    private final PowerManager h;
    private final KeyguardManager i;
    private final DisplayMetrics j;
    private ajq k;
    private boolean l;
    private boolean p;
    private BroadcastReceiver r;
    private float x;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f4077b = new Object();
    private boolean m = false;
    private boolean n = false;
    private final HashSet<ajf> s = new HashSet<>();
    private final HashSet<ake> u = new HashSet<>();
    private final Rect v = new Rect();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private WeakReference<ViewTreeObserver> f4079d = new WeakReference<>(null);
    private boolean o = true;
    private boolean q = false;
    private ln t = new ln(200);
    private final ajl w = new ajl(this, new Handler());

    public aji(Context context, zzjn zzjnVar, ii iiVar, zzang zzangVar, aku akuVar) {
        this.f4078c = new WeakReference<>(iiVar);
        this.e = akuVar;
        this.f4076a = new ajg(UUID.randomUUID().toString(), zzangVar, zzjnVar.f5803a, iiVar.k, iiVar.a(), zzjnVar.h);
        this.g = (WindowManager) context.getSystemService("window");
        this.h = (PowerManager) context.getApplicationContext().getSystemService("power");
        this.i = (KeyguardManager) context.getSystemService("keyguard");
        this.f = context;
        this.f.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this.w);
        this.j = context.getResources().getDisplayMetrics();
        Display defaultDisplay = this.g.getDefaultDisplay();
        this.v.right = defaultDisplay.getWidth();
        this.v.bottom = defaultDisplay.getHeight();
        a();
    }

    private static int a(int i, DisplayMetrics displayMetrics) {
        return (int) (i / displayMetrics.density);
    }

    private final JSONObject a(View view, Boolean bool) throws JSONException {
        if (view == null) {
            return i().put("isAttachedToWindow", false).put("isScreenOn", j()).put("isVisible", false);
        }
        boolean zA = com.google.android.gms.ads.internal.aw.g().a(view);
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        try {
            view.getLocationOnScreen(iArr);
            view.getLocationInWindow(iArr2);
        } catch (Exception e) {
            jd.b("Failure getting view location.", e);
        }
        Rect rect = new Rect();
        rect.left = iArr[0];
        rect.top = iArr[1];
        rect.right = rect.left + view.getWidth();
        rect.bottom = rect.top + view.getHeight();
        Rect rect2 = new Rect();
        boolean globalVisibleRect = view.getGlobalVisibleRect(rect2, null);
        Rect rect3 = new Rect();
        boolean localVisibleRect = view.getLocalVisibleRect(rect3);
        Rect rect4 = new Rect();
        view.getHitRect(rect4);
        JSONObject jSONObjectI = i();
        jSONObjectI.put("windowVisibility", view.getWindowVisibility()).put("isAttachedToWindow", zA).put("viewBox", new JSONObject().put("top", a(this.v.top, this.j)).put("bottom", a(this.v.bottom, this.j)).put("left", a(this.v.left, this.j)).put("right", a(this.v.right, this.j))).put("adBox", new JSONObject().put("top", a(rect.top, this.j)).put("bottom", a(rect.bottom, this.j)).put("left", a(rect.left, this.j)).put("right", a(rect.right, this.j))).put("globalVisibleBox", new JSONObject().put("top", a(rect2.top, this.j)).put("bottom", a(rect2.bottom, this.j)).put("left", a(rect2.left, this.j)).put("right", a(rect2.right, this.j))).put("globalVisibleBoxVisible", globalVisibleRect).put("localVisibleBox", new JSONObject().put("top", a(rect3.top, this.j)).put("bottom", a(rect3.bottom, this.j)).put("left", a(rect3.left, this.j)).put("right", a(rect3.right, this.j))).put("localVisibleBoxVisible", localVisibleRect).put("hitBox", new JSONObject().put("top", a(rect4.top, this.j)).put("bottom", a(rect4.bottom, this.j)).put("left", a(rect4.left, this.j)).put("right", a(rect4.right, this.j))).put("screenDensity", this.j.density);
        if (bool == null) {
            bool = Boolean.valueOf(com.google.android.gms.ads.internal.aw.e().a(view, this.h, this.i));
        }
        jSONObjectI.put("isVisible", bool.booleanValue());
        return jSONObjectI;
    }

    private static JSONObject a(JSONObject jSONObject) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObject2 = new JSONObject();
        jSONArray.put(jSONObject);
        jSONObject2.put("units", jSONArray);
        return jSONObject2;
    }

    private final void a(JSONObject jSONObject, boolean z) {
        try {
            JSONObject jSONObjectA = a(jSONObject);
            ArrayList arrayList = new ArrayList(this.u);
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                ((ake) obj).a(jSONObjectA, z);
            }
        } catch (Throwable th) {
            jd.b("Skipping active view message.", th);
        }
    }

    private final void g() {
        if (this.k != null) {
            this.k.a(this);
        }
    }

    private final void h() {
        ViewTreeObserver viewTreeObserver = this.f4079d.get();
        if (viewTreeObserver == null || !viewTreeObserver.isAlive()) {
            return;
        }
        viewTreeObserver.removeOnScrollChangedListener(this);
        viewTreeObserver.removeGlobalOnLayoutListener(this);
    }

    private final JSONObject i() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("afmaVersion", this.f4076a.b()).put("activeViewJSON", this.f4076a.c()).put("timestamp", com.google.android.gms.ads.internal.aw.l().b()).put("adFormat", this.f4076a.a()).put("hashCode", this.f4076a.d()).put("isMraid", this.f4076a.e()).put("isStopped", this.n).put("isPaused", this.m).put("isNative", this.f4076a.f()).put("isScreenOn", j()).put("appMuted", com.google.android.gms.ads.internal.aw.D().b()).put("appVolume", com.google.android.gms.ads.internal.aw.D().a()).put("deviceVolume", this.x);
        return jSONObject;
    }

    private final boolean j() {
        return Build.VERSION.SDK_INT >= 20 ? this.h.isInteractive() : this.h.isScreenOn();
    }

    public final void a() {
        this.x = ke.a(this.f);
    }

    protected final void a(int i) {
        boolean z;
        ViewTreeObserver viewTreeObserver;
        ViewTreeObserver viewTreeObserver2;
        synchronized (this.f4077b) {
            Iterator<ake> it = this.u.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                } else if (it.next().a()) {
                    z = true;
                    break;
                }
            }
            if (z && this.o) {
                View viewA = this.e.a();
                boolean z2 = viewA != null && com.google.android.gms.ads.internal.aw.e().a(viewA, this.h, this.i);
                boolean z3 = viewA != null && z2 && viewA.getGlobalVisibleRect(new Rect(), null);
                if (this.e.b()) {
                    b();
                    return;
                }
                if (i == 1 && !this.t.a() && z3 == this.q) {
                    return;
                }
                if (z3 || this.q || i != 1) {
                    try {
                        a(a(viewA, Boolean.valueOf(z2)), false);
                        this.q = z3;
                    } catch (RuntimeException | JSONException e) {
                        jd.a("Active view update failed.", e);
                    }
                    View viewA2 = this.e.c().a();
                    if (viewA2 != null && (viewTreeObserver2 = viewA2.getViewTreeObserver()) != (viewTreeObserver = this.f4079d.get())) {
                        h();
                        if (!this.l || (viewTreeObserver != null && viewTreeObserver.isAlive())) {
                            this.l = true;
                            viewTreeObserver2.addOnScrollChangedListener(this);
                            viewTreeObserver2.addOnGlobalLayoutListener(this);
                        }
                        this.f4079d = new WeakReference<>(viewTreeObserver2);
                    }
                    g();
                }
            }
        }
    }

    public final void a(ajq ajqVar) {
        synchronized (this.f4077b) {
            this.k = ajqVar;
        }
    }

    public final void a(ake akeVar) {
        if (this.u.isEmpty()) {
            synchronized (this.f4077b) {
                if (this.r == null) {
                    IntentFilter intentFilter = new IntentFilter();
                    intentFilter.addAction("android.intent.action.SCREEN_ON");
                    intentFilter.addAction("android.intent.action.SCREEN_OFF");
                    this.r = new ajj(this);
                    com.google.android.gms.ads.internal.aw.E().a(this.f, this.r, intentFilter);
                }
            }
            a(3);
        }
        this.u.add(akeVar);
        try {
            akeVar.a(a(a(this.e.a(), (Boolean) null)), false);
        } catch (JSONException e) {
            jd.b("Skipping measurement update for new client.", e);
        }
    }

    final void a(ake akeVar, Map<String, String> map) {
        String strValueOf = String.valueOf(this.f4076a.d());
        jd.b(strValueOf.length() != 0 ? "Received request to untrack: ".concat(strValueOf) : new String("Received request to untrack: "));
        b(akeVar);
    }

    final boolean a(Map<String, String> map) {
        if (map == null) {
            return false;
        }
        String str = map.get("hashCode");
        return !TextUtils.isEmpty(str) && str.equals(this.f4076a.d());
    }

    public final void b() {
        synchronized (this.f4077b) {
            if (this.o) {
                this.p = true;
                try {
                    JSONObject jSONObjectI = i();
                    jSONObjectI.put("doneReasonCode", "u");
                    a(jSONObjectI, true);
                } catch (RuntimeException e) {
                    jd.b("Failure while processing active view data.", e);
                } catch (JSONException e2) {
                    jd.b("JSON failure while processing active view data.", e2);
                }
                String strValueOf = String.valueOf(this.f4076a.d());
                jd.b(strValueOf.length() != 0 ? "Untracking ad unit: ".concat(strValueOf) : new String("Untracking ad unit: "));
            }
        }
    }

    public final void b(ake akeVar) {
        this.u.remove(akeVar);
        akeVar.b();
        if (this.u.isEmpty()) {
            synchronized (this.f4077b) {
                h();
                synchronized (this.f4077b) {
                    if (this.r != null) {
                        try {
                            try {
                                com.google.android.gms.ads.internal.aw.E().a(this.f, this.r);
                            } catch (Exception e) {
                                com.google.android.gms.ads.internal.aw.i().a(e, "ActiveViewUnit.stopScreenStatusMonitoring");
                            }
                        } catch (IllegalStateException e2) {
                            jd.b("Failed trying to unregister the receiver", e2);
                        }
                        this.r = null;
                    }
                }
                this.f.getContentResolver().unregisterContentObserver(this.w);
                this.o = false;
                g();
                ArrayList arrayList = new ArrayList(this.u);
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    b((ake) obj);
                }
            }
        }
    }

    final void b(Map<String, String> map) {
        a(3);
    }

    final void c(Map<String, String> map) {
        if (map.containsKey("isVisible")) {
            boolean z = "1".equals(map.get("isVisible")) || "true".equals(map.get("isVisible"));
            Iterator<ajf> it = this.s.iterator();
            while (it.hasNext()) {
                it.next().a(this, z);
            }
        }
    }

    public final boolean c() {
        boolean z;
        synchronized (this.f4077b) {
            z = this.o;
        }
        return z;
    }

    public final void d() {
        synchronized (this.f4077b) {
            this.n = true;
            a(3);
        }
    }

    public final void e() {
        synchronized (this.f4077b) {
            this.m = true;
            a(3);
        }
    }

    public final void f() {
        synchronized (this.f4077b) {
            this.m = false;
            a(3);
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        a(2);
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        a(1);
    }
}
