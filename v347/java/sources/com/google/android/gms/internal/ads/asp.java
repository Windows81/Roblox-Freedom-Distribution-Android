package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import java.lang.ref.WeakReference;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class asp implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f4441a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Long f4442b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    WeakReference<View> f4443c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final bq f4444d;
    private avv e;
    private com.google.android.gms.ads.internal.gmsg.ae f;

    public asp(bq bqVar) {
        this.f4444d = bqVar;
    }

    private final void c() {
        this.f4441a = null;
        this.f4442b = null;
        if (this.f4443c == null) {
            return;
        }
        View view = this.f4443c.get();
        this.f4443c = null;
        if (view != null) {
            view.setClickable(false);
            view.setOnClickListener(null);
        }
    }

    public final avv a() {
        return this.e;
    }

    public final void a(avv avvVar) {
        this.e = avvVar;
        if (this.f != null) {
            this.f4444d.b("/unconfirmedClick", this.f);
        }
        this.f = new asq(this);
        this.f4444d.a("/unconfirmedClick", this.f);
    }

    public final void b() {
        if (this.e == null || this.f4442b == null) {
            return;
        }
        c();
        try {
            this.e.a();
        } catch (RemoteException e) {
            mj.d("#007 Could not call remote method.", e);
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.f4443c == null || this.f4443c.get() != view) {
            return;
        }
        if (this.f4441a != null && this.f4442b != null) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("id", this.f4441a);
                jSONObject.put("time_interval", com.google.android.gms.ads.internal.aw.l().a() - this.f4442b.longValue());
                jSONObject.put("messageType", "onePointFiveClick");
                this.f4444d.a("sendMessageToNativeJs", jSONObject);
            } catch (JSONException e) {
                jd.b("Unable to dispatch sendMessageToNativeJs event", e);
            }
        }
        c();
    }
}
