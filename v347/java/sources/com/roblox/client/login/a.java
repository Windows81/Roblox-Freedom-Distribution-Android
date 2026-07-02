package com.roblox.client.login;

import android.R;
import android.content.Context;
import android.content.DialogInterface;
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
import com.roblox.client.components.g;
import com.roblox.client.i;
import com.roblox.client.i.h;
import com.roblox.client.m;
import com.roblox.client.p;

/* JADX INFO: loaded from: classes.dex */
public class a extends m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private EditText f7406a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private EditText f7407b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private RbxEditText f7408c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private RbxEditText f7409d;
    private RbxProgressButton e;
    private View f;
    private InterfaceC0118a g;
    private boolean h;
    private boolean i;

    /* JADX INFO: renamed from: com.roblox.client.login.a$a, reason: collision with other inner class name */
    public interface InterfaceC0118a {
        void a(String str, String str2);

        void n();

        void v();

        void w();
    }

    public static a a() {
        return new a();
    }

    @Override // com.roblox.client.m, android.support.v4.app.g, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!RobloxSettings.isPhone()) {
            setStyle(1, getTheme());
        } else {
            setStyle(0, R.style.Theme.Black.NoTitleBar.Fullscreen);
        }
    }

    @Override // android.support.v4.app.Fragment
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
        this.f7408c = (RbxEditText) viewInflate.findViewById(com.roblox.client.R.id.fragment_login_username);
        this.f7406a = this.f7408c.getTextBox();
        this.f7406a.setId(com.roblox.client.R.id.view_login_username_field);
        this.f7408c.getBottomLabel().setId(com.roblox.client.R.id.view_login_username_bottom_label);
        this.f7406a.setImeOptions(5);
        this.f7406a.setText(com.roblox.client.q.d.a().f());
        this.f = viewInflate;
        this.f7409d = (RbxEditText) viewInflate.findViewById(com.roblox.client.R.id.fragment_login_password);
        this.f7407b = this.f7409d.getTextBox();
        this.f7407b.setId(com.roblox.client.R.id.view_login_password_field);
        this.f7409d.getBottomLabel().setId(com.roblox.client.R.id.view_login_password_bottom_label);
        this.f7407b.setImeOptions(6);
        this.f7407b.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.roblox.client.login.a.1
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                if (i2 != 2 && i2 != 6) {
                    return false;
                }
                a.this.e();
                return true;
            }
        });
        ((RbxButton) viewInflate.findViewById(com.roblox.client.R.id.fragment_login_btn_cancel)).setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.login.a.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (a.this.g != null) {
                    a.this.g.n();
                }
            }
        });
        this.e = (RbxProgressButton) viewInflate.findViewById(com.roblox.client.R.id.fragment_login_btn_login);
        this.e.setOnRbxClickedListener(new g() { // from class: com.roblox.client.login.a.3
            @Override // com.roblox.client.components.g
            public void a(View view) {
                a.this.e();
            }
        });
        ((RbxButton) viewInflate.findViewById(com.roblox.client.R.id.fragment_login_btn_signup)).setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.login.a.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                p.a(a.this.getContext(), view);
                if (a.this.g != null) {
                    a.this.g.v();
                }
            }
        });
        if (com.roblox.client.b.S()) {
            RbxButton rbxButton = (RbxButton) viewInflate.findViewById(com.roblox.client.R.id.fragment_login_btn_forgot_password);
            rbxButton.setVisibility(0);
            rbxButton.setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.login.a.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (a.this.g != null) {
                        a.this.g.w();
                    }
                }
            });
        }
        d();
        return viewInflate;
    }

    @Override // android.support.v4.app.g, android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        i.b("login");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.support.v4.app.g, android.support.v4.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        com.roblox.client.util.g.b("FragmentLogin", "onAttach()");
        if (context instanceof InterfaceC0118a) {
            this.g = (InterfaceC0118a) context;
            return;
        }
        throw new RuntimeException(context.toString() + " must implement OnFragmentInteractionListener");
    }

    @Override // android.support.v4.app.g, android.support.v4.app.Fragment
    public void onDetach() {
        super.onDetach();
        com.roblox.client.util.g.b("FragmentLogin", "onDetach()");
        this.g = null;
    }

    private void d() {
        this.f7406a.addTextChangedListener(new TextWatcher() { // from class: com.roblox.client.login.a.6
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (a.this.h) {
                    a.this.h = false;
                    a.this.f7408c.a();
                }
            }
        });
        this.f7407b.addTextChangedListener(new TextWatcher() { // from class: com.roblox.client.login.a.7
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
                    a.this.f7409d.a();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        com.roblox.client.util.g.b("FragmentLogin", "onLoginButtonClick: ENTER");
        if (!alertIfNetworkNotConnected()) {
            this.f7406a.clearFocus();
            this.f7407b.clearFocus();
            this.e.a(RbxProgressButton.b.SHOW_PROGRESS, com.roblox.client.R.string.CommonUI_Messages_Action_Validating);
            p.b(this.f);
            f();
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.roblox.client.login.a.8
                @Override // java.lang.Runnable
                public void run() {
                    i.b("login", "submit");
                    String string = a.this.f7406a.getText().toString();
                    if (string.isEmpty()) {
                        a.this.f7408c.a(com.roblox.client.R.string.Authentication_Login_Response_PleaseEnterUsername);
                        a.this.h = true;
                    } else {
                        a.this.f7408c.a();
                    }
                    String string2 = a.this.f7407b.getText().toString();
                    if (string2.isEmpty()) {
                        a.this.f7409d.a(com.roblox.client.R.string.Authentication_Login_Response_PleaseEnterPassword);
                        a.this.i = true;
                        a.this.f7407b.requestFocus();
                        p.a(a.this.f, a.this.f7407b);
                    } else {
                        a.this.f7409d.a();
                    }
                    if (string.isEmpty() || string2.isEmpty()) {
                        a.this.g();
                    } else if (a.this.g != null) {
                        a.this.g.a(string, string2);
                    }
                }
            }, 500L);
        }
    }

    @Override // android.support.v4.app.g, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        if (!h.a().d()) {
            i.b("login", "close");
        }
    }

    public void b() {
        this.e.a(RbxProgressButton.b.SHOW_BUTTON);
        g();
    }

    private void f() {
        this.f7408c.b();
        this.f7409d.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        this.e.a(RbxProgressButton.b.SHOW_BUTTON);
        this.f7408c.c();
        this.f7409d.c();
    }

    public void c() {
        if (com.roblox.client.b.aH()) {
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.roblox.client.login.a.9
                @Override // java.lang.Runnable
                public void run() {
                    a.this.f7407b.setText("");
                    a.this.f7407b.requestFocus();
                    p.a(a.this.f, a.this.f7407b);
                }
            }, 100L);
        }
    }
}
