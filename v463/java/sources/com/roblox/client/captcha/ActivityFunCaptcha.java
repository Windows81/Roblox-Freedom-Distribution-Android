package com.roblox.client.captcha;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.TypedValue;
import androidx.fragment.app.g;
import com.roblox.client.captcha.a;
import com.roblox.client.o;
import com.roblox.client.q;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class ActivityFunCaptcha extends q implements a.InterfaceC0129a {
    @Override // com.roblox.client.r
    protected void I() {
    }

    @Override // com.roblox.client.captcha.a.InterfaceC0129a
    public void n() {
    }

    public static Intent a(Context context, CaptchaConfig captchaConfig) {
        Intent intent = new Intent(context, (Class<?>) ActivityFunCaptcha.class);
        Bundle bundle = new Bundle();
        bundle.putParcelable("captchaConfigKey", captchaConfig);
        intent.putExtra("captchaConfigKey", bundle);
        return intent;
    }

    @Override // com.roblox.client.q, com.roblox.client.r, androidx.appcompat.app.c, androidx.fragment.app.c, androidx.core.app.e, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(o.g.activity_captcha);
        CaptchaConfig captchaConfig = (CaptchaConfig) getIntent().getBundleExtra("captchaConfigKey").getParcelable("captchaConfigKey");
        float f = getResources().getDisplayMetrics().widthPixels;
        int iApplyDimension = (int) TypedValue.applyDimension(1, getResources().getDimension(o.d.captchaScreenWidth), getResources().getDisplayMetrics());
        int iApplyDimension2 = (int) TypedValue.applyDimension(1, 330.0f, getResources().getDisplayMetrics());
        if (f < iApplyDimension) {
            iApplyDimension = (int) f;
        }
        getWindow().setLayout(iApplyDimension, iApplyDimension2);
        g gVarJ = j();
        if (gVarJ.a("FragmentFunCaptcha") == null) {
            gVarJ.a().a(o.f.captcha_content, a.a(captchaConfig), "FragmentFunCaptcha").c();
        }
    }

    @Override // com.roblox.client.q, com.roblox.client.r, androidx.appcompat.app.c, androidx.fragment.app.c, android.app.Activity
    protected void onStart() {
        super.onStart();
    }

    @Override // com.roblox.client.q, com.roblox.client.r, androidx.appcompat.app.c, androidx.fragment.app.c, android.app.Activity
    protected void onStop() {
        super.onStop();
    }

    @Override // androidx.fragment.app.c, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        d(102);
    }

    private void d(int i) {
        setResult(i);
        finish();
    }

    @Override // com.roblox.client.captcha.a.InterfaceC0129a
    public void a(String str, String str2) {
        d(101);
    }

    @Override // com.roblox.client.captcha.a.InterfaceC0129a
    public void p() {
        d(102);
    }
}
