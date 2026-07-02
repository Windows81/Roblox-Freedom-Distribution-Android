package com.roblox.client.signup;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.l;
import com.roblox.client.R;
import com.roblox.client.k;
import com.roblox.client.signup.a;

/* JADX INFO: loaded from: classes.dex */
public class ActivitySignUp extends k implements a.b {
    @Override // com.roblox.client.k, com.roblox.client.l, android.support.v7.app.c, android.support.v4.app.h, android.support.v4.app.ai, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_sign_up);
        l lVarE = e();
        if (com.roblox.client.b.bd()) {
            if (((b) lVarE.a("signup_window_mvp")) == null) {
                e().a().a(R.id.sign_up_content_layout, b.a(), "signup_window_mvp").c();
                return;
            }
            return;
        }
        a aVar = (a) lVarE.a("signup_window");
        if (aVar == null) {
            e().a().a(R.id.sign_up_content_layout, a.a(), "signup_window").c();
        } else {
            String str = "FragmentSignUp not null. isAdded=" + aVar.isAdded() + ". isVisible=" + aVar.isVisible() + ".";
            com.roblox.client.util.g.b("ActivitySignUp", str);
            com.roblox.client.b.c.a("UnexpectedError", str);
        }
    }

    @Override // android.support.v4.app.h, android.app.Activity
    public void onBackPressed() {
        d(0);
    }

    private void d(int i) {
        if (i == 0) {
            com.roblox.client.i.b("signup", "close");
        }
        setResult(i);
        finish();
        overridePendingTransition(0, R.anim.slide_down_short);
    }

    public static void a(Activity activity) {
        activity.startActivityForResult(new Intent(activity, (Class<?>) ActivitySignUp.class), 10109);
        activity.overridePendingTransition(R.anim.slide_up_short, R.anim.stay);
    }

    @Override // com.roblox.client.signup.a.b
    public void k() {
        d(102);
    }

    @Override // com.roblox.client.signup.a.b
    public void l() {
        d(103);
    }

    @Override // com.roblox.client.signup.a.b
    public void m() {
        d(0);
    }
}
