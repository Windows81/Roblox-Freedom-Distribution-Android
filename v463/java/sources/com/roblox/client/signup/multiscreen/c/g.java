package com.roblox.client.signup.multiscreen.c;

import android.content.Context;
import android.content.DialogInterface;
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
import androidx.lifecycle.w;
import com.roblox.client.ae.k;
import com.roblox.client.components.RbxEditText;
import com.roblox.client.components.RbxProgressButton;
import com.roblox.client.o;
import com.roblox.client.s;
import com.roblox.client.signup.UsernameSignUpEditText;
import com.roblox.client.signup.multiscreen.a.d;
import com.roblox.client.signup.multiscreen.a.g;
import com.roblox.client.signup.multiscreen.a.h;
import com.roblox.client.signup.multiscreen.b.h;
import com.roblox.client.signup.multiscreen.b.n;
import com.roblox.client.signup.multiscreen.b.q;
import com.roblox.client.signup.multiscreen.b.r;
import com.roblox.client.signup.multiscreen.b.v;
import com.roblox.client.signup.multiscreen.e.f;
import com.roblox.client.x;
import com.roblox.platform.i;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class g extends s implements e {
    private static b aE = new b() { // from class: com.roblox.client.signup.multiscreen.c.g.1
        @Override // com.roblox.client.signup.multiscreen.c.g.b
        public void b(String str, String str2) {
        }

        @Override // com.roblox.client.signup.multiscreen.c.g.b
        public com.roblox.client.signup.multiscreen.a.a r() {
            return null;
        }

        @Override // com.roblox.client.signup.multiscreen.c.g.b
        public void s() {
        }
    };
    private String aA;
    private String aB;
    private a aC;
    private com.roblox.client.signup.multiscreen.e.f aF;
    private RbxEditText as;
    private EditText at;
    private UsernameSignUpEditText au;
    private EditText av;
    private String ay;
    private String az;
    private RbxProgressButton aw = null;
    private View ax = null;
    private b aD = aE;
    private final Runnable aG = new Runnable() { // from class: com.roblox.client.signup.multiscreen.c.g.5
        @Override // java.lang.Runnable
        public void run() {
            g.this.at();
        }
    };
    private final Runnable aH = new Runnable() { // from class: com.roblox.client.signup.multiscreen.c.g.6
        @Override // java.lang.Runnable
        public void run() {
            g.this.au();
        }
    };

    public interface b {
        void b(String str, String str2);

        com.roblox.client.signup.multiscreen.a.a r();

        void s();
    }

    public static g aq() {
        return new g();
    }

    @Override // androidx.fragment.app.Fragment
    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(o.g.username_password_fragment, viewGroup, false);
        ((TextView) viewInflate.findViewById(o.f.fragment_sign_up_username_title)).setTypeface(null, 1);
        TextView textView = (TextView) viewInflate.findViewById(o.f.fragment_sign_up_agreement);
        com.roblox.client.ae.a.b.b(r(), textView);
        textView.setTextIsSelectable(false);
        UsernameSignUpEditText usernameSignUpEditText = (UsernameSignUpEditText) viewInflate.findViewById(o.f.fragment_sign_up_username);
        this.au = usernameSignUpEditText;
        EditText textBox = usernameSignUpEditText.getTextBox();
        this.av = textBox;
        textBox.setId(o.f.view_signup_username_field);
        this.au.getBottomLabel().setId(o.f.view_signup_username_bottom_label);
        this.au.c(b("Authentication_SignUp_Description_UsernameHint", o.j.Authentication_SignUp_Description_UsernameHint));
        this.au.setGenerateUsernameIconTouchListener(new com.roblox.client.signup.b() { // from class: com.roblox.client.signup.multiscreen.c.g.11
            @Override // com.roblox.client.signup.b
            public void a() {
                g.this.av();
            }
        });
        this.av.setImeOptions(5);
        this.av.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.roblox.client.signup.multiscreen.c.g.12
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView2, int i, KeyEvent keyEvent) {
                if (i != 5) {
                    return false;
                }
                g.this.as.requestFocus();
                return true;
            }
        });
        this.av.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.roblox.client.signup.multiscreen.c.g.13
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                g.this.aF.a("username", z);
            }
        });
        RbxEditText rbxEditText = (RbxEditText) viewInflate.findViewById(o.f.fragment_sign_up_username_password);
        this.as = rbxEditText;
        EditText textBox2 = rbxEditText.getTextBox();
        this.at = textBox2;
        textBox2.setId(o.f.view_signup_password_field);
        this.as.getBottomLabel().setId(o.f.view_signup_password_bottom_label);
        this.as.setRightDrawableClickListener(new View.OnClickListener() { // from class: com.roblox.client.signup.multiscreen.c.g.14
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (g.this.at.getTransformationMethod() == null) {
                    k.c("UsernamePasswordFragment", "transformation = null");
                    g.this.at.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, g.this.s().getDrawable(o.e.show_password), (Drawable) null);
                    g.this.at.setTransformationMethod(new PasswordTransformationMethod());
                    g.this.aF.a("passwordInvisible");
                    return;
                }
                k.c("UsernamePasswordFragment", "transformation not null");
                g.this.at.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, g.this.s().getDrawable(o.e.hide_password), (Drawable) null);
                g.this.at.setTransformationMethod(null);
                g.this.aF.a("passwordVisible");
            }
        });
        this.at.setImeOptions(6);
        this.at.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.roblox.client.signup.multiscreen.c.g.15
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView2, int i, KeyEvent keyEvent) {
                if (i != 6) {
                    return false;
                }
                g.this.at.clearFocus();
                x.b(g.this.ax);
                return true;
            }
        });
        this.as.setRbxFocusChangedListener(new com.roblox.client.components.f() { // from class: com.roblox.client.signup.multiscreen.c.g.16
            @Override // com.roblox.client.components.f
            public void a(View view, boolean z) {
                g.this.aF.a("password", z);
                if (TextUtils.isEmpty(g.this.as.getText())) {
                    if (z) {
                        g.this.as.c(g.this.b("Authentication_SignUp_Description_PasswordMinLength", o.j.Authentication_SignUp_Description_PasswordMinLength));
                    } else {
                        g.this.as.a();
                    }
                }
            }
        });
        RbxProgressButton rbxProgressButton = (RbxProgressButton) viewInflate.findViewById(o.f.fragment_sign_up_username_signup_button);
        this.aw = rbxProgressButton;
        rbxProgressButton.setOnRbxClickedListener(new com.roblox.client.components.d() { // from class: com.roblox.client.signup.multiscreen.c.g.17
            @Override // com.roblox.client.components.d
            public void a(View view) {
                g.this.n(true);
            }
        });
        this.ax = viewInflate;
        b(p());
        as();
        return viewInflate;
    }

    @Override // com.roblox.client.s, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void b(Bundle bundle) {
        super.b(bundle);
        k.c("UsernamePasswordFragment", "onCreate");
        com.roblox.client.signup.multiscreen.f fVar = new com.roblox.client.signup.multiscreen.f();
        com.roblox.client.signup.multiscreen.e.f fVar2 = (com.roblox.client.signup.multiscreen.e.f) w.a(this, new f.a(new n(fVar, new h()), new com.roblox.client.signup.multiscreen.b.x(fVar, new com.roblox.client.signup.multiscreen.b.s(com.roblox.client.s.f.b()), new com.roblox.client.http.h(), new v(i.a().g()), com.roblox.client.ad.c.a(), com.roblox.client.ad.b.a()), new r(fVar, new q(), com.roblox.abtesting.a.a(), com.roblox.client.s.h.a()), com.roblox.client.s.f.b())).a(com.roblox.client.signup.multiscreen.e.f.class);
        this.aF = fVar2;
        fVar2.b().a(this, new androidx.lifecycle.q<com.roblox.client.signup.multiscreen.a.d>() { // from class: com.roblox.client.signup.multiscreen.c.g.18
            @Override // androidx.lifecycle.q
            public void a(com.roblox.client.signup.multiscreen.a.d dVar) {
                g.this.a(dVar);
            }
        });
        this.aF.c().a(this, new androidx.lifecycle.q<com.roblox.client.signup.multiscreen.a.h>() { // from class: com.roblox.client.signup.multiscreen.c.g.2
            @Override // androidx.lifecycle.q
            public void a(com.roblox.client.signup.multiscreen.a.h hVar) {
                g.this.a(hVar);
            }
        });
        this.aF.d().a(this, new androidx.lifecycle.q<com.roblox.client.signup.multiscreen.a.g>() { // from class: com.roblox.client.signup.multiscreen.c.g.3
            @Override // androidx.lifecycle.q
            public void a(com.roblox.client.signup.multiscreen.a.g gVar) {
                g.this.a(gVar);
            }
        });
    }

    @Override // com.roblox.client.s, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void h() {
        super.h();
        this.aF.h();
    }

    @Override // com.roblox.client.s, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void i() {
        super.i();
        x.b(this.ax);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void a(Context context) {
        super.a(context);
        if (context instanceof b) {
            this.aD = (b) context;
            return;
        }
        k.b("UsernamePasswordFragment", "Parent activity does not implement OnFragmentInteractionListener!");
        throw new RuntimeException(context.toString() + " must implement OnFragmentInteractionListener.");
    }

    @Override // androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void f() {
        super.f();
        this.aD = aE;
    }

    public void n(boolean z) {
        if (z) {
            if (ap()) {
                return;
            } else {
                this.aF.i();
            }
        }
        k.c("UsernamePasswordFragment", "onSignUpClicked");
        this.aw.a(RbxProgressButton.b.SHOW_PROGRESS, o.j.CommonUI_Messages_Action_Validating);
        ax();
        final Handler handler = new Handler(Looper.getMainLooper());
        final Context contextP = p();
        x.b(this.ax);
        final com.roblox.client.signup.multiscreen.a.a aVarR = this.aD.r();
        handler.postDelayed(new Runnable() { // from class: com.roblox.client.signup.multiscreen.c.g.4
            @Override // java.lang.Runnable
            public void run() {
                boolean z2;
                boolean z3 = true;
                if (g.this.av.getText().toString().equals("")) {
                    g gVar = g.this;
                    gVar.a(gVar.au, g.this.b("Authentication_SignUp_Response_PleaseEnterUsername", o.j.Authentication_SignUp_Response_PleaseEnterUsername));
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (g.this.at.getText().toString().equals("")) {
                    g gVar2 = g.this;
                    gVar2.a(gVar2.as, g.this.b("Authentication_SignUp_Response_PleaseEnterPassword", o.j.Authentication_SignUp_Response_PleaseEnterPassword));
                } else {
                    z3 = z2;
                }
                if (z3 || !g.this.aF.g()) {
                    g.this.ay();
                } else {
                    handler.postDelayed(new Runnable() { // from class: com.roblox.client.signup.multiscreen.c.g.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            g.this.aw.a(RbxProgressButton.b.SHOW_PROGRESS, com.roblox.client.locale.a.a(contextP, "Authentication_SignUp_Response_RegisteringWord", o.j.Authentication_SignUp_Response_RegisteringWord));
                            g.this.aF.a(-1, aVarR, g.this.aF.f(), g.this.aF.e());
                        }
                    }, 1000L);
                }
            }
        }, 1000L);
    }

    private void as() {
        this.aC = new a(this.au);
        this.av.addTextChangedListener(new TextWatcher() { // from class: com.roblox.client.signup.multiscreen.c.g.7
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                g.this.au.removeCallbacks(g.this.aC);
                g.this.av.removeCallbacks(g.this.aG);
                g.this.av.postDelayed(g.this.aG, 500L);
            }
        });
        this.at.addTextChangedListener(new TextWatcher() { // from class: com.roblox.client.signup.multiscreen.c.g.8
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                k.c("UsernamePasswordFragment", "start: " + i + ". before: " + i2 + ". count: " + i3);
                if (i == 0 && i2 == 0 && i3 > 0) {
                    g.this.at.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, g.this.s().getDrawable(o.e.show_password), (Drawable) null);
                } else if (charSequence.length() == 0) {
                    g.this.at.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, (Drawable) null, (Drawable) null);
                    if (g.this.at.getTransformationMethod() == null) {
                        g.this.at.setTransformationMethod(new PasswordTransformationMethod());
                    }
                }
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                g.this.at.removeCallbacks(g.this.aH);
                g.this.at.postDelayed(g.this.aH, 500L);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void at() {
        this.aF.b(this.av.getText().toString(), this.aD.r());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void au() {
        k.c("UsernamePasswordFragment", "callValidatePassword.");
        this.aF.a(this.av.getText().toString(), this.at.getText().toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void av() {
        this.aF.j();
        this.au.f();
        this.aF.a(this.au.getText(), this.aD.r());
    }

    private void b(Context context) {
        this.ay = com.roblox.client.locale.a.a(context, "Authentication_SignUp_Response_UsernameContainsInvalidCharacters", o.j.Authentication_SignUp_Response_UsernameContainsInvalidCharacters);
        this.az = com.roblox.client.locale.a.a(context, "Authentication_SignUp_Response_UnexpectedErrorText", o.j.Authentication_SignUp_Response_UnexpectedErrorText);
        this.aA = com.roblox.client.locale.a.a(context, "Authentication_SignUp_Response_BadServerResponseError", o.j.Authentication_SignUp_Response_BadServerResponseError);
        this.aB = com.roblox.client.locale.a.a(context, "Authentication_SignUp_Response_Error", o.j.Authentication_SignUp_Response_Error);
    }

    private void d(String str) {
        b(o.j.CommonUI_Messages_Response_UnexpectedErrorFormatted, str);
    }

    private void aw() {
        Context contextP = p();
        new b.a(contextP).a(com.roblox.client.locale.a.a(contextP, "CommonUI_Messages_Response_TooManyAttemptsText", o.j.CommonUI_Messages_Response_TooManyAttemptsText)).b(com.roblox.client.locale.a.a(contextP, "Authentication_SignUp_Response_TooManyAccountsCreatedTryAgainLater", o.j.Authentication_SignUp_Response_TooManyAccountsCreatedTryAgainLater)).a(com.roblox.client.locale.a.a(contextP, "CommonUI_Features_Action_Ok", o.j.CommonUI_Features_Action_Ok), new DialogInterface.OnClickListener() { // from class: com.roblox.client.signup.multiscreen.c.g.9
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        }).a(false).b().show();
    }

    private void ax() {
        this.as.b();
        this.au.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ay() {
        this.aw.a(RbxProgressButton.b.SHOW_BUTTON, com.roblox.client.locale.a.a(p(), "Authentication_SignUp_Label_SignUp", o.j.Authentication_SignUp_Label_SignUp));
        this.au.c();
        this.as.c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String b(String str, int i) {
        return com.roblox.client.locale.a.a(p(), str, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(RbxEditText rbxEditText, String str) {
        rbxEditText.b(str);
    }

    private void a(RbxEditText rbxEditText, int i) {
        if (i != 0) {
            rbxEditText.a(i);
        } else {
            rbxEditText.a((String) null);
        }
    }

    private void b(RbxEditText rbxEditText, String str) {
        rbxEditText.a(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.roblox.client.signup.multiscreen.a.d dVar) {
        k.c("UsernamePasswordFragment", "onChanged: " + dVar);
        switch (AnonymousClass10.f7362a[dVar.f7154b.ordinal()]) {
            case 1:
                a(this.as, 0);
                break;
            case 2:
                c(this.aB);
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
                a(this.as, b("Authentication_SignUp_Response_PasswordUsernameRequired", o.j.Authentication_SignUp_Response_PasswordUsernameRequired));
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.roblox.client.signup.multiscreen.a.h hVar) {
        k.c("UsernamePasswordFragment", "onChanged: " + hVar);
        switch (AnonymousClass10.f7363b[hVar.f7177b.ordinal()]) {
            case 1:
                b(this.au, b("Authentication_SignUp_Response_LooksGreat", o.j.Authentication_SignUp_Response_LooksGreat));
                this.au.postDelayed(this.aC, 2000L);
                k.c("UsernamePasswordFragment", "showLooksGoodIcon");
                this.au.i();
                break;
            case 2:
                a(this.au, b("Authentication_SignUp_Response_UsernameUnknownError", o.j.Authentication_SignUp_Response_UsernameUnknownError));
                this.au.j();
                break;
            case 3:
                a(this.au, b("Authentication_SignUp_Response_UsernameExplicit", o.j.Authentication_SignUp_Response_UsernameExplicit));
                this.au.j();
                break;
            case 4:
                this.au.c(b("Authentication_SignUp_Description_UsernameHint", o.j.Authentication_SignUp_Description_UsernameHint));
                this.au.k();
                break;
            case 5:
                a(this.au, b("Authentication_SignUp_Response_UsernameAlreadyInUse", o.j.Authentication_SignUp_Response_UsernameAlreadyInUse));
                this.au.h();
                break;
            case 6:
                a(this.au, b("Authentication_SignUp_Response_UsernameInvalidLength", o.j.Authentication_SignUp_Response_UsernameInvalidLength));
                this.au.j();
                break;
            case 7:
                a(this.au, b("Authentication_SignUp_Response_UsernameInvalidFirstOrLastCharacter", o.j.Authentication_SignUp_Response_UsernameInvalidFirstOrLastCharacter));
                this.au.j();
                break;
            case 8:
                a(this.au, b("Authentication_SignUp_Response_UsernameTooManyUnderscores", o.j.Authentication_SignUp_Response_UsernameTooManyUnderscores));
                this.au.j();
                break;
            case 9:
                a(this.au, b("Authentication_SignUp_Response_UsernameCannotContainSpaces", o.j.Authentication_SignUp_Response_UsernameCannotContainSpaces));
                this.au.j();
                break;
            case 10:
                a(this.au, b("Authentication_SignUp_Response_PleaseEnterUsername", o.j.Authentication_SignUp_Response_PleaseEnterUsername));
                this.au.j();
                break;
            case 11:
                a(this.au, b("Authentication_SignUp_Response_UsernamePrivateInfo", o.j.Authentication_SignUp_Response_UsernamePrivateInfo));
                this.au.j();
                break;
            case 12:
                this.au.f();
                break;
            case 13:
                this.av.setText(hVar.f7176a);
                this.av.setSelection(hVar.f7176a.length());
                break;
            case 14:
                c(b("Authentication_SignUp_Response_SignUpErrorGeneratingUsername", o.j.Authentication_SignUp_Response_SignUpErrorGeneratingUsername));
                this.av.setText(hVar.f7176a);
                this.av.setSelection(hVar.f7176a.length());
                break;
            case 15:
                c(this.aB);
                this.au.k();
                break;
            case 16:
                a(this.au, b("Authentication_SignUp_Response_UsernameInvalidCharacters", o.j.Authentication_SignUp_Response_UsernameInvalidCharacters));
                this.au.j();
                break;
            case 17:
                a(this.au, b("Authentication_SignUp_Response_BirthdayMustBeSetFirst", o.j.Authentication_SignUp_Response_BirthdayMustBeSetFirst));
                this.au.j();
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.roblox.client.signup.multiscreen.a.g gVar) {
        k.c("UsernamePasswordFragment", "onSignUpEvent: " + gVar);
        switch (AnonymousClass10.f7364c[gVar.f7170a.ordinal()]) {
            case 1:
                this.aD.b(this.aF.f(), this.aF.e());
                break;
            case 2:
                az();
                break;
            case 3:
                d(this.az);
                break;
            case 4:
                a(this.au, b("Authentication_SignUp_Response_UsernameAlreadyInUse", o.j.Authentication_SignUp_Response_UsernameAlreadyInUse));
                break;
            case 5:
                a(this.au, this.ay);
                break;
            case 6:
                a(this.au, b("Authentication_SignUp_Response_UsernameCannotContainSpaces", o.j.Authentication_SignUp_Response_UsernameCannotContainSpaces));
                break;
            case 7:
                a(this.au, b("Authentication_SignUp_Response_UsernameInvalid", o.j.Authentication_SignUp_Response_UsernameInvalid));
                break;
            case 8:
                a(this.as, b("Authentication_SignUp_Response_PasswordRequirements", o.j.Authentication_SignUp_Response_PasswordRequirements));
                break;
            case 9:
                d(this.aA);
                break;
            case 10:
                a(this.as, b("Authentication_SignUp_Response_PasswordMatchesUsername", o.j.Authentication_SignUp_Response_PasswordMatchesUsername));
                break;
            case 11:
                a(this.as, b("Authentication_SignUp_Response_PasswordComplexity", o.j.Authentication_SignUp_Response_PasswordComplexity));
                break;
            case 12:
                aw();
                break;
        }
        if (gVar.f7170a != g.a.CAPTCHA) {
            ay();
        }
    }

    /* JADX INFO: renamed from: com.roblox.client.signup.multiscreen.c.g$10, reason: invalid class name */
    static /* synthetic */ class AnonymousClass10 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f7362a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final /* synthetic */ int[] f7363b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        static final /* synthetic */ int[] f7364c;

        static {
            int[] iArr = new int[g.a.values().length];
            f7364c = iArr;
            try {
                iArr[g.a.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f7364c[g.a.CAPTCHA.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f7364c[g.a.UNEXPECTED_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f7364c[g.a.USERNAME_IN_USE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f7364c[g.a.USERNAME_INVALID_CHARS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f7364c[g.a.USERNAME_CONTAINS_SPACES.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f7364c[g.a.USERNAME_INVALID.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f7364c[g.a.PASSWORD_INVALID_REQUIREMENTS.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f7364c[g.a.SERVER_ERROR.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f7364c[g.a.PASSWORD_EQ_USERNAME.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f7364c[g.a.PASSWORD_TOO_SIMPLE.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f7364c[g.a.FLOOD_CHECKED.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            int[] iArr2 = new int[h.a.values().length];
            f7363b = iArr2;
            try {
                iArr2[h.a.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f7363b[h.a.UNKNOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f7363b[h.a.NOT_ALLOWED.ordinal()] = 3;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f7363b[h.a.EMPTY_USERNAME.ordinal()] = 4;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f7363b[h.a.TAKEN.ordinal()] = 5;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f7363b[h.a.INVALID_LENGTH.ordinal()] = 6;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f7363b[h.a.INVALID_START_CHAR.ordinal()] = 7;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f7363b[h.a.MORE_THAT_ONE_UNDERSCORE.ordinal()] = 8;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f7363b[h.a.CONTAINS_SPACES.ordinal()] = 9;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f7363b[h.a.NULL.ordinal()] = 10;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f7363b[h.a.PRIVATE_INFO.ordinal()] = 11;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f7363b[h.a.CHECKING.ordinal()] = 12;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f7363b[h.a.NEW_SUGGESTION.ordinal()] = 13;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f7363b[h.a.SUGGESTION_ERROR.ordinal()] = 14;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                f7363b[h.a.INVALID_RESPONSE.ordinal()] = 15;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                f7363b[h.a.INVALID_CHARS.ordinal()] = 16;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                f7363b[h.a.BIRTHDAY_REQUIRED.ordinal()] = 17;
            } catch (NoSuchFieldError unused29) {
            }
            int[] iArr3 = new int[d.a.values().length];
            f7362a = iArr3;
            try {
                iArr3[d.a.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                f7362a[d.a.INVALID_RESPONSE.ordinal()] = 2;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                f7362a[d.a.EMPTY_PASSWORD.ordinal()] = 3;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                f7362a[d.a.EQUAL_TO_USERNAME.ordinal()] = 4;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                f7362a[d.a.TOO_SHORT.ordinal()] = 5;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                f7362a[d.a.UNKNOWN.ordinal()] = 6;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                f7362a[d.a.REQUIREMENTS_NOT_SATISFIED.ordinal()] = 7;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                f7362a[d.a.NOT_ALLOWED.ordinal()] = 8;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                f7362a[d.a.TOO_SIMPLE.ordinal()] = 9;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                f7362a[d.a.INVALID_CHARS.ordinal()] = 10;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                f7362a[d.a.EMPTY_USERNAME.ordinal()] = 11;
            } catch (NoSuchFieldError unused40) {
            }
        }
    }

    private void az() {
        this.aD.s();
    }

    @Override // com.roblox.client.signup.multiscreen.c.e
    public void m(boolean z) {
        n(z);
    }

    @Override // com.roblox.client.signup.multiscreen.c.e
    public void ar() {
        ay();
    }

    private static class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        WeakReference<RbxEditText> f7385a;

        a(RbxEditText rbxEditText) {
            this.f7385a = new WeakReference<>(rbxEditText);
        }

        @Override // java.lang.Runnable
        public void run() {
            RbxEditText rbxEditText = this.f7385a.get();
            if (rbxEditText != null) {
                rbxEditText.a("");
            }
        }
    }
}
