package com.roblox.client.signup;

import android.content.Context;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.roblox.client.R;
import com.roblox.client.components.RbxBirthdayPicker;
import com.roblox.client.components.RbxButton;
import com.roblox.client.components.RbxCheckBox;
import com.roblox.client.components.RbxEditText;
import com.roblox.client.components.RbxGenderPicker;
import com.roblox.client.components.RbxLoadingEditText;
import com.roblox.client.components.RbxProgressButton;
import com.roblox.client.components.RbxTextView;
import com.roblox.client.l.a;
import com.roblox.client.p;
import com.roblox.client.signup.a;
import com.roblox.client.signup.f;

/* JADX INFO: loaded from: classes.dex */
public class b extends com.roblox.client.l.g implements f.d {
    private static a.b i = new a.b() { // from class: com.roblox.client.signup.b.1
        @Override // com.roblox.client.signup.a.b
        public void k() {
        }

        @Override // com.roblox.client.signup.a.b
        public void l() {
        }

        @Override // com.roblox.client.signup.a.b
        public void m() {
        }
    };
    private View j;
    private f.b q;
    private com.roblox.abtesting.a r;
    private a.InterfaceC0114a s;
    private UsernameSignUpEditText k = null;
    private EditText l = null;
    private RbxEditText m = null;
    private RbxTextView n = null;
    private RbxProgressButton o = null;
    private RbxButton p = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    EditText f7840b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    RbxEditText f7841c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    EditText f7842d = null;
    RbxLoadingEditText e = null;
    RbxGenderPicker f = null;
    RbxBirthdayPicker g = null;
    RbxCheckBox h = null;
    private a.b t = i;

    static b a() {
        return new b();
    }

