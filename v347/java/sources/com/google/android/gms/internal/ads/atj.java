package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@cm
@ParametersAreNonnullByDefault
public class atj implements ate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    boolean f4479a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    boolean f4480b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final atg f4482d;
    private final Context e;
    private final asp f;
    private final JSONObject g;
    private final bq h;
    private final ath i;
    private final agv j;
    private final zzang k;
    private String l;
    private hx m;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f4481c = new Object();
    private WeakReference<View> n = null;

    public atj(Context context, atg atgVar, bq bqVar, agv agvVar, JSONObject jSONObject, ath athVar, zzang zzangVar, String str) {
        this.e = context;
        this.f4482d = atgVar;
        this.h = bqVar;
        this.j = agvVar;
        this.g = jSONObject;
        this.i = athVar;
        this.k = zzangVar;
        this.l = str;
        this.f = new asp(this.h);
    }

    private final int a(int i) {
        aoo.a();
        return ly.b(this.e, i);
    }

    private final JSONObject a(Rect rect) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("width", a(rect.right - rect.left));
        jSONObject.put("height", a(rect.bottom - rect.top));
        jSONObject.put("x", a(rect.left));
        jSONObject.put("y", a(rect.top));
        jSONObject.put("relative_to", "self");
        return jSONObject;
    }

    private final JSONObject a(Map<String, WeakReference<View>> map, View view) {
        JSONObject jSONObject;
        JSONObject jSONObject2 = new JSONObject();
        if (map == null || view == null) {
            return jSONObject2;
        }
        int[] iArrF = f(view);
        synchronized (map) {
            for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
                View view2 = entry.getValue().get();
                if (view2 != null) {
                    int[] iArrF2 = f(view2);
                    JSONObject jSONObject3 = new JSONObject();
                    JSONObject jSONObject4 = new JSONObject();
                    try {
                        jSONObject4.put("width", a(view2.getMeasuredWidth()));
                        jSONObject4.put("height", a(view2.getMeasuredHeight()));
                        jSONObject4.put("x", a(iArrF2[0] - iArrF[0]));
                        jSONObject4.put("y", a(iArrF2[1] - iArrF[1]));
                        jSONObject4.put("relative_to", "ad_view");
                        jSONObject3.put("frame", jSONObject4);
                        Rect rect = new Rect();
                        if (view2.getLocalVisibleRect(rect)) {
                            jSONObject = a(rect);
                        } else {
                            jSONObject = new JSONObject();
                            jSONObject.put("width", 0);
                            jSONObject.put("height", 0);
                            jSONObject.put("x", a(iArrF2[0] - iArrF[0]));
                            jSONObject.put("y", a(iArrF2[1] - iArrF[1]));
                            jSONObject.put("relative_to", "ad_view");
                        }
                        jSONObject3.put("visible_bounds", jSONObject);
                        if (view2 instanceof TextView) {
                            TextView textView = (TextView) view2;
                            jSONObject3.put("text_color", textView.getCurrentTextColor());
                            jSONObject3.put("font_size", textView.getTextSize());
                            jSONObject3.put("text", textView.getText());
                        }
                        jSONObject2.put(entry.getKey(), jSONObject3);
                    } catch (JSONException e) {
                        jd.e("Unable to get asset views information");
                    }
                }
            }
        }
        return jSONObject2;
    }

    private final void a(View view, JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3, JSONObject jSONObject4, String str, JSONObject jSONObject5, JSONObject jSONObject6) {
        com.google.android.gms.common.internal.w.b("Invalid call from a non-UI thread.");
        try {
            JSONObject jSONObject7 = new JSONObject();
            jSONObject7.put("ad", this.g);
            if (jSONObject2 != null) {
                jSONObject7.put("asset_view_signal", jSONObject2);
            }
            if (jSONObject != null) {
                jSONObject7.put("ad_view_signal", jSONObject);
            }
            if (jSONObject5 != null) {
                jSONObject7.put("click_signal", jSONObject5);
            }
            if (jSONObject3 != null) {
                jSONObject7.put("scroll_view_signal", jSONObject3);
            }
            if (jSONObject4 != null) {
                jSONObject7.put("lock_screen_signal", jSONObject4);
            }
            JSONObject jSONObject8 = new JSONObject();
            jSONObject8.put("asset_id", str);
            jSONObject8.put("template", this.i.k());
            com.google.android.gms.ads.internal.aw.g();
            jSONObject8.put("is_privileged_process", js.e());
            if (((Boolean) aoo.f().a(aro.ck)).booleanValue() && this.f.a() != null && this.g.optBoolean("custom_one_point_five_click_enabled", false)) {
                jSONObject8.put("custom_one_point_five_click_eligible", true);
            }
            jSONObject8.put("timestamp", com.google.android.gms.ads.internal.aw.l().a());
            jSONObject8.put("has_custom_click_handler", this.f4482d.b(this.i.l()) != null);
            jSONObject7.put("has_custom_click_handler", this.f4482d.b(this.i.l()) != null);
            try {
                JSONObject jSONObjectOptJSONObject = this.g.optJSONObject("tracking_urls_and_actions");
                if (jSONObjectOptJSONObject == null) {
                    jSONObjectOptJSONObject = new JSONObject();
                }
                jSONObject8.put("click_signals", this.j.a().a(this.e, jSONObjectOptJSONObject.optString("click_string"), view));
            } catch (Exception e) {
                jd.b("Exception obtaining click signals", e);
            }
            jSONObject7.put("click", jSONObject8);
            if (jSONObject6 != null) {
                jSONObject7.put("provided_signals", jSONObject6);
            }
            jSONObject7.put("ads_id", this.l);
            mq.a(this.h.b(jSONObject7), "NativeAdEngineImpl.performClick");
        } catch (JSONException e2) {
            jd.b("Unable to create click JSON.", e2);
        }
    }

    private final boolean a(String str) {
        JSONObject jSONObjectOptJSONObject = this.g == null ? null : this.g.optJSONObject("allow_pub_event_reporting");
        if (jSONObjectOptJSONObject == null) {
            return false;
        }
        return jSONObjectOptJSONObject.optBoolean(str, false);
    }

    private final boolean a(JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3, JSONObject jSONObject4, JSONObject jSONObject5) {
        com.google.android.gms.common.internal.w.b("Invalid call from a non-UI thread.");
        if (this.f4479a) {
            return true;
        }
        this.f4479a = true;
        try {
            JSONObject jSONObject6 = new JSONObject();
            jSONObject6.put("ad", this.g);
            jSONObject6.put("ads_id", this.l);
            if (jSONObject2 != null) {
                jSONObject6.put("asset_view_signal", jSONObject2);
            }
            if (jSONObject != null) {
                jSONObject6.put("ad_view_signal", jSONObject);
            }
            if (jSONObject3 != null) {
                jSONObject6.put("scroll_view_signal", jSONObject3);
            }
            if (jSONObject4 != null) {
                jSONObject6.put("lock_screen_signal", jSONObject4);
            }
            if (jSONObject5 != null) {
                jSONObject6.put("provided_signals", jSONObject5);
            }
            mq.a(this.h.c(jSONObject6), "NativeAdEngineImpl.recordImpression");
            this.f4482d.a(this);
            this.f4482d.B();
            j();
            return true;
        } catch (JSONException e) {
            jd.b("Unable to create impression JSON.", e);
            return false;
        }
    }

    private static boolean e(View view) {
        return view.isShown() && view.getGlobalVisibleRect(new Rect(), null);
    }

    private static int[] f(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return iArr;
    }

    private final JSONObject g(View view) {
        JSONObject jSONObject;
        JSONObject jSONObject2 = new JSONObject();
        if (view != null) {
            try {
                int[] iArrF = f(view);
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("width", a(view.getMeasuredWidth()));
                jSONObject3.put("height", a(view.getMeasuredHeight()));
                jSONObject3.put("x", a(iArrF[0]));
                jSONObject3.put("y", a(iArrF[1]));
                jSONObject3.put("relative_to", "window");
                jSONObject2.put("frame", jSONObject3);
                Rect rect = new Rect();
                if (view.getGlobalVisibleRect(rect)) {
                    jSONObject = a(rect);
                } else {
                    jSONObject = new JSONObject();
                    jSONObject.put("width", 0);
                    jSONObject.put("height", 0);
                    jSONObject.put("x", a(iArrF[0]));
                    jSONObject.put("y", a(iArrF[1]));
                    jSONObject.put("relative_to", "window");
                }
                jSONObject2.put("visible_bounds", jSONObject);
            } catch (Exception e) {
                jd.e("Unable to get native ad view bounding box");
            }
        }
        return jSONObject2;
    }

    private static JSONObject h(View view) {
        JSONObject jSONObject = new JSONObject();
        if (view != null) {
            try {
                com.google.android.gms.ads.internal.aw.e();
                jSONObject.put("contained_in_scroll_view", jm.d(view) != -1);
            } catch (Exception e) {
            }
        }
        return jSONObject;
    }

    private final JSONObject i(View view) {
        JSONObject jSONObject = new JSONObject();
        if (view != null) {
            try {
                com.google.android.gms.ads.internal.aw.e();
                jSONObject.put("can_show_on_lock_screen", jm.c(view));
                com.google.android.gms.ads.internal.aw.e();
                jSONObject.put("is_keyguard_locked", jm.j(this.e));
            } catch (JSONException e) {
                jd.e("Unable to get lock screen information");
            }
        }
        return jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.ate
    public View a(View.OnClickListener onClickListener, boolean z) {
        aso asoVarM = this.i.m();
        if (asoVarM == null) {
            return null;
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        if (!z) {
            switch (asoVarM.h()) {
                case 0:
                    layoutParams.addRule(10);
                    layoutParams.addRule(9);
                    break;
                case 1:
                default:
                    layoutParams.addRule(10);
                    layoutParams.addRule(11);
                    break;
                case 2:
                    layoutParams.addRule(12);
                    layoutParams.addRule(11);
                    break;
                case 3:
                    layoutParams.addRule(12);
                    layoutParams.addRule(9);
                    break;
            }
        }
        asr asrVar = new asr(this.e, asoVarM, layoutParams);
        asrVar.setOnClickListener(onClickListener);
        asrVar.setContentDescription((CharSequence) aoo.f().a(aro.ce));
        return asrVar;
    }

    @Override // com.google.android.gms.internal.ads.ate
    public final void a(MotionEvent motionEvent) {
        this.j.a(motionEvent);
    }

    @Override // com.google.android.gms.internal.ads.ate
    public void a(View view) {
        if (((Boolean) aoo.f().a(aro.ck)).booleanValue()) {
            if (!this.g.optBoolean("custom_one_point_five_click_enabled", false)) {
                jd.e("Your account need to be whitelisted to use this feature.\nContact your account manager for more information.");
                return;
            }
            asp aspVar = this.f;
            if (view != null) {
                view.setOnClickListener(aspVar);
                view.setClickable(true);
                aspVar.f4443c = new WeakReference<>(view);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ate
    public final void a(View view, atc atcVar) {
        if (b(view, atcVar)) {
            return;
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        ((FrameLayout) view).removeAllViews();
        if (this.i instanceof ati) {
            ati atiVar = (ati) this.i;
            if (atiVar.b() == null || atiVar.b().size() <= 0) {
                return;
            }
            Object obj = atiVar.b().get(0);
            aub aubVarA = obj instanceof IBinder ? auc.a((IBinder) obj) : null;
            if (aubVarA != null) {
                try {
                    com.google.android.gms.b.a aVarA = aubVarA.a();
                    if (aVarA != null) {
                        Drawable drawable = (Drawable) com.google.android.gms.b.b.a(aVarA);
                        ImageView imageView = new ImageView(this.e);
                        imageView.setImageDrawable(drawable);
                        imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                        ((FrameLayout) view).addView(imageView, layoutParams);
                    }
                } catch (RemoteException e) {
                    jd.e("Could not get drawable from image");
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ate
    public final void a(View view, String str, Bundle bundle, Map<String, WeakReference<View>> map, View view2) {
        JSONObject jSONObject;
        JSONObject jSONObjectA;
        JSONObject jSONObjectA2 = a(map, view2);
        JSONObject jSONObjectG = g(view2);
        JSONObject jSONObjectH = h(view2);
        JSONObject jSONObjectI = i(view2);
        try {
            jSONObjectA = com.google.android.gms.ads.internal.aw.e().a(bundle, (JSONObject) null);
            jSONObject = new JSONObject();
        } catch (Exception e) {
            e = e;
            jSONObject = null;
        }
        try {
            jSONObject.put("click_point", jSONObjectA);
            jSONObject.put("asset_id", str);
        } catch (Exception e2) {
            e = e2;
            jd.b("Error occurred while grabbing click signals.", e);
        }
        a(view, jSONObjectG, jSONObjectA2, jSONObjectH, jSONObjectI, str, jSONObject, null);
    }

    @Override // com.google.android.gms.internal.ads.ate
    public void a(View view, Map<String, WeakReference<View>> map) {
        a(g(view), a(map, view), h(view), i(view), (JSONObject) null);
    }

    @Override // com.google.android.gms.internal.ads.ate
    public void a(View view, Map<String, WeakReference<View>> map, Bundle bundle, View view2) {
        com.google.android.gms.common.internal.w.b("Invalid call from a non-UI thread.");
        if (map != null) {
            synchronized (map) {
                for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
                    if (view.equals(entry.getValue().get())) {
                        a(view, entry.getKey(), bundle, map, view2);
                        return;
                    }
                }
            }
        }
        if ("6".equals(this.i.k())) {
            a(view, "3099", bundle, map, view2);
        } else if ("2".equals(this.i.k())) {
            a(view, "2099", bundle, map, view2);
        } else if ("1".equals(this.i.k())) {
            a(view, "1099", bundle, map, view2);
        }
    }

    public void a(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener) {
        if (((Boolean) aoo.f().a(aro.cb)).booleanValue()) {
            view.setOnTouchListener(onTouchListener);
            view.setClickable(true);
            view.setOnClickListener(onClickListener);
            if (map != null) {
                synchronized (map) {
                    Iterator<Map.Entry<String, WeakReference<View>>> it = map.entrySet().iterator();
                    while (it.hasNext()) {
                        View view2 = it.next().getValue().get();
                        if (view2 != null) {
                            view2.setOnTouchListener(onTouchListener);
                            view2.setClickable(true);
                            view2.setOnClickListener(onClickListener);
                        }
                    }
                }
            }
            if (map2 != null) {
                synchronized (map2) {
                    Iterator<Map.Entry<String, WeakReference<View>>> it2 = map2.entrySet().iterator();
                    while (it2.hasNext()) {
                        View view3 = it2.next().getValue().get();
                        if (view3 != null) {
                            view3.setOnTouchListener(onTouchListener);
                        }
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ate
    public void a(avv avvVar) {
        if (((Boolean) aoo.f().a(aro.ck)).booleanValue()) {
            if (this.g.optBoolean("custom_one_point_five_click_enabled", false)) {
                this.f.a(avvVar);
            } else {
                jd.e("Your account need to be whitelisted to use this feature.\nContact your account manager for more information.");
            }
        }
    }

    public final void a(Map<String, WeakReference<View>> map) {
        if (this.i.o() != null) {
            if ("2".equals(this.i.k())) {
                com.google.android.gms.ads.internal.aw.i().l().a(this.f4482d.C(), this.i.k(), map.containsKey("2011"));
            } else if ("1".equals(this.i.k())) {
                com.google.android.gms.ads.internal.aw.i().l().a(this.f4482d.C(), this.i.k(), map.containsKey("1009"));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ate
    public boolean a() {
        aso asoVarM = this.i.m();
        return asoVarM != null && asoVarM.i();
    }

    @Override // com.google.android.gms.internal.ads.ate
    public final boolean a(Bundle bundle) {
        if (a("impression_reporting")) {
            return a((JSONObject) null, (JSONObject) null, (JSONObject) null, (JSONObject) null, com.google.android.gms.ads.internal.aw.e().a(bundle, (JSONObject) null));
        }
        jd.c("The ad slot cannot handle external impression events. You must be whitelisted to whitelisted to be able to report your impression events.");
        return false;
    }

    @Override // com.google.android.gms.internal.ads.ate
    public final void b(Bundle bundle) {
        if (bundle == null) {
            jd.b("Click data is null. No click is reported.");
        } else if (a("click_reporting")) {
            a(null, null, null, null, null, bundle.getBundle("click_signal").getString("asset_id"), null, com.google.android.gms.ads.internal.aw.e().a(bundle, (JSONObject) null));
        } else {
            jd.c("The ad slot cannot handle external click events. You must be whitelisted to be able to report your click events.");
        }
    }

    @Override // com.google.android.gms.internal.ads.ate
    public final void b(View view) {
        agr agrVarA;
        if (!((Boolean) aoo.f().a(aro.bG)).booleanValue() || this.j == null || (agrVarA = this.j.a()) == null) {
            return;
        }
        agrVarA.a(view);
    }

    @Override // com.google.android.gms.internal.ads.ate
    public void b(View view, Map<String, WeakReference<View>> map) {
        if (((Boolean) aoo.f().a(aro.ca)).booleanValue()) {
            return;
        }
        view.setOnTouchListener(null);
        view.setClickable(false);
        view.setOnClickListener(null);
        if (map != null) {
            synchronized (map) {
                Iterator<Map.Entry<String, WeakReference<View>>> it = map.entrySet().iterator();
                while (it.hasNext()) {
                    View view2 = it.next().getValue().get();
                    if (view2 != null) {
                        view2.setOnTouchListener(null);
                        view2.setClickable(false);
                        view2.setOnClickListener(null);
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ate
    public boolean b() {
        return this.g != null && this.g.optBoolean("allow_pub_owned_ad_view", false);
    }

    public final boolean b(View view, atc atcVar) {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2, 17);
        View viewO = this.i.o();
        if (viewO == null) {
            return false;
        }
        ViewParent parent = viewO.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(viewO);
        }
        ((FrameLayout) view).removeAllViews();
        ((FrameLayout) view).addView(viewO, layoutParams);
        this.f4482d.a(atcVar);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.ate
    public void c() {
        if (((Boolean) aoo.f().a(aro.ck)).booleanValue()) {
            if (this.g.optBoolean("custom_one_point_five_click_enabled", false)) {
                this.f.b();
            } else {
                jd.e("Your account need to be whitelisted to use this feature.\nContact your account manager for more information.");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ate
    public final void c(Bundle bundle) {
        if (bundle == null) {
            jd.b("Touch event data is null. No touch event is reported.");
            return;
        }
        if (!a("touch_reporting")) {
            jd.c("The ad slot cannot handle external touch events. You must be whitelisted to be able to report your touch events.");
            return;
        }
        this.j.a().a((int) bundle.getFloat("x"), (int) bundle.getFloat("y"), bundle.getInt("duration_ms"));
    }

    @Override // com.google.android.gms.internal.ads.ate
    public final void c(View view) {
        this.n = new WeakReference<>(view);
    }

    @Override // com.google.android.gms.internal.ads.ate
    public final void c(View view, Map<String, WeakReference<View>> map) {
        synchronized (this.f4481c) {
            if (this.f4479a) {
                return;
            }
            if (e(view)) {
                a(view, map);
                return;
            }
            if (((Boolean) aoo.f().a(aro.cj)).booleanValue() && map != null) {
                synchronized (map) {
                    Iterator<Map.Entry<String, WeakReference<View>>> it = map.entrySet().iterator();
                    while (it.hasNext()) {
                        View view2 = it.next().getValue().get();
                        if (view2 != null && e(view2)) {
                            a(view, map);
                            return;
                        }
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ate
    public void d() {
        com.google.android.gms.common.internal.w.b("Invalid call from a non-UI thread.");
        if (this.f4480b) {
            return;
        }
        this.f4480b = true;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("ad", this.g);
            jSONObject.put("ads_id", this.l);
            mq.a(this.h.d(jSONObject), "NativeAdEngineImpl.recordDownloadedImpression");
        } catch (JSONException e) {
            mj.b("", e);
        }
    }

    public final void d(View view) {
        this.f4482d.b(view);
    }

    public qd g() throws qo {
        qd qdVarA = null;
        if (this.g != null && this.g.optJSONObject("overlay") != null) {
            com.google.android.gms.ads.internal.aw.f();
            Context context = this.e;
            zzjn zzjnVarA = zzjn.a(this.e);
            qdVarA = qk.a(context, rr.a(zzjnVarA), zzjnVarA.f5803a, false, false, this.j, this.k, null, null, null, ami.a());
            if (qdVarA != null) {
                qdVarA.getView().setVisibility(8);
                new atl(qdVarA).a(this.h);
            }
        }
        return qdVarA;
    }

    @Override // com.google.android.gms.internal.ads.ate
    public void h() {
        this.h.a();
    }

    @Override // com.google.android.gms.internal.ads.ate
    public void i() {
        this.f4482d.O();
    }

    @Override // com.google.android.gms.internal.ads.ate
    public void j() {
        this.f4482d.K();
    }

    @Override // com.google.android.gms.internal.ads.ate
    public void k() {
        this.f4482d.P();
    }

    @Override // com.google.android.gms.internal.ads.ate
    public final View l() {
        if (this.n != null) {
            return this.n.get();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.ate
    public final Context m() {
        return this.e;
    }

    public final hx n() {
        if (!com.google.android.gms.ads.internal.aw.B().c(this.e)) {
            return null;
        }
        if (this.m == null) {
            this.m = new hx(this.e, this.f4482d.C());
        }
        return this.m;
    }
}
