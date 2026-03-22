package com.roblox.client.signup.multiscreen;

import android.app.Activity;
import android.content.ComponentCallbacks;
import android.content.Intent;
import android.os.Bundle;
import android.view.MenuItem;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.w;
import com.roblox.client.ae.k;
import com.roblox.client.captcha.a;
import com.roblox.client.g.a;
import com.roblox.client.o;
import com.roblox.client.phonenumber.PhonePrefix;
import com.roblox.client.phonenumber.a;
import com.roblox.client.q;
import com.roblox.client.signup.multiscreen.c.a;
import com.roblox.client.signup.multiscreen.c.c;
import com.roblox.client.signup.multiscreen.c.d;
import com.roblox.client.signup.multiscreen.c.g;
import com.roblox.client.signup.multiscreen.e.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class ActivityVerifiedSignUp extends q implements a.InterfaceC0129a, a.InterfaceC0163a, a.InterfaceC0178a, c.a, d.a, g.b {
    private androidx.appcompat.app.a q;
    private d r;
    private com.roblox.client.signup.multiscreen.e.a s;

    @Override // com.roblox.client.captcha.a.InterfaceC0129a
    public void n() {
    }

    @Override // com.roblox.client.q, com.roblox.client.r, androidx.appcompat.app.c, androidx.fragment.app.c, androidx.core.app.e, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(o.g.activity_sign_up_multi_screen);
        com.roblox.client.signup.multiscreen.e.a aVar = (com.roblox.client.signup.multiscreen.e.a) w.a(this, new a.C0179a(new com.roblox.client.y.a(this, new com.roblox.client.g.b()))).a(com.roblox.client.signup.multiscreen.e.a.class);
        this.s = aVar;
        aVar.a(getIntent().getIntExtra("FlowBundleKey", 1));
        Toolbar toolbar = (Toolbar) findViewById(o.f.sign_up_multiscreen_toolbar_include);
        if (toolbar != null) {
            toolbar.setBackgroundColor(androidx.core.a.b.c(this, o.c.activityBackground));
            ((TextView) toolbar.findViewById(o.f.toolbar_title)).setTextColor(androidx.core.a.b.c(this, o.c.black));
            a(toolbar);
        }
        androidx.appcompat.app.a aVarA = a();
        this.q = aVarA;
        if (aVarA != null) {
            aVarA.b(o.e.back_arrow_sign_up);
            this.q.c(true);
            this.q.b(true);
            this.q.a(false);
            this.q.a(0);
        }
        d dVar = new d(this, o.f.multi_screen_sign_up_container);
        this.r = dVar;
        if (bundle == null) {
            dVar.b();
        } else {
            this.s.a(new com.roblox.client.signup.multiscreen.a.a(bundle.getInt("BirthYearBundleKey", -1), bundle.getInt("BirthMonthBundleKey", -1), bundle.getInt("BirthDayBundleKey", -1)));
        }
    }

    @Override // androidx.appcompat.app.c, androidx.fragment.app.c, androidx.core.app.e, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        com.roblox.client.signup.multiscreen.a.a aVarB = this.s.b();
        if (aVarB != null) {
            bundle.putInt("BirthDayBundleKey", aVarB.f7141c);
            bundle.putInt("BirthMonthBundleKey", aVarB.f7140b);
            bundle.putInt("BirthYearBundleKey", aVarB.f7139a);
        }
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            if (j().d()) {
                return true;
            }
            e(0);
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.roblox.client.q, androidx.fragment.app.c, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i != 10122) {
            return;
        }
        d(i2);
    }

    private void d(int i) {
        if (com.roblox.client.b.cb()) {
            if (i == -1) {
                k.c("ActivitySignUpMultiScreen", "SAVE: Credentials saved.");
                this.s.a(true);
            } else {
                k.b("ActivitySignUpMultiScreen", "SAVE: Canceled by user or NEVER was clicked. ResultCode: " + i);
                this.s.a(false);
            }
            e(102);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(int i) {
        setResult(i);
        finish();
        overridePendingTransition(0, o.a.slide_down_short);
    }

    private Fragment y() {
        Fragment fragmentA = j().a("UsernamePasswordFragment");
        if (fragmentA == null) {
            fragmentA = j().a("PhoneNumberFragment");
        }
        return fragmentA == null ? j().a("EmailFragment") : fragmentA;
    }

    private Fragment z() {
        return j().a("PhoneNumberFragment");
    }

    private void A() {
        ComponentCallbacks componentCallbacksY = y();
        if (componentCallbacksY instanceof com.roblox.client.signup.multiscreen.c.e) {
            k.c("ActivitySignUpMultiScreen", "Captcha failed.");
            ((com.roblox.client.signup.multiscreen.c.e) componentCallbacksY).ar();
        }
    }

    private void B() {
        ComponentCallbacks componentCallbacksY = y();
        if (componentCallbacksY instanceof com.roblox.client.signup.multiscreen.c.e) {
            k.c("ActivitySignUpMultiScreen", "Trigger SignUp after captcha success.");
            ((com.roblox.client.signup.multiscreen.c.e) componentCallbacksY).m(false);
        }
    }

    private void d(String str, String str2) {
        if (com.roblox.client.b.cb()) {
            this.s.a(this, 10122, str, str2, new a.InterfaceC0146a() { // from class: com.roblox.client.signup.multiscreen.ActivityVerifiedSignUp.1
                @Override // com.roblox.client.g.a.InterfaceC0146a
                public void c() {
                }

                @Override // com.roblox.client.g.a.InterfaceC0146a
                public void a() {
                    ActivityVerifiedSignUp.this.e(102);
                }

                @Override // com.roblox.client.g.a.InterfaceC0146a
                public void b() {
                    ActivityVerifiedSignUp.this.e(102);
                }
            });
        } else {
            e(102);
        }
    }

    public static void a(Activity activity, int i) {
        if (i != 1 && i != 2) {
            throw new IllegalArgumentException("Flow not recognized when starting multiscreen.ActivitySignUp.");
        }
        Intent intent = new Intent(activity, (Class<?>) ActivityVerifiedSignUp.class);
        intent.putExtra("FlowBundleKey", i);
        activity.startActivityForResult(intent, 10109);
        activity.overridePendingTransition(o.a.slide_up_short, o.a.stay);
    }

    @Override // com.roblox.client.signup.multiscreen.c.a.InterfaceC0178a
    public void a(com.roblox.client.signup.multiscreen.a.a aVar) {
        this.s.a(aVar);
        if (this.s.d()) {
            this.r.c();
        } else {
            this.r.a(this.s.b());
        }
    }

    @Override // com.roblox.client.signup.multiscreen.c.a.InterfaceC0178a
    public void q() {
        e(103);
    }

    @Override // com.roblox.client.signup.multiscreen.c.g.b
    public void b(String str, String str2) {
        d(str, str2);
    }

    @Override // com.roblox.client.signup.multiscreen.c.g.b
    public com.roblox.client.signup.multiscreen.a.a r() {
        return this.s.b();
    }

    @Override // com.roblox.client.signup.multiscreen.c.g.b
    public void s() {
        k.c("ActivitySignUpMultiScreen", "Try invisible captcha.");
        this.r.e();
    }

    @Override // com.roblox.client.captcha.a.InterfaceC0129a
    public void a(String str, String str2) {
        k.b("ActivitySignUpMultiScreen", "Captcha success. Sign up again.");
        this.r.a();
        B();
    }

    @Override // com.roblox.client.captcha.a.InterfaceC0129a
    public void p() {
        k.b("ActivitySignUpMultiScreen", "Captcha dismissed.");
        A();
    }

    @Override // com.roblox.client.signup.multiscreen.c.d.a
    public void a(com.roblox.client.signup.multiscreen.a.e eVar, String str) {
        d(eVar.e(), str);
    }

    @Override // com.roblox.client.signup.multiscreen.c.d.a
    public void t() {
        this.q.a(com.roblox.client.locale.a.a(this, "Authentication_SignUp_Label_SelectCountry", o.j.Authentication_SignUp_Label_SelectCountry));
        this.r.d();
    }

    @Override // com.roblox.client.signup.multiscreen.c.d.a
    public void u() {
        this.r.b(this.s.b());
    }

    @Override // com.roblox.client.signup.multiscreen.c.d.a
    public void v() {
        s();
    }

    @Override // com.roblox.client.phonenumber.a.InterfaceC0163a
    public void a(PhonePrefix phonePrefix) {
        k.b("ActivitySignUpMultiScreen", "onPhonePrefixSelected.");
        this.q.a(0);
        this.r.a();
        Fragment fragmentZ = z();
        if (fragmentZ instanceof com.roblox.client.signup.multiscreen.c.d) {
            ((com.roblox.client.signup.multiscreen.c.d) fragmentZ).a(phonePrefix);
        }
    }

    @Override // com.roblox.client.phonenumber.a.InterfaceC0163a
    public void l_() {
        this.q.a(0);
    }

    @Override // com.roblox.client.signup.multiscreen.c.c.a
    public void c(String str, String str2) {
        d(str, str2);
    }

    @Override // com.roblox.client.signup.multiscreen.c.c.a
    public void w() {
        this.r.a(this.s.b());
    }

    @Override // com.roblox.client.signup.multiscreen.c.c.a
    public void x() {
        s();
    }
}