    @Override // com.roblox.client.l.g, com.roblox.client.m, android.support.v4.app.g, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(1, getTheme());
        this.r = com.roblox.abtesting.a.a();
        this.q = new i(this, new h(new g(new com.roblox.client.http.h())));
    }

    @Override // com.roblox.client.l.g, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.j = layoutInflater.inflate(R.layout.fragment_signup_new, viewGroup, false);
        layoutInflater.inflate(R.layout.fragment_sign_up_card_common_birthday_first, (LinearLayout) layoutInflater.inflate(R.layout.fragment_sign_up_card, (LinearLayout) this.j.findViewById(R.id.fragment_sign_up_swap_container)).findViewById(R.id.fragment_sign_up_card_inner_container));
        d();
        e();
        return this.j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.roblox.client.l.g, android.support.v4.app.g, android.support.v4.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (context instanceof a.b) {
            this.t = (a.b) context;
        } else {
            com.roblox.client.util.g.b("signup_window_mvp", "Parent activity does not implement FragmentSignUp.OnFragmentInteractionListener!");
            throw new RuntimeException(context.toString() + " must implement OnFragmentInteractionListener.");
        }
    }

    @Override // com.roblox.client.l.g, android.support.v4.app.g, android.support.v4.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.t = i;
    }

    private void d() {
        this.k = (UsernameSignUpEditText) this.j.findViewById(R.id.fragment_sign_up_username);
        this.f7840b = this.k.getTextBox();
        this.f7840b.setId(R.id.view_signup_username_field);
        this.k.getBottomLabel().setId(R.id.view_signup_username_bottom_label);
        this.f7841c = (RbxEditText) this.j.findViewById(R.id.fragment_sign_up_password);
        this.l = this.f7841c.getTextBox();
        this.l.setId(R.id.view_signup_password_field);
        this.f7841c.getBottomLabel().setId(R.id.view_signup_password_bottom_label);
        this.m = (RbxEditText) this.j.findViewById(R.id.fragment_sign_up_password_verify);
        this.f7842d = this.m.getTextBox();
        this.f7842d.setId(R.id.view_signup_password_verify_field);
        this.m.getBottomLabel().setId(R.id.view_signup_password_verify_bottom_label);
        this.f = (RbxGenderPicker) this.j.findViewById(R.id.fragment_sign_up_gender_picker);
        this.g = (RbxBirthdayPicker) this.j.findViewById(R.id.fragment_sign_up_birthday_picker);
        this.e = (RbxLoadingEditText) this.j.findViewById(R.id.fragment_sign_up_email);
        this.h = (RbxCheckBox) this.j.findViewById(R.id.fragment_sign_up_agreement_check);
        this.n = (RbxTextView) this.j.findViewById(R.id.fragment_sign_up_terms_error);
        this.o = (RbxProgressButton) this.j.findViewById(R.id.fragment_sign_up_submit_btn);
        this.o.setVisibility(0);
        this.p = (RbxButton) this.j.findViewById(R.id.fragment_sign_up_login_btn);
        TextView textView = (TextView) this.j.findViewById(R.id.fragment_sign_up_agreement);
        com.roblox.client.util.a.b.b(getActivity(), textView);
        textView.setTextIsSelectable(false);
    }

    private void e() {
        this.j.findViewById(R.id.fragment_sign_up_cancel_btn).setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.signup.b.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                b.this.s.a(f.c.CANCEL, null);
            }
        });
        this.j.findViewById(R.id.fragment_sign_up_login_btn).setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.signup.b.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                p.a(b.this.getContext(), view);
                b.this.s.a(f.c.SWITCH_TO_LOGIN, null);
            }
        });
        this.o.setOnRbxClickedListener(new com.roblox.client.components.g() { // from class: com.roblox.client.signup.b.7
            @Override // com.roblox.client.components.g
            public void a(View view) {
                if (!b.this.alertIfNetworkNotConnected()) {
                    b.this.s.a(f.c.SIGN_UP, null);
                }
            }
        });
        if (com.roblox.client.b.aZ()) {
            this.k.setGenerateUsernameIconTouchListener(new c() { // from class: com.roblox.client.signup.b.8
                @Override // com.roblox.client.signup.c
                public void a() {
                    com.roblox.client.l.c cVar = new com.roblox.client.l.c();
                    cVar.a("usernameKey", b.this.k.getText());
                    b.this.s.a(f.c.GET_USERNAME_SUGGESTION, cVar);
                }
            });
        }
        this.f7840b.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.roblox.client.signup.b.9
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                b.this.q.a(z, "username");
            }
        });
        this.f7841c.setRbxFocusChangedListener(new com.roblox.client.components.i() { // from class: com.roblox.client.signup.b.10
            @Override // com.roblox.client.components.i
            public void a(View view, boolean z) {
                b.this.q.a(z, "password");
            }
        });
        this.f7842d.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.roblox.client.signup.b.11
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                b.this.q.a(z, "passwordVerify");
            }
        });
        EditText textBox = this.e.getTextBox();
        textBox.setImeOptions(6);
        textBox.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.roblox.client.signup.b.12
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                if (i2 != 6) {
                    return false;
                }
                p.a(b.this.getContext(), textView);
                return true;
            }
        });
        textBox.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.roblox.client.signup.b.2
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                b.this.q.a(z, "email");
            }
        });
        this.f.setOnGenderButtonPressedListener(new RbxGenderPicker.a() { // from class: com.roblox.client.signup.b.3
            @Override // com.roblox.client.components.RbxGenderPicker.a
            public void a(RbxButton rbxButton) {
                p.a(b.this.getContext(), rbxButton);
                com.roblox.client.l.c cVar = new com.roblox.client.l.c();
                cVar.a("genderKey", b.this.f.getValue());
                b.this.s.a(f.c.GENDER_SELECTED, cVar);
            }
        });
        this.h.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.roblox.client.signup.b.4
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                com.roblox.client.l.c cVar = new com.roblox.client.l.c();
                cVar.a("termsOfPrivacyKey", z);
                b.this.s.a(f.c.TERMS_OF_PRIVACY_CHECK_CHANGED, cVar);
            }
        });
    }

    @Override // com.roblox.client.l.a
    public void a(f.b bVar) {
        this.q = bVar;
    }

    @Override // com.roblox.client.l.a
    public void a(a.InterfaceC0114a interfaceC0114a) {
        this.s = interfaceC0114a;
    }

    @Override // com.roblox.client.l.a
    public void a(com.roblox.client.l.e eVar) {
        this.f7324a = eVar;
    }

    @Override // com.roblox.client.signup.f.d
    public void b() {
        this.t.l();
    }

    @Override // com.roblox.client.signup.f.d
    public void a(boolean z) {
    }

    @Override // com.roblox.client.signup.f.d
    public void c() {
        this.t.m();
    }
}
