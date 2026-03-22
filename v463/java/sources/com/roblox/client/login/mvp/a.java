package com.roblox.client.login.mvp;

import android.R;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.roblox.client.ae.k;
import com.roblox.client.components.RbxButton;
import com.roblox.client.components.RbxEditText;
import com.roblox.client.components.RbxProgressButton;
import com.roblox.client.components.RbxTextView;
import com.roblox.client.o;
import com.roblox.client.p;
import com.roblox.client.u;
import com.roblox.client.u.g;
import com.roblox.client.x;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a extends g {
    private RbxTextView aA;
    private RbxProgressButton aB;
    private RbxButton aC;
    private RbxButton aD;
    private RbxButton aE;
    private View aF;
    private boolean aG;
    private boolean aH;
    protected RbxEditText as;
    protected InterfaceC0159a at;
    private EditText av;
    private EditText aw;
    private RbxEditText ax;
    private RbxTextView ay;
    private RbxTextView az;

    /* JADX INFO: renamed from: com.roblox.client.login.mvp.a$a, reason: collision with other inner class name */
    public interface InterfaceC0159a {
        void c(String str, String str2);

        void w();

        void x();

        void y();

        void z();
    }

    public static a aq() {
        return new a();
    }

    @Override // com.roblox.client.u.g, com.roblox.client.s, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void b(Bundle bundle) {
        super.b(bundle);
        if (!u.j()) {
            a(1, d());
        } else {
            a(0, R.style.Theme.Black.NoTitleBar.Fullscreen);
        }
    }

    @Override // com.roblox.client.u.g, androidx.fragment.app.Fragment
    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate;
        Context contextP = p();
        if (com.roblox.abtesting.a.a().j()) {
            viewInflate = layoutInflater.inflate(o.g.fragment_new_login, viewGroup, false);
            this.ay = (RbxTextView) viewInflate.findViewById(o.f.fragment_login_textView_DontHaveAct);
            this.aC = (RbxButton) viewInflate.findViewById(o.f.fragment_login_btn_cancel);
            this.ay.setText(com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_Login_Label_DontHaveAnAccount, new Object[0]));
        } else {
            int i = u.j() ? o.g.fragment_login_card_phone : o.g.fragment_login_card_tablet;
            View viewInflate2 = layoutInflater.inflate(o.g.fragment_login_new, viewGroup, false);
            layoutInflater.inflate(o.g.fragment_login_card_common, (LinearLayout) layoutInflater.inflate(i, (LinearLayout) viewInflate2.findViewById(o.f.fragment_login_swap_container)).findViewById(o.f.fragment_login_card_inner_container));
            ((LinearLayout) viewInflate2.findViewById(o.f.fragment_login_background)).setOnClickListener(null);
            this.aC = (RbxButton) viewInflate2.findViewById(o.f.fragment_login_btn_cancel);
            RbxTextView rbxTextView = (RbxTextView) viewInflate2.findViewById(o.f.fragment_login_notAMember_text);
            this.aA = rbxTextView;
            rbxTextView.setText(com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_Login_Label_NotAMember, new Object[0]));
            this.aC.setText(com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_Login_Action_Cancel, new Object[0]));
            viewInflate = viewInflate2;
        }
        this.az = (RbxTextView) viewInflate.findViewById(o.f.fragment_login_label_login);
        RbxEditText rbxEditText = (RbxEditText) viewInflate.findViewById(o.f.fragment_login_username);
        this.as = rbxEditText;
        EditText textBox = rbxEditText.getTextBox();
        this.av = textBox;
        textBox.setId(o.f.view_login_username_field);
        this.as.getBottomLabel().setId(o.f.view_login_username_bottom_label);
        this.aF = viewInflate;
        RbxEditText rbxEditText2 = (RbxEditText) viewInflate.findViewById(o.f.fragment_login_password);
        this.ax = rbxEditText2;
        EditText textBox2 = rbxEditText2.getTextBox();
        this.aw = textBox2;
        textBox2.setId(o.f.view_login_password_field);
        this.ax.getBottomLabel().setId(o.f.view_login_password_bottom_label);
        this.aw.setImeOptions(6);
        this.aw.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.roblox.client.login.mvp.a.1
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                if (i2 != 2 && i2 != 6) {
                    return false;
                }
                a.this.av();
                return true;
            }
        });
        this.aC.setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.login.mvp.a.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                a.this.at.w();
            }
        });
        RbxProgressButton rbxProgressButton = (RbxProgressButton) viewInflate.findViewById(o.f.fragment_login_btn_login);
        this.aB = rbxProgressButton;
        rbxProgressButton.setOnRbxClickedListener(new com.roblox.client.components.d() { // from class: com.roblox.client.login.mvp.a.6
            @Override // com.roblox.client.components.d
            public void a(View view) {
                a.this.av();
            }
        });
        this.aD = (RbxButton) viewInflate.findViewById(o.f.fragment_login_btn_signup);
        this.az.setText(com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_Login_Label_Login_Uppercase, new Object[0]));
        this.aB.setText(com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_Login_Action_LogInCapitalized, new Object[0]));
        this.aC.setContentDescription(com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_Login_Description_CancelButtonContentDesc, new Object[0]));
        this.aB.setContentDescription(com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_Login_Description_LoginButtonContentDesc, new Object[0]));
        this.ax.setContentDescription(com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_Login_Description_PasswordContentDescription, new Object[0]));
        this.ax.setHintText(com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_Login_Label_Password, new Object[0]));
        this.as.setContentDescription(com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_Login_Description_UsernameContentDescription, new Object[0]));
        this.as.setHintText(com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_Login_Label_Username, new Object[0]));
        this.aD.setText(com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_Login_Action_SignUp, new Object[0]));
        if (com.roblox.client.b.aN() && com.roblox.client.b.aO()) {
            this.av.setInputType(32);
            this.as.setHintText(com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_Login_Label_UsernameEmailPhone, new Object[0]));
        } else if (com.roblox.client.b.aO()) {
            this.av.setInputType(32);
            this.as.setHintText(com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_Login_Label_UsernameEmail, new Object[0]));
        } else if (com.roblox.client.b.aN()) {
            this.as.setHintText(com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_Login_Label_UsernamePhone, new Object[0]));
        }
        this.av.setImeOptions(5);
        this.aD.setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.login.mvp.a.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                x.a(a.this.p(), view);
                a.this.at.x();
            }
        });
        RbxButton rbxButton = (RbxButton) viewInflate.findViewById(o.f.fragment_login_btn_forgot_password);
        this.aE = rbxButton;
        rbxButton.setText(com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_Login_Action_ForgotPasswordOrUsernameQuestion, new Object[0]));
        this.aE.setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.login.mvp.a.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                a.this.at.y();
            }
        });
        this.av.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.roblox.client.login.mvp.a.9
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                a.this.a("username", z);
            }
        });
        this.aw.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.roblox.client.login.mvp.a.10
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                a.this.a("password", z);
            }
        });
        au();
        if (bundle == null) {
            this.at.z();
        }
        return viewInflate;
    }

    @Override // com.roblox.client.u.g, com.roblox.client.s, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void h() {
        super.h();
        p.b("login");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.roblox.client.u.g, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void a(Context context) {
        super.a(context);
        k.b("rbx.authlogin", "onAttach()");
        if (context instanceof InterfaceC0159a) {
            this.at = (InterfaceC0159a) context;
            return;
        }
        throw new RuntimeException(context.toString() + " must implement OnFragmentInteractionListener");
    }

    @Override // com.roblox.client.u.g, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void f() {
        super.f();
        k.b("rbx.authlogin", "onDetach()");
        this.at = null;
    }

    private void au() {
        this.av.addTextChangedListener(new TextWatcher() { // from class: com.roblox.client.login.mvp.a.11
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (a.this.aG) {
                    a.this.aG = false;
                    a.this.as.a();
                }
            }
        });
        this.aw.addTextChangedListener(new TextWatcher() { // from class: com.roblox.client.login.mvp.a.12
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (a.this.aH) {
                    a.this.aH = false;
                    a.this.ax.a();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void av() {
        k.b("rbx.authlogin", "onLoginButtonClick: ENTER");
        final Context contextP = p();
        if (ap() || contextP == null) {
            return;
        }
        this.av.clearFocus();
        this.aw.clearFocus();
        this.aB.a(RbxProgressButton.b.SHOW_PROGRESS, com.roblox.client.locale.a.a.a(contextP, o.j.CommonUI_Messages_Action_Validating, new Object[0]));
        x.b(this.aF);
        ax();
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.roblox.client.login.mvp.a.2
            @Override // java.lang.Runnable
            public void run() {
                p.a("login", "submit");
                String string = a.this.av.getText().toString();
                if (string.isEmpty()) {
                    a.this.as.b(com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_Login_Response_PleaseEnterUsername, new Object[0]));
                    a.this.aG = true;
                } else {
                    a.this.as.a();
                }
                String string2 = a.this.aw.getText().toString();
                if (string2.isEmpty()) {
                    a.this.ax.b(com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_Login_Response_PleaseEnterPassword, new Object[0]));
                    a.this.aH = true;
                    a.this.aw.requestFocus();
                    x.a(a.this.aF, a.this.aw);
                } else {
                    a.this.ax.a();
                }
                if (string.isEmpty() || string2.isEmpty()) {
                    a.this.ay();
                } else if (a.this.at != null) {
                    a.this.a(string, string2);
                }
            }
        }, 500L);
    }

    protected void a(String str, String str2) {
        this.at.c(str, str2);
    }

    private void aw() {
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.roblox.client.login.mvp.a.3
            @Override // java.lang.Runnable
            public void run() {
                a.this.av.setText("");
                a.this.av.requestFocus();
                x.a(a.this.aF, a.this.av);
            }
        }, 100L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, boolean z) {
        p.c("login", str, z ? "focus" : "offFocus");
    }

    public void d(String str) {
        if (TextUtils.isEmpty(this.av.getText().toString())) {
            this.av.setText(str);
        }
    }

    public void b(String str, String str2) {
        this.av.setText(str);
        this.aw.setText(str2);
    }

    public void ar() {
        this.aB.a(RbxProgressButton.b.SHOW_BUTTON);
        ay();
    }

    private void ax() {
        this.as.b();
        this.ax.b();
        this.aC.a();
        this.aD.a();
        this.aE.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ay() {
        this.aB.a(RbxProgressButton.b.SHOW_BUTTON, com.roblox.client.locale.a.a.a(p(), o.j.Authentication_Login_Action_LogInCapitalized, new Object[0]));
        this.as.c();
        this.ax.c();
        this.aC.b();
        this.aD.b();
        this.aE.b();
    }

    public void as() {
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.roblox.client.login.mvp.a.4
            @Override // java.lang.Runnable
            public void run() {
                a.this.aw.setText("");
                a.this.aw.requestFocus();
                x.a(a.this.aF, a.this.aw);
            }
        }, 100L);
    }

    public void at() {
        this.av.setInputType(524289);
        this.av.setHint(com.roblox.client.locale.a.a.a(p(), o.j.Authentication_Login_Label_Username, new Object[0]));
        aw();
    }
}
