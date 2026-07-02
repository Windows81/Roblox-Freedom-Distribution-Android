package com.roblox.client.login.mvp;

import android.R;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.roblox.client.RobloxSettings;
import com.roblox.client.components.RbxButton;
import com.roblox.client.components.RbxEditText;
import com.roblox.client.components.RbxProgressButton;
import com.roblox.client.i;
import com.roblox.client.l.g;
import com.roblox.client.p;

/* JADX INFO: loaded from: classes.dex */
public class a extends g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private EditText f7457b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private EditText f7458c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private RbxEditText f7459d;
    private RbxEditText e;
    private RbxProgressButton f;
    private View g;
    private InterfaceC0121a h;
    private boolean i;
    private boolean j;

    /* JADX INFO: renamed from: com.roblox.client.login.mvp.a$a, reason: collision with other inner class name */
    public interface InterfaceC0121a {
        void a(String str, String str2);

        void m();

        void n();

        void v();
    }

    public static a a() {
        return new a();
    }

    @Override // com.roblox.client.l.g, com.roblox.client.m, android.support.v4.app.g, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!RobloxSettings.isPhone()) {
            setStyle(1, getTheme());
        } else {
            setStyle(0, R.style.Theme.Black.NoTitleBar.Fullscreen);
        }
    }

    @Override // com.roblox.client.l.g, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate;
        if (com.roblox.abtesting.a.a().i()) {
            viewInflate = layoutInflater.inflate(com.roblox.client.R.layout.fragment_new_login, viewGroup, false);
        } else {
            int i = RobloxSettings.isPhone() ? com.roblox.client.R.layout.fragment_login_card_phone : com.roblox.client.R.layout.fragment_login_card_tablet;
            View viewInflate2 = layoutInflater.inflate(com.roblox.client.R.layout.fragment_login_new, viewGroup, false);
            layoutInflater.inflate(com.roblox.client.R.layout.fragment_login_card_common, (LinearLayout) layoutInflater.inflate(i, (LinearLayout) viewInflate2.findViewById(com.roblox.client.R.id.fragment_login_swap_container)).findViewById(com.roblox.client.R.id.fragment_login_card_inner_container));
            ((LinearLayout) viewInflate2.findViewById(com.roblox.client.R.id.fragment_login_background)).setOnClickListener(null);
            viewInflate = viewInflate2;
        }
        this.f7459d = (RbxEditText) viewInflate.findViewById(com.roblox.client.R.id.fragment_login_username);
        this.f7457b = this.f7459d.getTextBox();
        this.f7457b.setId(com.roblox.client.R.id.view_login_username_field);
        this.f7459d.getBottomLabel().setId(com.roblox.client.R.id.view_login_username_bottom_label);
        if (com.roblox.client.b.bL() && com.roblox.client.b.bM()) {
            this.f7457b.setInputType(32);
            this.f7457b.setHint(com.roblox.client.R.string.Authentication_Login_Label_UsernameEmailPhone);
        } else if (com.roblox.client.b.bM()) {
            this.f7457b.setInputType(32);
            this.f7457b.setHint(com.roblox.client.R.string.Authentication_Login_Label_UsernameEmail);
        } else if (com.roblox.client.b.bL()) {
            this.f7457b.setHint(com.roblox.client.R.string.Authentication_Login_Label_UsernamePhone);
        }
        this.f7457b.setImeOptions(5);
        this.g = viewInflate;
        this.e = (RbxEditText) viewInflate.findViewById(com.roblox.client.R.id.fragment_login_password);
        this.f7458c = this.e.getTextBox();
        this.f7458c.setId(com.roblox.client.R.id.view_login_password_field);
        this.e.getBottomLabel().setId(com.roblox.client.R.id.view_login_password_bottom_label);
        this.f7458c.setImeOptions(6);
        this.f7458c.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.roblox.client.login.mvp.a.1
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                if (i2 != 2 && i2 != 6) {
                    return false;
                }
                a.this.f();
                return true;
            }
        });
        ((RbxButton) viewInflate.findViewById(com.roblox.client.R.id.fragment_login_btn_cancel)).setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.login.mvp.a.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                a.this.h.m();
            }
        });
        this.f = (RbxProgressButton) viewInflate.findViewById(com.roblox.client.R.id.fragment_login_btn_login);
        this.f.setOnRbxClickedListener(new com.roblox.client.components.g() { // from class: com.roblox.client.login.mvp.a.4
            @Override // com.roblox.client.components.g
            public void a(View view) {
                a.this.f();
            }
        });
        ((RbxButton) viewInflate.findViewById(com.roblox.client.R.id.fragment_login_btn_signup)).setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.login.mvp.a.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                p.a(a.this.getContext(), view);
                a.this.h.n();
            }
        });
        if (com.roblox.client.b.S()) {
            RbxButton rbxButton = (RbxButton) viewInflate.findViewById(com.roblox.client.R.id.fragment_login_btn_forgot_password);
            rbxButton.setVisibility(0);
            rbxButton.setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.login.mvp.a.6
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    a.this.h.v();
                }
            });
        }
        e();
        return viewInflate;
    }

    @Override // com.roblox.client.l.g, android.support.v4.app.g, android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        i.b("login");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.roblox.client.l.g, android.support.v4.app.g, android.support.v4.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        com.roblox.client.util.g.b("rbx.authlogin", "onAttach()");
        if (context instanceof InterfaceC0121a) {
            this.h = (InterfaceC0121a) context;
            return;
        }
        throw new RuntimeException(context.toString() + " must implement OnFragmentInteractionListener");
    }

    @Override // com.roblox.client.l.g, android.support.v4.app.g, android.support.v4.app.Fragment
    public void onDetach() {
        super.onDetach();
        com.roblox.client.util.g.b("rbx.authlogin", "onDetach()");
        this.h = null;
    }

    private void e() {
        this.f7457b.addTextChangedListener(new TextWatcher() { // from class: com.roblox.client.login.mvp.a.7
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (a.this.i) {
                    a.this.i = false;
                    a.this.f7459d.a();
                }
            }
        });
        this.f7458c.addTextChangedListener(new TextWatcher() { // from class: com.roblox.client.login.mvp.a.8
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (a.this.j) {
                    a.this.j = false;
                    a.this.e.a();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        com.roblox.client.util.g.b("rbx.authlogin", "onLoginButtonClick: ENTER");
        if (!alertIfNetworkNotConnected()) {
            this.f7457b.clearFocus();
            this.f7458c.clearFocus();
            this.f.a(RbxProgressButton.b.SHOW_PROGRESS, com.roblox.client.R.string.CommonUI_Messages_Action_Validating);
            p.b(this.g);
            h();
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.roblox.client.login.mvp.a.9
                @Override // java.lang.Runnable
                public void run() {
                    i.b("login", "submit");
                    String string = a.this.f7457b.getText().toString();
                    if (string.isEmpty()) {
                        a.this.f7459d.a(com.roblox.client.R.string.Authentication_Login_Response_PleaseEnterUsername);
                        a.this.i = true;
                    } else {
                        a.this.f7459d.a();
                    }
                    String string2 = a.this.f7458c.getText().toString();
                    if (string2.isEmpty()) {
                        a.this.e.a(com.roblox.client.R.string.Authentication_Login_Response_PleaseEnterPassword);
                        a.this.j = true;
                        a.this.f7458c.requestFocus();
                        p.a(a.this.g, a.this.f7458c);
                    } else {
                        a.this.e.a();
                    }
                    if (string.isEmpty() || string2.isEmpty()) {
                        a.this.i();
                    } else if (a.this.h != null) {
                        a.this.h.a(string, string2);
                    }
                }
            }, 500L);
        }
    }

    private void g() {
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.roblox.client.login.mvp.a.10
            @Override // java.lang.Runnable
            public void run() {
                a.this.f7457b.setText("");
                a.this.f7457b.requestFocus();
                p.a(a.this.g, a.this.f7457b);
            }
        }, 100L);
    }

    public void a(String str) {
        this.f7457b.setText(str);
    }

    public void b() {
        this.f.a(RbxProgressButton.b.SHOW_BUTTON);
        i();
    }

    private void h() {
        this.f7459d.b();
        this.e.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        this.f.a(RbxProgressButton.b.SHOW_BUTTON);
        this.f7459d.c();
        this.e.c();
    }

    public void c() {
        if (com.roblox.client.b.aH()) {
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.roblox.client.login.mvp.a.2
                @Override // java.lang.Runnable
                public void run() {
                    a.this.f7458c.setText("");
                    a.this.f7458c.requestFocus();
                    p.a(a.this.g, a.this.f7458c);
                }
            }, 100L);
        }
    }

    public void d() {
        this.f7457b.setInputType(524289);
        this.f7457b.setHint(com.roblox.client.R.string.Authentication_Login_Label_Username);
        g();
    }
}
