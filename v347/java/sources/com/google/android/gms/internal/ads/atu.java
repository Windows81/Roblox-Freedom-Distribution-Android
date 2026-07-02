package com.google.android.gms.internal.ads;

import android.graphics.Point;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class atu extends aum implements View.OnClickListener, View.OnTouchListener, ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final String[] f4504a = {"2011", "1009", "3010"};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final WeakReference<View> f4506c;

    @GuardedBy("mLock")
    private ate g;
    private View h;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f4505b = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map<String, WeakReference<View>> f4507d = new HashMap();
    private final Map<String, WeakReference<View>> e = new HashMap();
    private final Map<String, WeakReference<View>> f = new HashMap();
    private Point i = new Point();
    private Point j = new Point();
    private WeakReference<akf> k = new WeakReference<>(null);

    public atu(View view, HashMap<String, View> map, HashMap<String, View> map2) {
        com.google.android.gms.ads.internal.aw.A();
        nw.a(view, (ViewTreeObserver.OnGlobalLayoutListener) this);
        com.google.android.gms.ads.internal.aw.A();
        nw.a(view, (ViewTreeObserver.OnScrollChangedListener) this);
        view.setOnTouchListener(this);
        view.setOnClickListener(this);
        this.f4506c = new WeakReference<>(view);
        for (Map.Entry<String, View> entry : map.entrySet()) {
            String key = entry.getKey();
            View value = entry.getValue();
            if (value != null) {
                this.f4507d.put(key, new WeakReference<>(value));
                if (!"1098".equals(key) && !"3011".equals(key)) {
                    value.setOnTouchListener(this);
                    value.setClickable(true);
                    value.setOnClickListener(this);
                }
            }
        }
        this.f.putAll(this.f4507d);
        for (Map.Entry<String, View> entry2 : map2.entrySet()) {
            View value2 = entry2.getValue();
            if (value2 != null) {
                this.e.put(entry2.getKey(), new WeakReference<>(value2));
                value2.setOnTouchListener(this);
            }
        }
        this.f.putAll(this.e);
        aro.a(view.getContext());
    }

    private final int a(int i) {
        int iB;
        synchronized (this.f4505b) {
            aoo.a();
            iB = ly.b(this.g.m(), i);
        }
        return iB;
    }

    private final void a(View view) {
        synchronized (this.f4505b) {
            if (this.g != null) {
                ate ateVarF = this.g instanceof atd ? ((atd) this.g).f() : this.g;
                if (ateVarF != null) {
                    ateVarF.c(view);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(atj atjVar) {
        View view;
        synchronized (this.f4505b) {
            String[] strArr = f4504a;
            int length = strArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    view = null;
                    break;
                }
                WeakReference<View> weakReference = this.f.get(strArr[i]);
                if (weakReference != null) {
                    view = weakReference.get();
                    break;
                }
                i++;
            }
            if (!(view instanceof FrameLayout)) {
                atjVar.i();
                return;
            }
            atw atwVar = new atw(this, view);
            if (atjVar instanceof atd) {
                atjVar.b(view, atwVar);
            } else {
                atjVar.a(view, atwVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean a(String[] strArr) {
        for (String str : strArr) {
            if (this.f4507d.get(str) != null) {
                return true;
            }
        }
        for (String str2 : strArr) {
            if (this.e.get(str2) != null) {
                return false;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.aul
    public final void a() {
        synchronized (this.f4505b) {
            this.h = null;
            this.g = null;
            this.i = null;
            this.j = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.aul
    public final void a(com.google.android.gms.b.a aVar) {
        View view;
        synchronized (this.f4505b) {
            a((View) null);
            Object objA = com.google.android.gms.b.b.a(aVar);
            if (!(objA instanceof atj)) {
                jd.e("Not an instance of native engine. This is most likely a transient error");
                return;
            }
            atj atjVar = (atj) objA;
            if (!atjVar.b()) {
                jd.c("Your account must be enabled to use this feature. Talk to your account manager to request this feature for your account.");
                return;
            }
            View view2 = this.f4506c.get();
            if (this.g != null && view2 != null && ((Boolean) aoo.f().a(aro.bZ)).booleanValue()) {
                this.g.b(view2, this.f);
            }
            synchronized (this.f4505b) {
                if (this.g instanceof atj) {
                    atj atjVar2 = (atj) this.g;
                    View view3 = this.f4506c.get();
                    if (atjVar2 != null && atjVar2.m() != null && view3 != null && com.google.android.gms.ads.internal.aw.B().c(view3.getContext())) {
                        hx hxVarN = atjVar2.n();
                        if (hxVarN != null) {
                            hxVarN.a(false);
                        }
                        akf akfVar = this.k.get();
                        if (akfVar != null && hxVarN != null) {
                            akfVar.b(hxVarN);
                        }
                    }
                }
            }
            if ((this.g instanceof atd) && ((atd) this.g).e()) {
                ((atd) this.g).a(atjVar);
            } else {
                this.g = atjVar;
                if (atjVar instanceof atd) {
                    ((atd) atjVar).a((ate) null);
                }
            }
            String[] strArr = {"1098", "3011"};
            int i = 0;
            while (true) {
                if (i >= 2) {
                    view = null;
                    break;
                }
                WeakReference<View> weakReference = this.f.get(strArr[i]);
                if (weakReference != null) {
                    view = weakReference.get();
                    break;
                }
                i++;
            }
            if (view == null) {
                jd.e("Ad choices asset view is not provided.");
            } else {
                ViewGroup viewGroup = view instanceof ViewGroup ? (ViewGroup) view : null;
                if (viewGroup != null) {
                    this.h = atjVar.a((View.OnClickListener) this, true);
                    if (this.h != null) {
                        this.f.put("1007", new WeakReference<>(this.h));
                        this.f4507d.put("1007", new WeakReference<>(this.h));
                        viewGroup.removeAllViews();
                        viewGroup.addView(this.h);
                    }
                }
            }
            atjVar.a(view2, this.f4507d, this.e, this, this);
            jm.f5184a.post(new atv(this, atjVar));
            a(view2);
            this.g.b(view2);
            synchronized (this.f4505b) {
                if (this.g instanceof atj) {
                    atj atjVar3 = (atj) this.g;
                    View view4 = this.f4506c.get();
                    if (atjVar3 != null && atjVar3.m() != null && view4 != null && com.google.android.gms.ads.internal.aw.B().c(view4.getContext())) {
                        akf akfVar2 = this.k.get();
                        if (akfVar2 == null) {
                            akfVar2 = new akf(view4.getContext(), view4);
                            this.k = new WeakReference<>(akfVar2);
                        }
                        akfVar2.a(atjVar3.n());
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.aul
    public final void b(com.google.android.gms.b.a aVar) {
        synchronized (this.f4505b) {
            this.g.a((View) com.google.android.gms.b.b.a(aVar));
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        synchronized (this.f4505b) {
            if (this.g == null) {
                return;
            }
            View view2 = this.f4506c.get();
            if (view2 == null) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putFloat("x", a(this.i.x));
            bundle.putFloat("y", a(this.i.y));
            bundle.putFloat("start_x", a(this.j.x));
            bundle.putFloat("start_y", a(this.j.y));
            if (this.h == null || !this.h.equals(view)) {
                this.g.a(view, this.f, bundle, view2);
            } else if (!(this.g instanceof atd)) {
                this.g.a(view, "1007", bundle, this.f, view2);
            } else if (((atd) this.g).f() != null) {
                ((atd) this.g).f().a(view, "1007", bundle, this.f, view2);
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        View view;
        synchronized (this.f4505b) {
            if (this.g != null && (view = this.f4506c.get()) != null) {
                this.g.c(view, this.f);
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        View view;
        synchronized (this.f4505b) {
            if (this.g != null && (view = this.f4506c.get()) != null) {
                this.g.c(view, this.f);
            }
        }
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        synchronized (this.f4505b) {
            if (this.g != null) {
                View view2 = this.f4506c.get();
                if (view2 != null) {
                    view2.getLocationOnScreen(new int[2]);
                    Point point = new Point((int) (motionEvent.getRawX() - r2[0]), (int) (motionEvent.getRawY() - r2[1]));
                    this.i = point;
                    if (motionEvent.getAction() == 0) {
                        this.j = point;
                    }
                    MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
                    motionEventObtain.setLocation(point.x, point.y);
                    this.g.a(motionEventObtain);
                    motionEventObtain.recycle();
                }
            }
        }
        return false;
    }
}
