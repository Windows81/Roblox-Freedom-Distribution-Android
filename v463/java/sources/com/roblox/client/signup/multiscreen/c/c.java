package com.roblox.client.signup.multiscreen.c;

import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentSender;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
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
import com.roblox.client.components.RbxButton;
import com.roblox.client.components.RbxEditText;
import com.roblox.client.components.RbxProgressButton;
import com.roblox.client.o;
import com.roblox.client.s;
import com.roblox.client.signup.multiscreen.a.b;
import com.roblox.client.signup.multiscreen.a.d;
import com.roblox.client.signup.multiscreen.a.i;
import com.roblox.client.signup.multiscreen.b.h;
import com.roblox.client.signup.multiscreen.b.n;
import com.roblox.client.signup.multiscreen.b.y;
import com.roblox.client.signup.multiscreen.b.z;
import com.roblox.client.signup.multiscreen.c.b;
import com.roblox.client.signup.multiscreen.e.c;
import com.roblox.client.x;
import com.roblox.platform.i;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c extends s implements b.a, e {
    private a aA;
    private RbxEditText as;
    private EditText at;
    private RbxEditText au;
    private EditText av;
    private RbxProgressButton aw;
    private RbxButton ax;
    private com.roblox.client.signup.multiscreen.e.c az;
    private View ay = null;
    private final Runnable aB = new Runnable() { // from class: com.roblox.client.signup.multiscreen.c.c.5
        @Override // java.lang.Runnable
        public void run() {
            c.this.az();
        }
    };
    private final Runnable aC = new Runnable() { // from class: com.roblox.client.signup.multiscreen.c.c.6
        @Override // java.lang.Runnable
        public void run() {
            c.this.aA();
        }
    };

    public interface a {
        void c(String str, String str2);

        void w();

        void x();
    }

    public static c a(com.roblox.client.signup.multiscreen.a.a aVar) {
        c cVar = new c();
        Bundle bundle = new Bundle();
        bundle.putSerializable("birth_date_bundle_key", aVar);
        cVar.g(bundle);
        return cVar;
    }

    @Override // androidx.fragment.app.Fragment
    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(o.g.email_fragment, viewGroup, false);
        TextView textView = (TextView) viewInflate.findViewById(o.f.fragment_sign_up_email_title);
        textView.setTypeface(null, 1);
        textView.setText(b("Authentication_SignUp_Label_SignUpWithEmail", o.j.Authentication_SignUp_Label_SignUpWithEmail));
        RbxButton rbxButton = (RbxButton) viewInflate.findViewById(o.f.fragment_sign_up_email_phone_button);
        this.ax = rbxButton;
        rbxButton.setTypeface(null, 1);
        this.ax.setText(b("Authentication_SignUp_Label_UsePhoneInstead", o.j.Authentication_SignUp_Label_UsePhoneInstead));
        this.ax.setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.signup.multiscreen.c.c.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                c.this.aA.w();
            }
        });
        TextView textView2 = (TextView) viewInflate.findViewById(o.f.fragment_sign_up_email_fine_print_text);
        com.roblox.client.ae.a.b.b(r(), textView2);
        textView2.setTextIsSelectable(false);
        RbxEditText rbxEditText = (RbxEditText) viewInflate.findViewById(o.f.fragment_sign_up_email_password);
        this.as = rbxEditText;
        EditText textBox = rbxEditText.getTextBox();
        this.at = textBox;
        textBox.setId(o.f.view_signup_password_field);
        this.as.getBottomLabel().setId(o.f.view_signup_password_bottom_label);
        this.as.setRightDrawableClickListener(new View.OnClickListener() { // from class: com.roblox.client.signup.multiscreen.c.c.11
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (c.this.at.getTransformationMethod() == null) {
                    k.c("SignUpEmailNumberFragment", "transformation = null");
                    c.this.at.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, c.this.s().getDrawable(o.e.show_password), (Drawable) null);
                    c.this.at.setTransformationMethod(new PasswordTransformationMethod());
                    c.this.az.c("passwordInvisible");
                    return;
                }
                k.c("SignUpEmailNumberFragment", "transformation not null");
                c.this.at.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, c.this.s().getDrawable(o.e.hide_password), (Drawable) null);
                c.this.at.setTransformationMethod(null);
                c.this.az.c("passwordVisible");
            }
        });
        this.at.setImeOptions(6);
        this.at.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.roblox.client.signup.multiscreen.c.c.12
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView3, int i, KeyEvent keyEvent) {
                if (i != 6) {
                    return false;
                }
                c.this.at.clearFocus();
                x.b(c.this.ay);
                return true;
            }
        });
        this.as.setRbxFocusChangedListener(new com.roblox.client.components.f() { // from class: com.roblox.client.signup.multiscreen.c.c.13
            @Override // com.roblox.client.components.f
            public void a(View view, boolean z) {
                c.this.az.a("password", z);
                if (TextUtils.isEmpty(c.this.as.getText())) {
                    if (z) {
                        c.this.as.c(c.this.b("Authentication_SignUp_Description_PasswordMinLength", o.j.Authentication_SignUp_Description_PasswordMinLength));
                    } else {
                        c.this.as.a();
                    }
                }
            }
        });
        this.at.addTextChangedListener(new TextWatcher() { // from class: com.roblox.client.signup.multiscreen.c.c.14
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                k.c("SignUpEmailNumberFragment", "start: " + i + ". before: " + i2 + ". count: " + i3);
                if (i == 0 && i2 == 0 && i3 > 0) {
                    c.this.at.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, c.this.s().getDrawable(o.e.show_password), (Drawable) null);
                } else if (charSequence.length() == 0) {
                    c.this.at.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, (Drawable) null, (Drawable) null);
                    if (c.this.at.getTransformationMethod() == null) {
                        c.this.at.setTransformationMethod(new PasswordTransformationMethod());
                    }
                }
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                c.this.at.removeCallbacks(c.this.aB);
                c.this.at.postDelayed(c.this.aB, 500L);
            }
        });
        RbxEditText rbxEditText2 = (RbxEditText) viewInflate.findViewById(o.f.fragment_sign_up_email_field);
        this.au = rbxEditText2;
        rbxEditText2.getBottomLabel().setId(o.f.view_signup_email_bottom_label);
        this.au.setRbxFocusChangedListener(new com.roblox.client.components.f() { // from class: com.roblox.client.signup.multiscreen.c.c.15
            @Override // com.roblox.client.components.f
            public void a(View view, boolean z) {
                c.this.az.a("email", z);
            }
        });
        EditText textBox2 = this.au.getTextBox();
        this.av = textBox2;
        textBox2.setImeOptions(5);
        this.av.setId(o.f.view_signup_email_field);
        this.av.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.roblox.client.signup.multiscreen.c.c.16
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView3, int i, KeyEvent keyEvent) {
                if (i != 5) {
                    return false;
                }
                c.this.at.requestFocus();
                return true;
            }
        });
        this.av.addTextChangedListener(new TextWatcher() { // from class: com.roblox.client.signup.multiscreen.c.c.17
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                k.c("SignUpEmailNumberFragment", "Email changed: " + ((Object) editable));
                c.this.av.removeCallbacks(c.this.aC);
                c.this.av.postDelayed(c.this.aC, 500L);
            }
        });
        RbxProgressButton rbxProgressButton = (RbxProgressButton) viewInflate.findViewById(o.f.fragment_sign_up_email_sign_up_button);
        this.aw = rbxProgressButton;
        rbxProgressButton.setOnRbxClickedListener(new com.roblox.client.components.d() { // from class: com.roblox.client.signup.multiscreen.c.c.18
            @Override // com.roblox.client.components.d
            public void a(View view) {
                c.this.aq();
            }
        });
        this.ay = viewInflate;
        return viewInflate;
    }

    @Override // com.roblox.client.s, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void b(Bundle bundle) {
        com.roblox.client.signup.multiscreen.a.a aVar;
        super.b(bundle);
        k.c("SignUpEmailNumberFragment", "onCreate");
        if (n() != null) {
            aVar = (com.roblox.client.signup.multiscreen.a.a) n().getSerializable("birth_date_bundle_key");
            if (aVar == null) {
                throw new IllegalArgumentException("Invalid birthdate passed in.");
            }
            k.c("SignUpEmailNumberFragment", aVar.toString());
        } else {
            aVar = null;
        }
        com.roblox.client.signup.multiscreen.f fVar = new com.roblox.client.signup.multiscreen.f();
        com.roblox.client.signup.multiscreen.e.c cVar = (com.roblox.client.signup.multiscreen.e.c) w.a(this, new c.a(new n(fVar, new h()), new com.roblox.client.signup.multiscreen.b.b(fVar), new z(fVar, new y(com.roblox.client.s.f.b()), com.roblox.abtesting.a.a(), com.roblox.client.s.h.a(), i.a().g()), aVar, com.roblox.client.s.f.b())).a(com.roblox.client.signup.multiscreen.e.c.class);
        this.az = cVar;
        cVar.b().a(this, new q<com.roblox.client.signup.multiscreen.a.d>() { // from class: com.roblox.client.signup.multiscreen.c.c.2
            @Override // androidx.lifecycle.q
            public void a(com.roblox.client.signup.multiscreen.a.d dVar) {
                c.this.a(dVar);
            }
        });
        this.az.d().a(this, new q<com.roblox.client.signup.multiscreen.a.b>() { // from class: com.roblox.client.signup.multiscreen.c.c.3
            @Override // androidx.lifecycle.q
            public void a(com.roblox.client.signup.multiscreen.a.b bVar) {
                c.this.a(bVar);
            }
        });
        this.az.e().a(this, new q<com.roblox.client.signup.multiscreen.a.i>() { // from class: com.roblox.client.signup.multiscreen.c.c.4
            @Override // androidx.lifecycle.q
            public void a(com.roblox.client.signup.multiscreen.a.i iVar) {
                c.this.a(iVar);
            }
        });
        aB();
    }

    @Override // androidx.fragment.app.Fragment
    public void a(int i, int i2, Intent intent) {
        super.a(i, i2, intent);
        if (i == 100) {
            if (i2 == -1) {
                String strA = new com.roblox.client.signup.multiscreen.a().a(intent);
                if (strA != null) {
                    k.b("SignUpEmailNumberFragment", "Credential retrieved: " + strA);
                    this.az.o();
                    this.au.setTextBoxText(strA);
                }
                this.az.g();
                return;
            }
            k.b("SignUpEmailNumberFragment", "Result not ok. Code: " + i2);
            this.az.h();
        }
    }

    @Override // com.roblox.client.s, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void h() {
        super.h();
        this.az.n();
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
        if (context instanceof a) {
            this.aA = (a) context;
            return;
        }
        throw new RuntimeException(context.toString() + " must implement OnFragmentInteractionListener.");
    }

    @Override // androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void f() {
        super.f();
        this.aA = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.roblox.client.signup.multiscreen.a.d dVar) {
        k.c("SignUpEmailNumberFragment", "onChanged: " + dVar);
        switch (AnonymousClass10.f7298a[dVar.f7154b.ordinal()]) {
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
                a(this.as, b("Authentication_SignUp_Response_PasswordEmailRequired", o.j.Authentication_SignUp_Response_PasswordEmailRequired));
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.roblox.client.signup.multiscreen.a.b bVar) {
        k.b("SignUpEmailNumberFragment", "onEmailEvent: " + bVar.f7143b);
        int i = AnonymousClass10.f7299b[bVar.f7143b.ordinal()];
        if (i == 1) {
            a(this.au);
        } else if (i == 2) {
            this.au.a();
        } else {
            if (i != 3) {
                return;
            }
            this.au.b(b("Authentication_SignUp_Response_InvalidEmail", o.j.Authentication_SignUp_Response_InvalidEmail));
        }
    }

    /* JADX INFO: renamed from: com.roblox.client.signup.multiscreen.c.c$10, reason: invalid class name */
    static /* synthetic */ class AnonymousClass10 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f7298a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final /* synthetic */ int[] f7299b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        static final /* synthetic */ int[] f7300c;

        static {
            int[] iArr = new int[i.b.values().length];
            f7300c = iArr;
            try {
                iArr[i.b.SIGN_UP_SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f7300c[i.b.SIGN_UP_BIRTHDAY_INVALID.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f7300c[i.b.SIGN_UP_PASSWORD_INVALID.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f7300c[i.b.SIGN_UP_TOO_MANY_ACCOUNTS_LINKED_TO_EMAIL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f7300c[i.b.SIGN_UP_FLOOD_CHECKED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f7300c[i.b.CHALLENGE_SUCCESS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f7300c[i.b.CHALLENGE_FLOOD_CHECKED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f7300c[i.b.CHALLENGE_INVALID_DELIVERY_TARGET.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f7300c[i.b.CHALLENGE_INVALID_EMAIL_ADDRESS.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f7300c[i.b.CHALLENGE_TOO_MANY_ACCOUNTS_LINKED_TO_EMAIL.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f7300c[i.b.VERIFY_SUCCESS.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f7300c[i.b.VERIFY_FLOOD_CHECKED.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f7300c[i.b.VERIFY_INVALID_CODE.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f7300c[i.b.CAPTCHA.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f7300c[i.b.CAPTCHA_BEFORE_CODE_VERIFICATION.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f7300c[i.b.VERIFY_CHALLENGE_EXPIRED.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f7300c[i.b.VERIFY_INVALID_CHALLENGE.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f7300c[i.b.VERIFY_INVALID_TOKEN.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f7300c[i.b.VERIFY_EMPTY_REQUEST.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f7300c[i.b.VERIFY_UNKNOWN_ERROR.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f7300c[i.b.CHALLENGE_INVALID_TOKEN.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f7300c[i.b.CHALLENGE_INVALID_PHONE_NUMBER.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f7300c[i.b.CHALLENGE_EMPTY_REQUEST.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f7300c[i.b.CHALLENGE_INVALID_DELIVERY_METHOD.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f7300c[i.b.CHALLENGE_PHONE_NUMBER_ALREADY_LINKED.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f7300c[i.b.SIGN_UP_FAILED_TO_CREATE_USERNAME.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                f7300c[i.b.SIGN_UP_FAILED_TO_CREATE_USER.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                f7300c[i.b.SIGN_UP_VOUCHER_EXPIRED.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                f7300c[i.b.SIGN_UP_VOUCHER_INVALID.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                f7300c[i.b.SIGN_UP_PHONE_NUMBER_ALREADY_LINKED.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                f7300c[i.b.SIGN_UP_EMPTY_REQUEST.ordinal()] = 31;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                f7300c[i.b.SIGN_UP_INVALID_TOKEN.ordinal()] = 32;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                f7300c[i.b.UNKNOWN_ERROR.ordinal()] = 33;
            } catch (NoSuchFieldError unused33) {
            }
            int[] iArr2 = new int[b.a.values().length];
            f7299b = iArr2;
            try {
                iArr2[b.a.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                f7299b[b.a.EMPTY_EMAIL.ordinal()] = 2;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                f7299b[b.a.INVALID_EMAIL_FORMAT.ordinal()] = 3;
            } catch (NoSuchFieldError unused36) {
            }
            int[] iArr3 = new int[d.a.values().length];
            f7298a = iArr3;
            try {
                iArr3[d.a.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                f7298a[d.a.INVALID_RESPONSE.ordinal()] = 2;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                f7298a[d.a.EMPTY_PASSWORD.ordinal()] = 3;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                f7298a[d.a.EQUAL_TO_USERNAME.ordinal()] = 4;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                f7298a[d.a.TOO_SHORT.ordinal()] = 5;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                f7298a[d.a.UNKNOWN.ordinal()] = 6;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                f7298a[d.a.REQUIREMENTS_NOT_SATISFIED.ordinal()] = 7;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                f7298a[d.a.NOT_ALLOWED.ordinal()] = 8;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                f7298a[d.a.TOO_SIMPLE.ordinal()] = 9;
            } catch (NoSuchFieldError unused45) {
            }
            try {
                f7298a[d.a.INVALID_CHARS.ordinal()] = 10;
            } catch (NoSuchFieldError unused46) {
            }
            try {
                f7298a[d.a.EMPTY_USERNAME.ordinal()] = 11;
            } catch (NoSuchFieldError unused47) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.roblox.client.signup.multiscreen.a.i iVar) {
        k.c("SignUpEmailNumberFragment", "SignUp.Message: " + iVar.f7183a);
        switch (AnonymousClass10.f7300c[iVar.f7183a.ordinal()]) {
            case 1:
                this.aA.c(this.az.f(), this.az.c());
                return;
            case 2:
                c(b("Authentication_SignUp_Response_InvalidBirthday", o.j.Authentication_SignUp_Response_InvalidBirthday));
                aw();
                return;
            case 3:
                a(this.as, b("Authentication_SignUp_Response_PasswordInvalidCharacters", o.j.Authentication_SignUp_Response_PasswordInvalidCharacters));
                aw();
                return;
            case 4:
                a(this.au, b("Authentication_SignUp_Response_TooManyAccountsLinkedToEmail", o.j.Authentication_SignUp_Response_TooManyAccountsLinkedToEmail));
                aw();
                return;
            case 5:
                ay();
                aw();
                return;
            case 6:
                a(this.au);
                d(this.az.f());
                return;
            case 7:
                ay();
                aw();
                return;
            case 8:
                a(this.au, b("Authentication_SignUp_Response_InvalidEmail", o.j.Authentication_SignUp_Response_InvalidEmail));
                aw();
                return;
            case 9:
                a(this.au, b("Authentication_SignUp_Response_InvalidEmail", o.j.Authentication_SignUp_Response_InvalidEmail));
                aw();
                return;
            case 10:
                a(this.au, b("Authentication_SignUp_Response_TooManyAccountsLinkedToEmail", o.j.Authentication_SignUp_Response_TooManyAccountsLinkedToEmail));
                aw();
                return;
            case 11:
                au();
                return;
            case 12:
                ax();
                ay();
                return;
            case 13:
                e(b("Authentication_SignUp_Response_PhoneNumberAlreadyLinked", o.j.Authentication_SignUp_Response_InvalidCode));
                return;
            case 14:
            case 15:
                this.aA.x();
                return;
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
                ax();
                break;
        }
        d(o.j.CommonUI_Messages_Response_SystemErrorTryLater);
        aw();
    }

    public void aq() {
        if (ap()) {
            return;
        }
        this.az.c("submit");
        k.c("SignUpEmailNumberFragment", "onSignUpClicked");
        this.aw.a(RbxProgressButton.b.SHOW_PROGRESS, o.j.CommonUI_Messages_Action_Validating);
        av();
        final Handler handler = new Handler(Looper.getMainLooper());
        final Context contextP = p();
        x.b(this.ay);
        handler.postDelayed(new Runnable() { // from class: com.roblox.client.signup.multiscreen.c.c.7
            @Override // java.lang.Runnable
            public void run() {
                boolean z;
                boolean z2 = true;
                if (c.this.au.getText().equals("")) {
                    c cVar = c.this;
                    cVar.a(cVar.au, c.this.b("Authentication_SignUp_Response_PleaseEnterAnEmail", o.j.Authentication_SignUp_Response_PleaseEnterAnEmail));
                    z = true;
                } else {
                    z = false;
                }
                if (c.this.at.getText().toString().equals("")) {
                    c cVar2 = c.this;
                    cVar2.a(cVar2.as, c.this.b("Authentication_SignUp_Response_PleaseEnterPassword", o.j.Authentication_SignUp_Response_PleaseEnterPassword));
                } else {
                    z2 = z;
                }
                if (z2 || !c.this.az.j()) {
                    c.this.aw();
                } else {
                    handler.postDelayed(new Runnable() { // from class: com.roblox.client.signup.multiscreen.c.c.7.1
                        @Override // java.lang.Runnable
                        public void run() {
                            c.this.aw.a(RbxProgressButton.b.SHOW_PROGRESS, com.roblox.client.locale.a.a(contextP, "Authentication_SignUp_Response_RegisteringWord", o.j.Authentication_SignUp_Response_RegisteringWord));
                            c.this.az.k();
                        }
                    }, 500L);
                }
            }
        }, 500L);
    }

    private void as() {
        k.c("SignUpEmailNumberFragment", "signUpAfterCaptcha.");
        this.aw.a(RbxProgressButton.b.SHOW_PROGRESS, o.j.CommonUI_Messages_Action_Validating);
        av();
        final Handler handler = new Handler(Looper.getMainLooper());
        final Context contextP = p();
        x.b(this.ay);
        handler.postDelayed(new Runnable() { // from class: com.roblox.client.signup.multiscreen.c.c.8
            @Override // java.lang.Runnable
            public void run() {
                boolean z;
                boolean z2 = true;
                if (c.this.au.getText().equals("")) {
                    c cVar = c.this;
                    cVar.a(cVar.au, c.this.b("Authentication_SignUp_Response_PleaseEnterAnEmail", o.j.Authentication_SignUp_Response_PleaseEnterAnEmail));
                    z = true;
                } else {
                    z = false;
                }
                if (c.this.at.getText().toString().equals("")) {
                    c cVar2 = c.this;
                    cVar2.a(cVar2.as, c.this.b("Authentication_SignUp_Response_PleaseEnterPassword", o.j.Authentication_SignUp_Response_PleaseEnterPassword));
                } else {
                    z2 = z;
                }
                if (z2 || !c.this.az.j()) {
                    c.this.aw();
                } else {
                    handler.postDelayed(new Runnable() { // from class: com.roblox.client.signup.multiscreen.c.c.8.1
                        @Override // java.lang.Runnable
                        public void run() {
                            c.this.aw.a(RbxProgressButton.b.SHOW_PROGRESS, com.roblox.client.locale.a.a(contextP, "Authentication_SignUp_Response_RegisteringWord", o.j.Authentication_SignUp_Response_RegisteringWord));
                            c.this.az.l();
                        }
                    }, 500L);
                }
            }
        }, 500L);
    }

    private void d(String str) {
        k.c("SignUpEmailNumberFragment", "CredentialValue: " + str);
        b.a(2, str).a(u(), "CodeVerificationFragment");
    }

    private void e(String str) {
        Fragment fragmentAt = at();
        if (fragmentAt instanceof b) {
            ((b) fragmentAt).d(str);
        }
    }

    private Fragment at() {
        return u().a("CodeVerificationFragment");
    }

    private void au() {
        Fragment fragmentAt = at();
        if (fragmentAt instanceof b) {
            ((b) fragmentAt).aq();
        }
    }

    private void av() {
        this.as.b();
        this.au.b();
        this.ax.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aw() {
        Context contextP = p();
        if (contextP != null) {
            this.aw.a(RbxProgressButton.b.SHOW_BUTTON, com.roblox.client.locale.a.a(contextP, "Authentication_SignUp_Label_SignUp", o.j.Authentication_SignUp_Label_SignUp));
            this.au.c();
            this.as.c();
            this.ax.b();
        }
    }

    private void ax() {
        Fragment fragmentAt = at();
        if (fragmentAt instanceof b) {
            ((b) fragmentAt).ar();
        }
    }

    private void ay() {
        Context contextP = p();
        if (contextP != null) {
            new b.a(contextP).a(com.roblox.client.locale.a.a(contextP, "Authentication_2SV_Response_TooManyAttempts", o.j.Authentication_TwoStepVerification_Response_TooManyAttempts)).b(com.roblox.client.locale.a.a(contextP, "Authentication_2SV_Response_TooManyAttempts", o.j.Authentication_TwoStepVerification_Response_TooManyAttempts)).a(com.roblox.client.locale.a.a(contextP, "CommonUI_Features_Action_Ok", o.j.CommonUI_Features_Action_Ok), new DialogInterface.OnClickListener() { // from class: com.roblox.client.signup.multiscreen.c.c.9
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    dialogInterface.dismiss();
                }
            }).a(false).b().show();
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
        k.c("SignUpEmailNumberFragment", "callValidatePassword.");
        this.az.a(this.at.getText().toString(), this.av.getText().toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aA() {
        this.az.a(this.au.getText());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String b(String str, int i) {
        return com.roblox.client.locale.a.a(p(), str, i);
    }

    private void aB() {
        PendingIntent pendingIntentA;
        if (this.az.i() && (pendingIntentA = new com.roblox.client.signup.multiscreen.a().a(p(), com.roblox.client.signup.multiscreen.b.EMAIL)) != null) {
            try {
                a(pendingIntentA.getIntentSender(), 100, null, 0, 0, 0, null);
            } catch (IntentSender.SendIntentException e2) {
                k.e("SignUpEmailNumberFragment", "IntentException: " + e2.getMessage());
            }
        }
    }

    @Override // com.roblox.client.signup.multiscreen.c.e
    public void m(boolean z) {
        if (this.az.m()) {
            this.az.k();
        } else {
            as();
        }
    }

    @Override // com.roblox.client.signup.multiscreen.c.e
    public void ar() {
        aw();
    }

    @Override // com.roblox.client.signup.multiscreen.c.b.a
    public void p_() {
        aw();
    }

    @Override // com.roblox.client.signup.multiscreen.c.b.a
    public void q_() {
        au();
        this.az.k();
    }

    @Override // com.roblox.client.signup.multiscreen.c.b.a
    public void a_(String str) {
        this.az.b(str);
    }
}
