package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final qd f5330a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f5331b;

    public n(qd qdVar) {
        this(qdVar, "");
    }

    public n(qd qdVar, String str) {
        this.f5330a = qdVar;
        this.f5331b = str;
    }

    public final void a(int i, int i2, int i3, int i4) {
        try {
            this.f5330a.a("onSizeChanged", new JSONObject().put("x", i).put("y", i2).put("width", i3).put("height", i4));
        } catch (JSONException e) {
            jd.b("Error occured while dispatching size change.", e);
        }
    }

    public final void a(int i, int i2, int i3, int i4, float f, int i5) {
        try {
            this.f5330a.a("onScreenInfoChanged", new JSONObject().put("width", i).put("height", i2).put("maxSizeWidth", i3).put("maxSizeHeight", i4).put("density", f).put("rotation", i5));
        } catch (JSONException e) {
            jd.b("Error occured while obtaining screen information.", e);
        }
    }

    public final void a(String str) {
        try {
            this.f5330a.a("onError", new JSONObject().put("message", str).put("action", this.f5331b));
        } catch (JSONException e) {
            jd.b("Error occurred while dispatching error event.", e);
        }
    }

    public final void b(int i, int i2, int i3, int i4) {
        try {
            this.f5330a.a("onDefaultPositionReceived", new JSONObject().put("x", i).put("y", i2).put("width", i3).put("height", i4));
        } catch (JSONException e) {
            jd.b("Error occured while dispatching default position.", e);
        }
    }

    public final void b(String str) {
        try {
            this.f5330a.a("onReadyEventReceived", new JSONObject().put("js", str));
        } catch (JSONException e) {
            jd.b("Error occured while dispatching ready Event.", e);
        }
    }

    public final void c(String str) {
        try {
            this.f5330a.a("onStateChanged", new JSONObject().put("state", str));
        } catch (JSONException e) {
            jd.b("Error occured while dispatching state change.", e);
        }
    }
}
