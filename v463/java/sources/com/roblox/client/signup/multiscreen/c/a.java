package com.roblox.client.signup.multiscreen.c;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.lifecycle.w;
import com.roblox.client.ae.k;
import com.roblox.client.components.RbxBirthdayPicker;
import com.roblox.client.o;
import com.roblox.client.s;
import com.roblox.client.x;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a extends s {
    private static InterfaceC0178a av = new InterfaceC0178a() { // from class: com.roblox.client.signup.multiscreen.c.a.1
        @Override // com.roblox.client.signup.multiscreen.c.a.InterfaceC0178a
        public void a(com.roblox.client.signup.multiscreen.a.a aVar) {
        }

        @Override // com.roblox.client.signup.multiscreen.c.a.InterfaceC0178a
        public void q() {
        }
    };
    private RbxBirthdayPicker as;
    private com.roblox.client.signup.multiscreen.e.b at;
    private InterfaceC0178a au = av;

    /* JADX INFO: renamed from: com.roblox.client.signup.multiscreen.c.a$a, reason: collision with other inner class name */
    public interface InterfaceC0178a {
        void a(com.roblox.client.signup.multiscreen.a.a aVar);

        void q();
    }

    public static a aq() {
        return new a();
    }

    @Override // androidx.fragment.app.Fragment
    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(o.g.birth_date_fragment, viewGroup, false);
        RbxBirthdayPicker rbxBirthdayPicker = (RbxBirthdayPicker) viewInflate.findViewById(o.f.fragment_sign_up_birthday_picker);
        this.as = rbxBirthdayPicker;
        rbxBirthdayPicker.setTitle(a(o.j.Authentication_SignUp_Label_WhensYourBirthday));
        this.as.setTitleColor(androidx.core.a.b.c(p(), o.c.RbxBlack));
        ((TextView) viewInflate.findViewById(o.f.fragment_sign_up_birth_date_title)).setTypeface(null, 1);
        viewInflate.findViewById(o.f.fragment_sign_up_login_button).setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.signup.multiscreen.c.a.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                x.a(a.this.p(), view);
                a.this.at.a("login");
                a.this.au.q();
            }
        });
        viewInflate.findViewById(o.f.fragment_birth_date_continue_btn).setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.signup.multiscreen.c.a.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                a.this.at.d();
                if (a.this.at.c()) {
                    a.this.at.f();
                    a.this.au.a(a.this.at.b());
                } else {
                    a.this.as.a();
                    a.this.at.a("birthday", "incomplete", true);
                }
            }
        });
        this.as.setRbxDateChangedListener(new com.roblox.client.components.e() { // from class: com.roblox.client.signup.multiscreen.c.a.4
            @Override // com.roblox.client.components.e
            public void a(int i, int i2) {
                if (i == 0) {
                    a.this.at.c(i2);
                } else if (i == 1) {
                    a.this.at.b(i2);
                } else if (i == 2) {
                    a.this.at.a(i2);
                }
                a.this.ar();
            }
        });
        return viewInflate;
    }

    @Override // com.roblox.client.s, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void b(Bundle bundle) {
        super.b(bundle);
        com.roblox.client.signup.multiscreen.e.b bVar = (com.roblox.client.signup.multiscreen.e.b) w.a(this).a(com.roblox.client.signup.multiscreen.e.b.class);
        this.at = bVar;
        if (bundle != null) {
            bVar.a(bundle.getInt("BirthYearBundleKey", -1));
            this.at.b(bundle.getInt("BirthMonthBundleKey", -1));
            this.at.c(bundle.getInt("BirthDayBundleKey", -1));
        }
    }

    @Override // androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void e(Bundle bundle) {
        super.e(bundle);
        com.roblox.client.signup.multiscreen.a.a aVarB = this.at.b();
        if (aVarB != null) {
            bundle.putInt("BirthDayBundleKey", aVarB.f7141c);
            bundle.putInt("BirthMonthBundleKey", aVarB.f7140b);
            bundle.putInt("BirthYearBundleKey", aVarB.f7139a);
        }
    }

    @Override // com.roblox.client.s, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void h() {
        super.h();
        this.at.e();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void a(Context context) {
        super.a(context);
        if (context instanceof InterfaceC0178a) {
            this.au = (InterfaceC0178a) context;
            return;
        }
        k.b("birth_date_fragment", "Parent activity does not implement BirthDateFragment.OnFragmentInteractionListener!");
        throw new RuntimeException(context.toString() + " must implement OnFragmentInteractionListener.");
    }

    @Override // androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void f() {
        super.f();
        this.au = av;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ar() {
        if (this.at.c()) {
            this.as.b();
        }
    }
}
