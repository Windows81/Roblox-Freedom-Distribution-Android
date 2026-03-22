package com.roblox.client.captcha;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.roblox.client.ae.k;
import com.roblox.client.p;
import com.roblox.client.t;
import org.greenrobot.eventbus.ThreadMode;
import org.greenrobot.eventbus.c;
import org.greenrobot.eventbus.j;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a extends t {
    private boolean aA;
    private boolean aB;
    private CaptchaConfig aC;
    private InterfaceC0129a az;

    /* JADX INFO: renamed from: com.roblox.client.captcha.a$a, reason: collision with other inner class name */
    public interface InterfaceC0129a {
        void a(String str, String str2);

        void n();

        void p();
    }

    public static a a(CaptchaConfig captchaConfig) {
        a aVar = new a();
        Bundle bundle = new Bundle();
        bundle.putParcelable("captchaConfig", captchaConfig);
        aVar.g(bundle);
        return aVar;
    }

    @Override // com.roblox.client.t, com.roblox.client.v, com.roblox.client.s, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void b(Bundle bundle) {
        super.b(bundle);
        k.c("FragmentFunCaptcha", "onCreate.");
        if (n() != null) {
            this.aC = (CaptchaConfig) n().getParcelable("captchaConfig");
        }
    }

    @Override // com.roblox.client.t, com.roblox.client.v, androidx.fragment.app.Fragment
    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return super.a(layoutInflater, viewGroup, bundle);
    }

    @Override // com.roblox.client.t, com.roblox.client.s, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void d(Bundle bundle) {
        super.d(bundle);
        k.c("FragmentFunCaptcha", "onActivityCreated.");
        this.at = this.aC.a();
        k.c("FragmentFunCaptcha", "Load captcha url: " + this.at);
        f(this.at);
    }

    @Override // com.roblox.client.t, com.roblox.client.v, com.roblox.client.s, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void h() {
        super.h();
        p.b("captcha");
    }

    @Override // com.roblox.client.t, com.roblox.client.v, androidx.fragment.app.Fragment
    public void F() {
        super.F();
        k.c("FragmentFunCaptcha", "onResume.");
        c.a().a(this);
        if (this.aA) {
            au();
        }
    }

    @Override // com.roblox.client.t, com.roblox.client.v, androidx.fragment.app.Fragment
    public void G() {
        super.G();
        k.c("FragmentFunCaptcha", "onPause.");
        c.a().b(this);
        m(false);
    }

    @Override // com.roblox.client.t, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void a(Context context) {
        super.a(context);
        k.c("FragmentFunCaptcha", "onAttach.");
        if (r() instanceof InterfaceC0129a) {
            this.az = (InterfaceC0129a) r();
            return;
        }
        throw new RuntimeException(context.toString() + " must implement OnFragmentInteractionListener");
    }

    @Override // com.roblox.client.t, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void f() {
        super.f();
        k.c("FragmentFunCaptcha", "onDetach.");
        if (!this.aB) {
            this.az.p();
            p.a("captcha", "close");
        }
        this.az = null;
    }

    private void au() {
        if (E() == null) {
            return;
        }
        this.az.n();
        m(true);
    }

    @j(a = ThreadMode.MAIN)
    public void onNavigateToFeatureEvent(com.roblox.client.l.j jVar) {
        String strOptString;
        JSONObject jSONObjectOptJSONObject;
        k.c("FragmentFunCaptcha", "NavigateToFeature: " + jVar.f6425a);
        if ("CAPTCHA_SUCCESS_TAG".equals(jVar.f6425a)) {
            this.aB = true;
            JSONObject jSONObjectB = jVar.b();
            String str = null;
            if (jSONObjectB == null || (jSONObjectOptJSONObject = jSONObjectB.optJSONObject("captchaData")) == null) {
                strOptString = null;
            } else {
                String strOptString2 = jSONObjectOptJSONObject.optString("captchaToken", null);
                strOptString = jSONObjectOptJSONObject.optString("captchaProvider", null);
                str = strOptString2;
            }
            this.az.a(str, strOptString);
            return;
        }
        if ("CAPTCHA_SHOWN_TAG".equals(jVar.f6425a)) {
            k.b("FragmentFunCaptcha", "isCaptchaShown: " + this.aA);
            if (this.aA) {
                return;
            }
            this.aA = true;
            au();
        }
    }
}
