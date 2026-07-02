package com.roblox.client;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.lib.recaptcha.ReCaptcha;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.design.widget.TextInputLayout;
import android.support.v4.app.Fragment;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ProgressBar;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public class ReCaptchaActivity extends k implements ReCaptcha.a, View.OnClickListener {
    private ReCaptcha p;
    private ProgressBar q;
    private EditText r;
    private Button s;
    private TextInputLayout t;
    private String u;
    private String v;
    private String m = "";
    private int w = 0;

    @Override // com.roblox.client.k, com.roblox.client.l, android.support.v7.app.c, android.support.v4.app.h, android.support.v4.app.ai, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        com.roblox.client.util.g.b("ReCaptchaActivity", "onCreate: savedInstanceState=" + bundle);
        setContentView(R.layout.activity_recaptcha);
        this.m = b.R();
        if (TextUtils.isEmpty(this.m)) {
            a(R.string.Authentication_Captcha_Response_CaptchaFailedToLoad, 1);
            setResult(999);
            finish();
            return;
        }
        Intent intent = getIntent();
        if (intent != null) {
            this.v = intent.getStringExtra("USERNAME_EXTRA");
            this.w = intent.getIntExtra("ACTION_EXTRA", 0);
        }
        if (this.w == 0) {
            com.roblox.client.util.g.d("ReCaptchaActivity", "onCreate: action = NONE. Not enough information to complete captcha.");
            finish();
            return;
        }
        this.p = (ReCaptcha) findViewById(R.id.recaptcha);
        this.q = (ProgressBar) findViewById(R.id.progress);
        View viewFindViewById = findViewById(R.id.container);
        this.r = (EditText) findViewById(R.id.captcha_input);
        this.s = (Button) findViewById(R.id.verify);
        Button button = (Button) findViewById(R.id.reload);
        this.t = (TextInputLayout) findViewById(R.id.captcha_input_layout);
        this.t.setErrorEnabled(true);
        this.t.setError(null);
        this.r.setImeOptions(4);
        this.r.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.roblox.client.ReCaptchaActivity.1
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                if (i != 4) {
                    return false;
                }
                ReCaptchaActivity.this.l();
                return true;
            }
        });
        viewFindViewById.setOnClickListener(this);
        this.s.setOnClickListener(this);
        button.setOnClickListener(this);
        this.s.setEnabled(false);
        k();
    }

    @Override // com.roblox.client.k, com.roblox.client.l, android.support.v7.app.c, android.support.v4.app.h, android.app.Activity
    protected void onStart() {
        super.onStart();
        i.b("captcha");
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.container /* 2131230834 */:
                m();
                break;
            case R.id.reload /* 2131231089 */:
                if (p.e(this)) {
                    k();
                } else {
                    a(R.string.CommonUI_Messages_Response_ConnectionError, 1);
                }
                break;
            case R.id.verify /* 2131231214 */:
                if (p.e(this)) {
                    l();
                } else {
                    a(R.string.CommonUI_Messages_Response_ConnectionError, 1);
                }
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        this.q.setVisibility(0);
        this.p.setVisibility(8);
        this.r.setText("");
        this.t.setError(null);
        this.p.a(this.m, this);
    }

    @Override // android.lib.recaptcha.ReCaptcha.a
    public void a(boolean z, String str) {
        this.q.setVisibility(8);
        this.u = str;
        if (z) {
            this.p.setVisibility(0);
            this.s.setEnabled(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        m();
        this.s.setEnabled(false);
        this.q.setVisibility(0);
        this.p.setVisibility(8);
        new a(this.v, this.u, this.r.getText().toString(), this.w).execute(new Void[0]);
    }

    private void m() {
        if (this.r.hasFocus()) {
            this.r.clearFocus();
            p.b(this.r);
        }
    }

    public static void a(Context context, Fragment fragment, String str, int i) {
        Intent intent = new Intent(context, (Class<?>) ReCaptchaActivity.class);
        intent.putExtra("USERNAME_EXTRA", str);
        intent.putExtra("ACTION_EXTRA", i);
        fragment.startActivityForResult(intent, 10105);
    }

    public static void a(Activity activity, String str, int i) {
        Intent intent = new Intent(activity, (Class<?>) ReCaptchaActivity.class);
        intent.putExtra("USERNAME_EXTRA", str);
        intent.putExtra("ACTION_EXTRA", i);
        activity.startActivityForResult(intent, 10105);
    }

    private class a extends AsyncTask<Void, Void, com.roblox.client.http.j> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f6425b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f6426c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f6427d;
        private int e;

        a(String str, String str2, String str3, int i) {
            this.f6425b = str;
            this.f6426c = str2;
            this.f6427d = str3;
            this.e = i;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public com.roblox.client.http.j doInBackground(Void... voidArr) {
            String strSignupCaptchaValidateUrl;
            String strA = com.roblox.client.util.n.a("username=%s&recaptcha_challenge_field=%s&recaptcha_response_field=%s", this.f6425b, this.f6426c, this.f6427d);
            if (this.e == 1) {
                strSignupCaptchaValidateUrl = RobloxSettings.loginCaptchaValidateUrl();
            } else {
                strSignupCaptchaValidateUrl = this.e == 2 ? RobloxSettings.signupCaptchaValidateUrl() : null;
            }
            if (strSignupCaptchaValidateUrl != null) {
                return com.roblox.client.http.b.b(strSignupCaptchaValidateUrl, strA, null);
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(com.roblox.client.http.j jVar) {
            if (jVar != null && jVar.b() == 200) {
                ReCaptchaActivity.this.setResult(-1);
                ReCaptchaActivity.this.finish();
            } else {
                ReCaptchaActivity.this.a(R.string.Authentication_Captcha_Response_CaptchaFailed, 1);
                ReCaptchaActivity.this.k();
            }
        }
    }
}
