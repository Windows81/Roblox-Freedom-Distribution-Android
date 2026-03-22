package com.roblox.client.signup.multiscreen.c;

import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentSender;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.telephony.PhoneNumberFormattingTextWatcher;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.PasswordTransformationMethod;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import androidx.appcompat.app.b;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.q;
import androidx.lifecycle.w;
import com.roblox.client.ae.k;
import com.roblox.client.components.PhoneNumberEditText;
import com.roblox.client.components.RbxButton;
import com.roblox.client.components.RbxEditText;
import com.roblox.client.components.RbxProgressButton;
import com.roblox.client.o;
import com.roblox.client.phonenumber.PhonePrefix;
import com.roblox.client.s;
import com.roblox.client.signup.multiscreen.a.d;
import com.roblox.client.signup.multiscreen.a.f;
import com.roblox.client.signup.multiscreen.a.i;
import com.roblox.client.signup.multiscreen.b.h;
import com.roblox.client.signup.multiscreen.b.n;
import com.roblox.client.signup.multiscreen.b.p;
import com.roblox.client.signup.multiscreen.b.y;
import com.roblox.client.signup.multiscreen.b.z;
import com.roblox.client.signup.multiscreen.c.b;
import com.roblox.client.signup.multiscreen.e.d;
import com.roblox.client.x;
import com.roblox.platform.i;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class d extends s implements b.a, e {
    private PhoneNumberFormattingTextWatcher aA;
    private com.roblox.client.signup.multiscreen.e.d aB;
    private a aC;
    private RbxEditText as;
    private EditText at;
    private RbxEditText au;
    private RbxEditText av;
    private EditText aw;
    private RbxProgressButton ax;
    private RbxButton ay;
    private View az = null;
    private final Runnable aD = new Runnable() { // from class: com.roblox.client.signup.multiscreen.c.d.6
        @Override // java.lang.Runnable
        public void run() {
            d.this.az();
        }
    };
    private final Runnable aE = new Runnable() { // from class: com.roblox.client.signup.multiscreen.c.d.7
        @Override // java.lang.Runnable
        public void run() {
            d.this.aA();
        }
    };

    public interface a {
        void a(com.roblox.client.signup.multiscreen.a.e eVar, String str);

        void t();

        void u();

        void v();
    }

    public static d a(com.roblox.client.signup.multiscreen.a.a aVar) {
        d dVar = new d();
        Bundle bundle = new Bundle();
        bundle.putSerializable("birth_date_bundle_key", aVar);
        dVar.g(bundle);
        return dVar;
    }

    @Override // androidx.fragment.app.Fragment
    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        k.c("SignUpPhoneNumberFragment", "onCreateView");
        View viewInflate = layoutInflater.inflate(o.g.phone_number_fragment, viewGroup, false);
        TextView textView = (TextView) viewInflate.findViewById(o.f.fragment_sign_up_phone_title);
        textView.setTypeface(null, 1);
        textView.setText(b("Authentication_SignUp_Label_SignUpWithPhone", o.j.Authentication_SignUp_Label_SignUpWithPhone));
        RbxButton rbxButton = (RbxButton) viewInflate.findViewById(o.f.fragment_sign_up_phone_email_button);
        this.ay = rbxButton;
        rbxButton.setTypeface(null, 1);
        this.ay.setText(b("Authentication_SignUp_Label_UseEmailInstead", o.j.Authentication_SignUp_Label_UseEmailInstead));
        this.ay.setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.signup.multiscreen.c.d.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                d.this.aC.u();
            }
        });
        TextView textView2 = (TextView) viewInflate.findViewById(o.f.fragment_sign_up_phone_fine_print_text);
        com.roblox.client.ae.a.b.c(r(), textView2);
        textView2.setTextIsSelectable(false);
        RbxEditText rbxEditText = (RbxEditText) viewInflate.findViewById(o.f.fragment_sign_up_phone_password);
        this.as = rbxEditText;
        EditText textBox = rbxEditText.getTextBox();
        this.at = textBox;
        textBox.setId(o.f.view_signup_password_field);
        this.as.getBottomLabel().setId(o.f.view_signup_password_bottom_label);
        this.as.setRightDrawableClickListener(new View.OnClickListener() { // from class: com.roblox.client.signup.multiscreen.c.d.12
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (d.this.at.getTransformationMethod() == null) {
                    k.c("SignUpPhoneNumberFragment", "transformation = null");
                    d.this.at.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, d.this.s().getDrawable(o.e.show_password), (Drawable) null);
                    d.this.at.setTransformationMethod(new PasswordTransformationMethod());
                    d.this.aB.d("passwordInvisible");
                    return;
                }
                k.c("SignUpPhoneNumberFragment", "transformation not null");
                d.this.at.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, d.this.s().getDrawable(o.e.hide_password), (Drawable) null);
                d.this.at.setTransformationMethod(null);
                d.this.aB.d("passwordVisible");
            }
        });
        this.at.setImeOptions(6);
        this.at.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.roblox.client.signup.multiscreen.c.d.13
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView3, int i, KeyEvent keyEvent) {
                if (i != 6) {
                    return false;
                }
                d.this.at.clearFocus();
                x.b(d.this.az);
                return true;
            }
        });
        this.as.setRbxFocusChangedListener(new com.roblox.client.components.f() { // from class: com.roblox.client.signup.multiscreen.c.d.14
            @Override // com.roblox.client.components.f
            public void a(View view, boolean z) {
                d.this.aB.a("password", z);
                if (TextUtils.isEmpty(d.this.as.getText())) {
                    if (z) {
                        d.this.as.c(d.this.b("Authentication_SignUp_Description_PasswordMinLength", o.j.Authentication_SignUp_Description_PasswordMinLength));
                    } else {
                        d.this.as.a();
                    }
                }
            }
        });
        this.at.addTextChangedListener(new TextWatcher() { // from class: com.roblox.client.signup.multiscreen.c.d.15
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                k.c("SignUpPhoneNumberFragment", "start: " + i + ". before: " + i2 + ". count: " + i3);
                if (i == 0 && i2 == 0 && i3 > 0) {
                    d.this.at.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, d.this.s().getDrawable(o.e.show_password), (Drawable) null);
                } else if (charSequence.length() == 0) {
                    d.this.at.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, (Drawable) null, (Drawable) null);
                    if (d.this.at.getTransformationMethod() == null) {
                        d.this.at.setTransformationMethod(new PasswordTransformationMethod());
                    }
                }
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                d.this.at.removeCallbacks(d.this.aD);
                d.this.at.postDelayed(d.this.aD, 500L);
            }
        });
        RbxEditText rbxEditText2 = (RbxEditText) viewInflate.findViewById(o.f.fragment_sign_up_phone_number_full_field);
        this.av = rbxEditText2;
        rbxEditText2.setRbxFocusChangedListener(new com.roblox.client.components.f() { // from class: com.roblox.client.signup.multiscreen.c.d.16
            @Override // com.roblox.client.components.f
            public void a(View view, boolean z) {
                d.this.aB.a("phoneNumber", z);
            }
        });
        this.av.getBottomLabel().setId(o.f.view_signup_phone_bottom_label);
        EditText textBox2 = this.av.getTextBox();
        this.aw = textBox2;
        textBox2.setId(o.f.view_signup_phone_field);
        this.aw.setImeOptions(5);
        this.aw.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.roblox.client.signup.multiscreen.c.d.17
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView3, int i, KeyEvent keyEvent) {
                if (i != 5) {
                    return false;
                }
                d.this.at.requestFocus();
                return true;
            }
        });
        this.aw.addTextChangedListener(new TextWatcher() { // from class: com.roblox.client.signup.multiscreen.c.d.18
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                k.c("SignUpPhoneNumberFragment", "PhoneNumber changed: " + ((Object) editable));
                d.this.aw.removeCallbacks(d.this.aE);
                d.this.aw.postDelayed(d.this.aE, 500L);
            }
        });
        RbxEditText phonePrefixField = ((PhoneNumberEditText) this.av).getPhonePrefixField();
        this.au = phonePrefixField;
        EditText textBox3 = phonePrefixField.getTextBox();
        textBox3.setId(o.f.view_phone_code_field);
        textBox3.setFocusable(false);
        textBox3.setKeyListener(null);
        textBox3.setFocusableInTouchMode(false);
        textBox3.setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.signup.multiscreen.c.d.19
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                k.c("SignUpPhoneNumberFragment", "showPhonePrefixList");
                d.this.aB.d("changeAreaCode");
                d.this.aC.t();
            }
        });
        RbxProgressButton rbxProgressButton = (RbxProgressButton) viewInflate.findViewById(o.f.fragment_sign_up_phone_sign_up_button);
        this.ax = rbxProgressButton;
        rbxProgressButton.setOnRbxClickedListener(new com.roblox.client.components.d() { // from class: com.roblox.client.signup.multiscreen.c.d.2
            @Override // com.roblox.client.components.d
            public void a(View view) {
                d.this.as();
            }
        });
        this.az = viewInflate;
        return viewInflate;
    }

    @Override // com.roblox.client.s, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void b(Bundle bundle) {
        com.roblox.client.signup.multiscreen.a.a aVar;
        super.b(bundle);
        k.c("SignUpPhoneNumberFragment", "onCreate");
        if (n() != null) {
            aVar = (com.roblox.client.signup.multiscreen.a.a) n().getSerializable("birth_date_bundle_key");
            if (aVar == null) {
                throw new IllegalArgumentException("Invalid birthdate passed in.");
            }
            k.c("SignUpPhoneNumberFragment", aVar.toString());
        } else {
            aVar = null;
        }
        com.roblox.client.signup.multiscreen.f fVar = new com.roblox.client.signup.multiscreen.f();
        com.roblox.client.signup.multiscreen.e.d dVar = (com.roblox.client.signup.multiscreen.e.d) w.a(this, new d.a(new n(fVar, new h()), new p(fVar), new z(fVar, new y(com.roblox.client.s.f.b()), com.roblox.abtesting.a.a(), com.roblox.client.s.h.a(), i.a().g()), aVar, com.roblox.client.s.f.b())).a(com.roblox.client.signup.multiscreen.e.d.class);
        this.aB = dVar;
        dVar.e().a(this, new q<com.roblox.client.signup.multiscreen.a.d>() { // from class: com.roblox.client.signup.multiscreen.c.d.3
            @Override // androidx.lifecycle.q
            public void a(com.roblox.client.signup.multiscreen.a.d dVar2) {
                d.this.a(dVar2);
            }
        });
        this.aB.g().a(this, new q<com.roblox.client.signup.multiscreen.a.f>() { // from class: com.roblox.client.signup.multiscreen.c.d.4
            @Override // androidx.lifecycle.q
            public void a(com.roblox.client.signup.multiscreen.a.f fVar2) {
                d.this.a(fVar2);
            }
        });
        this.aB.b().a(this, new q<com.roblox.client.signup.multiscreen.a.i>() { // from class: com.roblox.client.signup.multiscreen.c.d.5
            @Override // androidx.lifecycle.q
            public void a(com.roblox.client.signup.multiscreen.a.i iVar) {
                d.this.a(iVar);
            }
        });
        this.aB.a(com.roblox.client.ae.n.a(p()));
        aC();
    }

    @Override // androidx.fragment.app.Fragment
    public void a(int i, int i2, Intent intent) {
        super.a(i, i2, intent);
        if (i == 100) {
            if (i2 == -1) {
                String strA = new com.roblox.client.signup.multiscreen.a().a(intent);
                if (strA != null) {
                    k.b("SignUpPhoneNumberFragment", "Credential retrieved: " + strA);
                    this.aB.b(strA);
                }
                this.aB.m();
                return;
            }
            k.b("SignUpPhoneNumberFragment", "Result not ok. Code: " + i2);
            this.aB.l();
        }
    }

    @Override // com.roblox.client.s, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void h() {
        super.h();
        this.aB.o();
    }

    @Override // com.roblox.client.s, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void i() {
        super.i();
        x.b(this.az);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void a(Context context) {
        super.a(context);
        k.c("SignUpPhoneNumberFragment", "onAttach");
        if (context instanceof a) {
            this.aC = (a) context;
            return;
        }
        throw new RuntimeException(context.toString() + " must implement OnFragmentInteractionListener.");
    }

    @Override // androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void f() {
        super.f();
        k.c("SignUpPhoneNumberFragment", "onDetach");
        this.aC = null;
    }

    public void a(PhonePrefix phonePrefix) {
        k.c("SignUpPhoneNumberFragment", "setPhonePrefix: " + phonePrefix);
        this.aB.a(phonePrefix);
    }

    private boolean aq() {
        return Build.VERSION.SDK_INT >= 21;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.roblox.client.signup.multiscreen.a.d dVar) {
        k.c("SignUpPhoneNumberFragment", "onChanged: " + dVar);
        switch (AnonymousClass11.f7325a[dVar.f7154b.ordinal()]) {
            case 1:
                a(this.as);
                break;
            case 2:
                c(b("Authentication_SignUp_Response_Error", o.j.Authentication_SignUp_Response_Error));
                break;
            case 3:
                this.as.c(b("Authentication_SignUp_Description_PasswordMinLength", o.j.Authentication_SignUp_Description_PasswordMinLength));
                break;
            case 4:
                a(this.as, b("Authentication_SignUp_Response_PasswordMatchesUsername", o.j.Authentication_SignUp_Response_PasswordMatchesUsername));
                break;
            case 5:
                a(this.as, b("Authentication_SignUp_Response_SignUpPasswordTooShortError", o.j.Authentication_SignUp_Response_SignUpPasswordTooShortError));
                break;
            case 6:
                a(this.as, b("Authentication_SignUp_Response_PasswordUnknownError", o.j.Authentication_SignUp_Response_PasswordUnknownError));
                break;
            case 7:
                a(this.as, b("Authentication_SignUp_Response_SignUpPasswordTooShortError", o.j.Authentication_SignUp_Response_SignUpPasswordTooShortError));
                break;
            case 8:
                a(this.as, b("Authentication_SignUp_Response_PasswordForbidden", o.j.Authentication_SignUp_Response_PasswordForbidden));
                break;
            case 9:
                a(this.as, b("Authentication_SignUp_Response_PasswordComplexity", o.j.Authentication_SignUp_Response_PasswordComplexity));
                break;
            case 10:
                a(this.as, b("Authentication_SignUp_Response_PasswordInvalidCharacters", o.j.Authentication_SignUp_Response_PasswordInvalidCharacters));
                break;
            case 11:
                a(this.as, b("Authentication_SignUp_Response_PasswordPhoneNoRequired", o.j.Authentication_SignUp_Response_PasswordPhoneNoRequired));
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.roblox.client.signup.multiscreen.a.f fVar) {
        k.c("SignUpPhoneNumberFragment", "onChanged: " + fVar);
        int i = AnonymousClass11.f7326b[fVar.f7164b.ordinal()];
        if (i == 1) {
            a(this.av);
            a(this.au);
            return;
        }
        if (i != 2) {
            if (i == 3) {
                a(this.av, b("Authentication_SignUp_Response_InvalidPhoneNumber", o.j.Authentication_SignUp_Response_InvalidPhoneNumber));
                return;
            }
            if (i == 4) {
                this.av.a();
                this.au.a();
                return;
            } else {
                if (i != 5) {
                    return;
                }
                this.aw.setText(fVar.f7163a.b());
                return;
            }
        }
        PhonePrefix phonePrefixD = fVar.f7163a.d();
        this.au.setTextBoxText(b(phonePrefixD));
        if (aq()) {
            PhoneNumberFormattingTextWatcher phoneNumberFormattingTextWatcher = this.aA;
            if (phoneNumberFormattingTextWatcher != null) {
                this.aw.removeTextChangedListener(phoneNumberFormattingTextWatcher);
            }
            PhoneNumberFormattingTextWatcher phoneNumberFormattingTextWatcher2 = new PhoneNumberFormattingTextWatcher(phonePrefixD.countryCode);
            this.aA = phoneNumberFormattingTextWatcher2;
            this.aw.addTextChangedListener(phoneNumberFormattingTextWatcher2);
        }
    }

    /* JADX INFO: renamed from: com.roblox.client.signup.multiscreen.c.d$11, reason: invalid class name */
    static /* synthetic */ class AnonymousClass11 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f7325a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final /* synthetic */ int[] f7326b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        static final /* synthetic */ int[] f7327c;

        static {
            int[] iArr = new int[i.b.values().length];
            f7327c = iArr;
            try {
                iArr[i.b.SIGN_UP_SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f7327c[i.b.SIGN_UP_BIRTHDAY_INVALID.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f7327c[i.b.SIGN_UP_PASSWORD_INVALID.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f7327c[i.b.SIGN_UP_PHONE_NUMBER_ALREADY_LINKED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f7327c[i.b.SIGN_UP_FLOOD_CHECKED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f7327c[i.b.CHALLENGE_SUCCESS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f7327c[i.b.CHALLENGE_FLOOD_CHECKED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f7327c[i.b.CHALLENGE_INVALID_DELIVERY_TARGET.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f7327c[i.b.CHALLENGE_INVALID_PHONE_NUMBER.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f7327c[i.b.CHALLENGE_PHONE_NUMBER_ALREADY_LINKED.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f7327c[i.b.VERIFY_SUCCESS.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f7327c[i.b.VERIFY_FLOOD_CHECKED.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f7327c[i.b.VERIFY_INVALID_CODE.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f7327c[i.b.CAPTCHA.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f7327c[i.b.CAPTCHA_BEFORE_CODE_VERIFICATION.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f7327c[i.b.VERIFY_CHALLENGE_EXPIRED.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f7327c[i.b.VERIFY_INVALID_CHALLENGE.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f7327c[i.b.VERIFY_INVALID_TOKEN.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f7327c[i.b.VERIFY_EMPTY_REQUEST.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f7327c[i.b.VERIFY_UNKNOWN_ERROR.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f7327c[i.b.CHALLENGE_INVALID_TOKEN.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f7327c[i.b.CHALLENGE_INVALID_EMAIL_ADDRESS.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f7327c[i.b.CHALLENGE_EMPTY_REQUEST.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f7327c[i.b.CHALLENGE_INVALID_DELIVERY_METHOD.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f7327c[i.b.CHALLENGE_TOO_MANY_ACCOUNTS_LINKED_TO_EMAIL.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f7327c[i.b.SIGN_UP_FAILED_TO_CREATE_USERNAME.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                f7327c[i.b.SIGN_UP_FAILED_TO_CREATE_USER.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                f7327c[i.b.SIGN_UP_VOUCHER_EXPIRED.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                f7327c[i.b.SIGN_UP_VOUCHER_INVALID.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                f7327c[i.b.SIGN_UP_TOO_MANY_ACCOUNTS_LINKED_TO_EMAIL.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                f7327c[i.b.SIGN_UP_EMPTY_REQUEST.ordinal()] = 31;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                f7327c[i.b.SIGN_UP_INVALID_TOKEN.ordinal()] = 32;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                f7327c[i.b.UNKNOWN_ERROR.ordinal()] = 33;
            } catch (NoSuchFieldError unused33) {
            }
            int[] iArr2 = new int[f.a.values().length];
            f7326b = iArr2;
            try {
                iArr2[f.a.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                f7326b[f.a.SET_PHONE_PREFIX.ordinal()] = 2;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                f7326b[f.a.INVALID_PHONE_NUMBER.ordinal()] = 3;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                f7326b[f.a.EMPTY_PHONE_NUMBER.ordinal()] = 4;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                f7326b[f.a.UPDATE_PHONE_NUMBER.ordinal()] = 5;
            } catch (NoSuchFieldError unused38) {
            }
            int[] iArr3 = new int[d.a.values().length];
            f7325a = iArr3;
            try {
                iArr3[d.a.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                f7325a[d.a.INVALID_RESPONSE.ordinal()] = 2;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                f7325a[d.a.EMPTY_PASSWORD.ordinal()] = 3;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                f7325a[d.a.EQUAL_TO_USERNAME.ordinal()] = 4;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                f7325a[d.a.TOO_SHORT.ordinal()] = 5;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                f7325a[d.a.UNKNOWN.ordinal()] = 6;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                f7325a[d.a.REQUIREMENTS_NOT_SATISFIED.ordinal()] = 7;
            } catch (NoSuchFieldError unused45) {
            }
            try {
                f7325a[d.a.NOT_ALLOWED.ordinal()] = 8;
            } catch (NoSuchFieldError unused46) {
            }
            try {
                f7325a[d.a.TOO_SIMPLE.ordinal()] = 9;
            } catch (NoSuchFieldError unused47) {
            }
            try {
                f7325a[d.a.INVALID_CHARS.ordinal()] = 10;
            } catch (NoSuchFieldError unused48) {
            }
            try {
                f7325a[d.a.EMPTY_USERNAME.ordinal()] = 11;
            } catch (NoSuchFieldError unused49) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.roblox.client.signup.multiscreen.a.i iVar) {
        k.c("SignUpPhoneNumberFragment", "SignUp.Message: " + iVar.f7183a);
        switch (AnonymousClass11.f7327c[iVar.f7183a.ordinal()]) {
            case 1:
                this.aC.a(this.aB.d(), this.aB.f());
                return;
            case 2:
                c(b("Authentication_SignUp_Response_InvalidBirthday", o.j.Authentication_SignUp_Response_InvalidBirthday));
                ay();
                return;
            case 3:
                a(this.as, b("Authentication_SignUp_Response_PasswordInvalidCharacters", o.j.Authentication_SignUp_Response_PasswordInvalidCharacters));
                ay();
                return;
            case 4:
                a(this.av, b("Authentication_SignUp_Response_PhoneNumberAlreadyLinked", o.j.Authentication_SignUp_Response_PhoneNumberAlreadyLinked));
                ay();
                return;
            case 5:
                aB();
                ay();
                return;
            case 6:
                a(this.av);
                d(this.aB.c());
                return;
            case 7:
                aB();
                ay();
                return;
            case 8:
                a(this.av, b("Authentication_SignUp_Response_InvalidPhoneNumber", o.j.Authentication_SignUp_Response_InvalidPhoneNumber));
                ay();
                return;
            case 9:
                a(this.av, b("Authentication_SignUp_Response_InvalidPhoneNumber", o.j.Authentication_SignUp_Response_InvalidPhoneNumber));
                ay();
                return;
            case 10:
                a(this.av, b("Authentication_SignUp_Response_PhoneNumberAlreadyLinked", o.j.Authentication_SignUp_Response_PhoneNumberAlreadyLinked));
                ay();
                return;
            case 11:
                av();
                return;
            case 12:
                aw();
                aB();
                return;
            case 13:
                e(b("Authentication_SignUp_Response_PhoneNumberAlreadyLinked", o.j.Authentication_SignUp_Response_InvalidCode));
                return;
            case 14:
            case 15:
                this.aC.v();
                return;
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
                aw();
                break;
        }
        d(o.j.CommonUI_Messages_Response_SystemErrorTryLater);
        ay();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void as() {
        if (ap()) {
            return;
        }
        this.aB.d("submit");
        k.c("SignUpPhoneNumberFragment", "onSignUpClicked");
        this.ax.a(RbxProgressButton.b.SHOW_PROGRESS, o.j.CommonUI_Messages_Action_Validating);
        ax();
        final Handler handler = new Handler(Looper.getMainLooper());
        final Context contextP = p();
        x.b(this.az);
        handler.postDelayed(new Runnable() { // from class: com.roblox.client.signup.multiscreen.c.d.8
            @Override // java.lang.Runnable
            public void run() {
                boolean z;
                boolean z2 = true;
                if (d.this.av.getText().equals("")) {
                    d dVar = d.this;
                    dVar.a(dVar.av, d.this.b("Authentication_SignUp_Response_PleaseEnterAPhoneNumber", o.j.Authentication_SignUp_Response_PleaseEnterAPhoneNumber));
                    z = true;
                } else {
                    z = false;
                }
                if (d.this.at.getText().toString().equals("")) {
                    d dVar2 = d.this;
                    dVar2.a(dVar2.as, d.this.b("Authentication_SignUp_Response_PleaseEnterPassword", o.j.Authentication_SignUp_Response_PleaseEnterPassword));
                } else {
                    z2 = z;
                }
                if (z2 || !d.this.aB.k()) {
                    d.this.ay();
                } else {
                    handler.postDelayed(new Runnable() { // from class: com.roblox.client.signup.multiscreen.c.d.8.1
                        @Override // java.lang.Runnable
                        public void run() {
                            d.this.ax.a(RbxProgressButton.b.SHOW_PROGRESS, com.roblox.client.locale.a.a(contextP, "Authentication_SignUp_Response_RegisteringWord", o.j.Authentication_SignUp_Response_RegisteringWord));
                            d.this.aB.h();
                        }
                    }, 500L);
                }
            }
        }, 500L);
    }

    private void at() {
        k.c("SignUpPhoneNumberFragment", "signUpAfterCaptcha.");
        this.ax.a(RbxProgressButton.b.SHOW_PROGRESS, o.j.CommonUI_Messages_Action_Validating);
        ax();
        final Handler handler = new Handler(Looper.getMainLooper());
        final Context contextP = p();
        x.b(this.az);
        handler.postDelayed(new Runnable() { // from class: com.roblox.client.signup.multiscreen.c.d.9
            @Override // java.lang.Runnable
            public void run() {
                boolean z;
                boolean z2 = true;
                if (d.this.av.getText().equals("")) {
                    d dVar = d.this;
                    dVar.a(dVar.av, d.this.b("Authentication_SignUp_Response_PleaseEnterAPhoneNumber", o.j.Authentication_SignUp_Response_PleaseEnterAPhoneNumber));
                    z = true;
                } else {
                    z = false;
                }
                if (d.this.at.getText().toString().equals("")) {
                    d dVar2 = d.this;
                    dVar2.a(dVar2.as, d.this.b("Authentication_SignUp_Response_PleaseEnterPassword", o.j.Authentication_SignUp_Response_PleaseEnterPassword));
                } else {
                    z2 = z;
                }
                if (z2 || !d.this.aB.k()) {
                    d.this.ay();
                } else {
                    handler.postDelayed(new Runnable() { // from class: com.roblox.client.signup.multiscreen.c.d.9.1
                        @Override // java.lang.Runnable
                        public void run() {
                            d.this.ax.a(RbxProgressButton.b.SHOW_PROGRESS, com.roblox.client.locale.a.a(contextP, "Authentication_SignUp_Response_RegisteringWord", o.j.Authentication_SignUp_Response_RegisteringWord));
                            d.this.aB.j();
                        }
                    }, 500L);
                }
            }
        }, 500L);
    }

    private void d(String str) {
        k.c("SignUpPhoneNumberFragment", "CredentialValue: " + str);
        b.a(1, str).a(u(), "CodeVerificationFragment");
    }

    private Fragment au() {
        return u().a("CodeVerificationFragment");
    }

    private void av() {
        Fragment fragmentAu = au();
        if (fragmentAu instanceof b) {
            ((b) fragmentAu).aq();
        }
    }

    private void e(String str) {
        Fragment fragmentAu = au();
        if (fragmentAu instanceof b) {
            ((b) fragmentAu).d(str);
        }
    }

    private void aw() {
        Fragment fragmentAu = au();
        if (fragmentAu instanceof b) {
            ((b) fragmentAu).ar();
        }
    }

    private void ax() {
        this.as.b();
        this.av.b();
        this.au.b();
        this.ay.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ay() {
        Context contextP = p();
        if (contextP != null) {
            this.ax.a(RbxProgressButton.b.SHOW_BUTTON, com.roblox.client.locale.a.a(contextP, "Authentication_SignUp_Label_SignUp", o.j.Authentication_SignUp_Label_SignUp));
            this.av.c();
            this.as.c();
            this.au.c();
            this.ay.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(RbxEditText rbxEditText, String str) {
        rbxEditText.b(str);
    }

    private void a(RbxEditText rbxEditText) {
        rbxEditText.a((String) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void az() {
        k.c("SignUpPhoneNumberFragment", "callValidatePassword.");
        this.aB.a(this.at.getText().toString(), this.aw.getText().toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aA() {
        this.aB.a(this.av.getText());
    }

    private void aB() {
        Context contextP = p();
        if (contextP != null) {
            new b.a(contextP).a(com.roblox.client.locale.a.a(contextP, "CommonUI_Messages_Response_TooManyAttemptsText", o.j.CommonUI_Messages_Response_TooManyAttemptsText)).b(com.roblox.client.locale.a.a(contextP, "Authentication_2SV_Response_TooManyAttempts", o.j.Authentication_TwoStepVerification_Response_TooManyAttempts)).a(com.roblox.client.locale.a.a(contextP, "CommonUI_Features_Action_Ok", o.j.CommonUI_Features_Action_Ok), new DialogInterface.OnClickListener() { // from class: com.roblox.client.signup.multiscreen.c.d.10
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    dialogInterface.dismiss();
                }
            }).a(false).b().show();
        }
    }

    private String b(PhonePrefix phonePrefix) {
        return phonePrefix.countryCode + " +" + phonePrefix.prefix;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String b(String str, int i) {
        return com.roblox.client.locale.a.a(p(), str, i);
    }

    private void aC() {
        PendingIntent pendingIntentA;
        if (p() == null || !this.aB.n() || (pendingIntentA = new com.roblox.client.signup.multiscreen.a().a(p(), com.roblox.client.signup.multiscreen.b.PHONE)) == null) {
            return;
        }
        try {
            a(pendingIntentA.getIntentSender(), 100, null, 0, 0, 0, null);
        } catch (IntentSender.SendIntentException e2) {
            k.e("SignUpPhoneNumberFragment", "IntentException: " + e2.getMessage());
        }
    }

    @Override // com.roblox.client.signup.multiscreen.c.e
    public void m(boolean z) {
        if (this.aB.i()) {
            this.aB.h();
        } else {
            at();
        }
    }

    @Override // com.roblox.client.signup.multiscreen.c.e
    public void ar() {
        ay();
    }

    @Override // com.roblox.client.signup.multiscreen.c.b.a
    public void p_() {
        ay();
    }

    @Override // com.roblox.client.signup.multiscreen.c.b.a
    public void q_() {
        av();
        this.aB.h();
    }

    @Override // com.roblox.client.signup.multiscreen.c.b.a
    public void a_(String str) {
        this.aB.c(str);
    }
}
