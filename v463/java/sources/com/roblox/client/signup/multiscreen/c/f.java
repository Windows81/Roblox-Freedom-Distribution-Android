package com.roblox.client.signup.multiscreen.c;

import android.content.Context;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.lifecycle.q;
import androidx.lifecycle.w;
import com.roblox.client.ae.k;
import com.roblox.client.components.RbxButton;
import com.roblox.client.components.RbxEditText;
import com.roblox.client.components.RbxGenderPicker;
import com.roblox.client.components.RbxProgressButton;
import com.roblox.client.http.h;
import com.roblox.client.o;
import com.roblox.client.s;
import com.roblox.client.signup.UsernameSignUpEditText;
import com.roblox.client.signup.multiscreen.a.h;
import com.roblox.client.signup.multiscreen.b.v;
import com.roblox.client.signup.multiscreen.e.e;
import com.roblox.client.x;
import com.roblox.platform.i;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class f extends s {
    private b aA;
    private String aB;
    private String aC;
    private a aD;
    private boolean as;
    private UsernameSignUpEditText at;
    private EditText au;
    private RbxGenderPicker av;
    private RbxProgressButton aw;
    private RbxButton ax;
    private com.roblox.client.signup.multiscreen.e.e az;
    private View ay = null;
    private final Runnable aE = new Runnable() { // from class: com.roblox.client.signup.multiscreen.c.f.11
        @Override // java.lang.Runnable
        public void run() {
            f.this.as();
        }
    };

    public interface b {
        void n();

        void p();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.roblox.client.signup.multiscreen.a.c cVar) {
    }

    public static f a(String str, String str2, com.roblox.client.signup.multiscreen.a.a aVar) {
        f fVar = new f();
        Bundle bundle = new Bundle();
        bundle.putString("username_bundle_key", str);
        bundle.putString("password_bundle_key", str2);
        bundle.putSerializable("birth_date_bundle_key", aVar);
        fVar.g(bundle);
        return fVar;
    }

    @Override // androidx.fragment.app.Fragment
    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        k.c("UsernameGenderFragment", "onCreateView");
        View viewInflate = layoutInflater.inflate(o.g.username_gender_fragment, viewGroup, false);
        TextView textView = (TextView) viewInflate.findViewById(o.f.fragment_sign_up_gender_title);
        textView.setTypeface(null, 1);
        textView.setText(b("Authentication_SignUp_Label_WelcomeToRoblox", o.j.Authentication_SignUp_Label_WelcomeToRoblox));
        ((TextView) viewInflate.findViewById(o.f.fragment_sign_up_username_title)).setText(b("Authentication_SignUp_Label_ThisIsYourUsername", o.j.Authentication_SignUp_Label_ThisIsYourUsername));
        ((TextView) viewInflate.findViewById(o.f.fragment_sign_up_gender_field_title)).setText(b("Authentication_SignUp_Label_WhatIsYourGender", o.j.Authentication_SignUp_Label_WhatIsYourGender));
        RbxGenderPicker rbxGenderPicker = (RbxGenderPicker) viewInflate.findViewById(o.f.fragment_sign_up_gender_picker);
        this.av = rbxGenderPicker;
        rbxGenderPicker.setOnGenderButtonPressedListener(new RbxGenderPicker.a() { // from class: com.roblox.client.signup.multiscreen.c.f.1
            @Override // com.roblox.client.components.RbxGenderPicker.a
            public void a(RbxButton rbxButton) {
                f.this.az.d("gender");
                x.a(f.this.p(), f.this.ay);
            }
        });
        UsernameSignUpEditText usernameSignUpEditText = (UsernameSignUpEditText) viewInflate.findViewById(o.f.fragment_sign_up_username);
        this.at = usernameSignUpEditText;
        EditText textBox = usernameSignUpEditText.getTextBox();
        this.au = textBox;
        textBox.setId(o.f.view_signup_username_field);
        this.at.getBottomLabel().setId(o.f.view_signup_username_bottom_label);
        this.at.c(b("Authentication_SignUp_Description_UsernameHint", o.j.Authentication_SignUp_Description_UsernameHint));
        this.at.setGenerateUsernameIconTouchListener(new com.roblox.client.signup.b() { // from class: com.roblox.client.signup.multiscreen.c.f.4
            @Override // com.roblox.client.signup.b
            public void a() {
                f.this.at();
            }
        });
        this.au.setImeOptions(6);
        this.au.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.roblox.client.signup.multiscreen.c.f.5
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView2, int i, KeyEvent keyEvent) {
                if (i != 6) {
                    return false;
                }
                f.this.au.clearFocus();
                x.b(f.this.ay);
                return true;
            }
        });
        this.au.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.roblox.client.signup.multiscreen.c.f.6
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                f.this.az.a("username", z);
                if (f.this.az.k()) {
                    String string = f.this.au.getText().toString();
                    if (z || string.length() != 0) {
                        if (z && string.equals(f.this.az.b())) {
                            f.this.au.setText("");
                            return;
                        }
                        return;
                    }
                    f.this.aq();
                }
            }
        });
        RbxProgressButton rbxProgressButton = (RbxProgressButton) viewInflate.findViewById(o.f.fragment_sign_up_username_start_button);
        this.aw = rbxProgressButton;
        rbxProgressButton.setText(b("Authentication_SignUp_Label_Start", o.j.Authentication_SignUp_Label_Start));
        this.aw.setOnRbxClickedListener(new com.roblox.client.components.d() { // from class: com.roblox.client.signup.multiscreen.c.f.7
            @Override // com.roblox.client.components.d
            public void a(View view) {
                x.a(f.this.p(), view);
                f.this.au();
            }
        });
        RbxButton rbxButton = (RbxButton) viewInflate.findViewById(o.f.fragment_sign_up_username_skip_button);
        this.ax = rbxButton;
        rbxButton.setText(b("Authentication_SignUp_Label_Skip", o.j.Authentication_SignUp_Label_Skip));
        this.ax.setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.signup.multiscreen.c.f.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                x.a(f.this.p(), view);
                f.this.az.i();
                f.this.aA.n();
            }
        });
        this.ay = viewInflate;
        b(p());
        ar();
        if (this.az.k()) {
            k.c("UsernameGenderFragment", "showUsername");
            aq();
            this.au.setHint(this.az.b());
            ((LinearLayout) viewInflate.findViewById(o.f.fragment_sign_up_final_username_layout)).setVisibility(0);
        }
        return viewInflate;
    }

    @Override // com.roblox.client.s, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void b(Bundle bundle) {
        com.roblox.client.signup.multiscreen.a.a aVar;
        super.b(bundle);
        k.c("UsernameGenderFragment", "onCreate");
        if (n() != null) {
            aVar = (com.roblox.client.signup.multiscreen.a.a) n().getSerializable("birth_date_bundle_key");
            if (aVar == null) {
                throw new IllegalArgumentException("Invalid birthdate passed in.");
            }
            k.c("UsernameGenderFragment", aVar.toString());
        } else {
            aVar = null;
        }
        com.roblox.client.signup.multiscreen.a.a aVar2 = aVar;
        com.roblox.client.signup.multiscreen.f fVar = new com.roblox.client.signup.multiscreen.f();
        com.roblox.client.signup.multiscreen.b.e eVar = new com.roblox.client.signup.multiscreen.b.e(i.a().h());
        this.az = (com.roblox.client.signup.multiscreen.e.e) w.a(this, new e.a(new com.roblox.client.signup.multiscreen.b.x(fVar, new com.roblox.client.signup.multiscreen.b.s(com.roblox.client.s.f.b()), new h(), new v(i.a().g()), com.roblox.client.ad.c.a(), com.roblox.client.ad.b.a()), new com.roblox.client.signup.multiscreen.b.g(fVar, eVar, new com.roblox.client.signup.multiscreen.b.c(com.roblox.client.s.f.b())), aVar2, com.roblox.client.s.f.b(), com.roblox.client.ad.b.a())).a(com.roblox.client.signup.multiscreen.e.e.class);
        if (n() != null) {
            this.az.a(n().getString("username_bundle_key"));
            this.az.b(n().getString("password_bundle_key"));
        }
        this.az.d().a(this, new q<com.roblox.client.signup.multiscreen.a.h>() { // from class: com.roblox.client.signup.multiscreen.c.f.9
            @Override // androidx.lifecycle.q
            public void a(com.roblox.client.signup.multiscreen.a.h hVar) {
                f.this.a(hVar);
            }
        });
        this.az.c().a(this, new q<com.roblox.client.signup.multiscreen.a.c>() { // from class: com.roblox.client.signup.multiscreen.c.f.10
            @Override // androidx.lifecycle.q
            public void a(com.roblox.client.signup.multiscreen.a.c cVar) {
                f.this.a(cVar);
            }
        });
    }

    @Override // com.roblox.client.s, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void h() {
        super.h();
        this.az.g();
    }

    @Override // com.roblox.client.s, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void i() {
        super.i();
        x.b(this.ay);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void a(Context context) {
        super.a(context);
        if (context instanceof b) {
            this.aA = (b) context;
            return;
        }
        k.b("UsernameGenderFragment", "Parent activity does not implement OnFragmentInteractionListener!");
        throw new RuntimeException(context.toString() + " must implement OnFragmentInteractionListener.");
    }

    @Override // androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void f() {
        super.f();
        this.aA = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aq() {
        this.as = true;
        this.at.setTextBoxText(this.az.b());
        b(this.at, (String) null);
        this.as = false;
    }

    private void ar() {
        this.aD = new a(this.at);
        this.au.addTextChangedListener(new TextWatcher() { // from class: com.roblox.client.signup.multiscreen.c.f.2
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (f.this.as) {
                    return;
                }
                f.this.at.removeCallbacks(f.this.aD);
                f.this.au.removeCallbacks(f.this.aE);
                f.this.au.postDelayed(f.this.aE, 500L);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void as() {
        this.az.b(this.au.getText().toString(), this.az.f());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void at() {
        this.az.j();
        this.at.f();
        this.az.a(this.at.getText(), this.az.f());
    }

    /* JADX INFO: renamed from: com.roblox.client.signup.multiscreen.c.f$3, reason: invalid class name */
    static /* synthetic */ class AnonymousClass3 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f7354a;

        static {
            int[] iArr = new int[h.a.values().length];
            f7354a = iArr;
            try {
                iArr[h.a.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f7354a[h.a.UNKNOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f7354a[h.a.NOT_ALLOWED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f7354a[h.a.EMPTY_USERNAME.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f7354a[h.a.TAKEN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f7354a[h.a.INVALID_LENGTH.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f7354a[h.a.INVALID_START_CHAR.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f7354a[h.a.MORE_THAT_ONE_UNDERSCORE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f7354a[h.a.CONTAINS_SPACES.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f7354a[h.a.NULL.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f7354a[h.a.PRIVATE_INFO.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f7354a[h.a.CHECKING.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f7354a[h.a.NEW_SUGGESTION.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f7354a[h.a.SUGGESTION_ERROR.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f7354a[h.a.INVALID_RESPONSE.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f7354a[h.a.INVALID_CHARS.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f7354a[h.a.BIRTHDAY_REQUIRED.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f7354a[h.a.USERNAME_NOT_CHANGED.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f7354a[h.a.USERNAME_CHANGED.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.roblox.client.signup.multiscreen.a.h hVar) {
        k.c("UsernameGenderFragment", "onChanged: " + hVar);
        switch (AnonymousClass3.f7354a[hVar.f7177b.ordinal()]) {
            case 1:
                b(this.at, b("Authentication_SignUp_Response_LooksGreat", o.j.Authentication_SignUp_Response_LooksGreat));
                this.at.postDelayed(this.aD, 2000L);
                k.c("UsernameGenderFragment", "showLooksGoodIcon");
                this.at.i();
                return;
            case 2:
                a(this.at, b("Authentication_SignUp_Response_UsernameUnknownError", o.j.Authentication_SignUp_Response_UsernameUnknownError));
                this.at.j();
                return;
            case 3:
                a(this.at, b("Authentication_SignUp_Response_UsernameExplicit", o.j.Authentication_SignUp_Response_UsernameExplicit));
                this.at.j();
                return;
            case 4:
                this.at.c(b("Authentication_SignUp_Description_UsernameHint", o.j.Authentication_SignUp_Description_UsernameHint));
                this.at.k();
                return;
            case 5:
                a(this.at, b("Authentication_SignUp_Response_UsernameAlreadyInUse", o.j.Authentication_SignUp_Response_UsernameAlreadyInUse));
                this.at.h();
                return;
            case 6:
                a(this.at, b("Authentication_SignUp_Response_UsernameInvalidLength", o.j.Authentication_SignUp_Response_UsernameInvalidLength));
                this.at.j();
                return;
            case 7:
                a(this.at, b("Authentication_SignUp_Response_UsernameInvalidFirstOrLastCharacter", o.j.Authentication_SignUp_Response_UsernameInvalidFirstOrLastCharacter));
                this.at.j();
                return;
            case 8:
                a(this.at, b("Authentication_SignUp_Response_UsernameTooManyUnderscores", o.j.Authentication_SignUp_Response_UsernameTooManyUnderscores));
                this.at.j();
                return;
            case 9:
                a(this.at, b("Authentication_SignUp_Response_UsernameCannotContainSpaces", o.j.Authentication_SignUp_Response_UsernameCannotContainSpaces));
                this.at.j();
                return;
            case 10:
                a(this.at, b("Authentication_SignUp_Response_PleaseEnterUsername", o.j.Authentication_SignUp_Response_PleaseEnterUsername));
                this.at.j();
                return;
            case 11:
                a(this.at, b("Authentication_SignUp_Response_UsernamePrivateInfo", o.j.Authentication_SignUp_Response_UsernamePrivateInfo));
                this.at.j();
                return;
            case 12:
                this.at.f();
                return;
            case 13:
                this.au.setText(hVar.f7176a);
                this.au.setSelection(hVar.f7176a.length());
                return;
            case 14:
                c(b("Authentication_SignUp_Response_SignUpErrorGeneratingUsername", o.j.Authentication_SignUp_Response_SignUpErrorGeneratingUsername));
                this.au.setText(hVar.f7176a);
                this.au.setSelection(hVar.f7176a.length());
                return;
            case 15:
                c(this.aC);
                this.at.k();
                return;
            case 16:
                a(this.at, b("Authentication_SignUp_Response_UsernameInvalidCharacters", o.j.Authentication_SignUp_Response_UsernameInvalidCharacters));
                this.at.j();
                return;
            case 17:
                a(this.at, b("Authentication_SignUp_Response_BirthdayMustBeSetFirst", o.j.Authentication_SignUp_Response_BirthdayMustBeSetFirst));
                this.at.j();
                return;
            case 18:
                aq();
                break;
            case 19:
                break;
            default:
                return;
        }
        this.aA.p();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void au() {
        this.az.h();
        this.aw.a(RbxProgressButton.b.SHOW_PROGRESS, o.j.CommonUI_Messages_Action_Validating);
        av();
        this.az.a(this.av.getValue());
        if (this.az.k()) {
            this.az.e();
        } else {
            this.aA.p();
        }
    }

    private void b(Context context) {
        this.aB = com.roblox.client.locale.a.a(context, "Authentication_SignUp_Response_UsernameContainsInvalidCharacters", o.j.Authentication_SignUp_Response_UsernameContainsInvalidCharacters);
        this.aC = com.roblox.client.locale.a.a(context, "Authentication_SignUp_Response_Error", o.j.Authentication_SignUp_Response_Error);
    }

    private void a(RbxEditText rbxEditText, String str) {
        rbxEditText.b(str);
    }

    private void b(RbxEditText rbxEditText, String str) {
        rbxEditText.a(str);
    }

    private String b(String str, int i) {
        return com.roblox.client.locale.a.a(p(), str, i);
    }

    private void av() {
        this.at.b();
        this.av.c();
        this.ax.a();
    }

    private static class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        WeakReference<RbxEditText> f7361a;

        a(RbxEditText rbxEditText) {
            this.f7361a = new WeakReference<>(rbxEditText);
        }

        @Override // java.lang.Runnable
        public void run() {
            RbxEditText rbxEditText = this.f7361a.get();
            if (rbxEditText != null) {
                rbxEditText.a("");
            }
        }
    }
}
