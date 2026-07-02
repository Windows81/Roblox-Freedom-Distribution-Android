package com.roblox.client.signup;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v7.app.b;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.roblox.abtesting.a;
import com.roblox.client.R;
import com.roblox.client.ReCaptchaActivity;
import com.roblox.client.RobloxSettings;
import com.roblox.client.components.RbxBirthdayPicker;
import com.roblox.client.components.RbxButton;
import com.roblox.client.components.RbxCheckBox;
import com.roblox.client.components.RbxEditText;
import com.roblox.client.components.RbxGenderPicker;
import com.roblox.client.components.RbxLoadingEditText;
import com.roblox.client.components.RbxProgressButton;
import com.roblox.client.components.RbxTextView;
import com.roblox.client.m;
import com.roblox.client.p;
import com.roblox.client.signup.e;
import com.roblox.client.signup.g;
import com.roblox.client.util.n;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.net.URLEncoder;
import java.util.regex.Pattern;
import microsoft.aspnet.signalr.client.Constants;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class a extends m {
    private static b L = new b() { // from class: com.roblox.client.signup.a.1
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
    private long K;
    private e O;
    private RunnableC0129a P;
    private RunnableC0129a Q;
    private String R;
    private String S;
    private String T;
    private String U;
    private String V;
    private g q;
    private com.roblox.client.i.f r;
    private com.roblox.abtesting.a s;
    private RbxButton i = null;
    private UsernameSignUpEditText j = null;
    private EditText k = null;
    private RbxEditText l = null;
    private RbxTextView m = null;
    private RbxProgressButton n = null;
    private TextView o = null;
    private RbxButton p = null;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    EditText f7788a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    RbxEditText f7789b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    EditText f7790c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    RbxLoadingEditText f7791d = null;
    RbxGenderPicker e = null;
    RbxBirthdayPicker f = null;
    RbxCheckBox g = null;
    private String t = null;
    private String u = null;
    private String v = null;
    private String w = null;
    private int x = -1;
    private int y = -1;
    private int z = -1;
    private int A = 0;
    private boolean B = false;
    private d C = d.BLANK;
    private d D = d.BLANK;
    private d E = d.BLANK;
    private d F = d.VALID;
    private d G = d.INVALID;
    private d H = d.BLANK;
    private d I = d.BLANK;
    private View J = null;
    b h = L;
    private final int M = 500;
    private final int N = 2000;
    private e.a W = new c();

    interface b {
        void k();

        void l();

        void m();
    }

    private enum d {
        BLANK,
        VALID,
        INVALID
    }

    private enum f {
        USERNAME,
        PASSWORD
    }

    static a a() {
        return new a();
    }

    @Override // com.roblox.client.m, android.support.v4.app.g, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(1, getTheme());
        this.r = com.roblox.client.i.f.a();
        this.s = com.roblox.abtesting.a.a();
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_signup_new, viewGroup, false);
        layoutInflater.inflate(R.layout.fragment_sign_up_card_common_birthday_first, (LinearLayout) layoutInflater.inflate(R.layout.fragment_sign_up_card, (LinearLayout) viewInflate.findViewById(R.id.fragment_sign_up_swap_container)).findViewById(R.id.fragment_sign_up_card_inner_container));
        ((LinearLayout) viewInflate.findViewById(R.id.fragment_sign_up_background)).setOnClickListener(null);
        this.i = (RbxButton) viewInflate.findViewById(R.id.fragment_sign_up_cancel_btn);
        this.j = (UsernameSignUpEditText) viewInflate.findViewById(R.id.fragment_sign_up_username);
        this.f7788a = this.j.getTextBox();
        this.f7788a.setId(R.id.view_signup_username_field);
        this.j.getBottomLabel().setId(R.id.view_signup_username_bottom_label);
        this.f7789b = (RbxEditText) viewInflate.findViewById(R.id.fragment_sign_up_password);
        this.k = this.f7789b.getTextBox();
        this.k.setId(R.id.view_signup_password_field);
        this.f7789b.getBottomLabel().setId(R.id.view_signup_password_bottom_label);
        this.l = (RbxEditText) viewInflate.findViewById(R.id.fragment_sign_up_password_verify);
        this.f7790c = this.l.getTextBox();
        this.f7790c.setId(R.id.view_signup_password_verify_field);
        this.l.getBottomLabel().setId(R.id.view_signup_password_verify_bottom_label);
        this.e = (RbxGenderPicker) viewInflate.findViewById(R.id.fragment_sign_up_gender_picker);
        this.f = (RbxBirthdayPicker) viewInflate.findViewById(R.id.fragment_sign_up_birthday_picker);
        this.f7791d = (RbxLoadingEditText) viewInflate.findViewById(R.id.fragment_sign_up_email);
        this.g = (RbxCheckBox) viewInflate.findViewById(R.id.fragment_sign_up_agreement_check);
        this.m = (RbxTextView) viewInflate.findViewById(R.id.fragment_sign_up_terms_error);
        this.n = (RbxProgressButton) viewInflate.findViewById(R.id.fragment_sign_up_submit_btn);
        this.n.setVisibility(0);
        this.o = (TextView) viewInflate.findViewById(R.id.fragment_sign_up_agreement);
        this.p = (RbxButton) viewInflate.findViewById(R.id.fragment_sign_up_login_btn);
        this.J = viewInflate;
        if (RobloxSettings.isPhone()) {
            this.f.setLayoutParams(new LinearLayout.LayoutParams(-1, 0, 1.5f));
        }
        if (com.roblox.client.b.aZ()) {
            this.j.setGenerateUsernameIconTouchListener(new com.roblox.client.signup.c() { // from class: com.roblox.client.signup.a.12
                @Override // com.roblox.client.signup.c
                public void a() {
                    com.roblox.client.i.b("signup", "usernameSuggestion");
                    a.this.l();
                }
            });
        }
        if (this.s.b()) {
            this.f7791d.setVisibility(0);
            this.f7791d.b();
        }
        this.f7788a.setImeOptions(5);
        this.f7788a.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.roblox.client.signup.a.22
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                if (i != 5) {
                    return false;
                }
                a.this.f7789b.requestFocus();
                return true;
            }
        });
        this.f7788a.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.roblox.client.signup.a.23
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                a.this.a("username", z);
            }
        });
        this.k.setImeOptions(5);
        this.k.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.roblox.client.signup.a.24
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                if (i != 5) {
                    return false;
                }
                a.this.l.requestFocus();
                return true;
            }
        });
        this.f7789b.setRbxFocusChangedListener(new com.roblox.client.components.i() { // from class: com.roblox.client.signup.a.25
            @Override // com.roblox.client.components.i
            public void a(View view, boolean z) {
                a.this.a("password", z);
            }
        });
        this.f7790c.setImeOptions(6);
        this.f7790c.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.roblox.client.signup.a.26
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                if (i != 6) {
                    return false;
                }
                a.this.f7790c.clearFocus();
                p.b(a.this.J);
                return true;
            }
        });
        this.f7790c.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.roblox.client.signup.a.27
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                a.this.a("passwordVerify", z);
            }
        });
        EditText textBox = this.f7791d.getTextBox();
        textBox.setImeOptions(6);
        textBox.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.roblox.client.signup.a.28
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                if (i != 6) {
                    return false;
                }
                p.a(a.this.getContext(), a.this.J);
                return true;
            }
        });
        textBox.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.roblox.client.signup.a.2
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                a.this.a("email", z);
            }
        });
        e();
        this.e.setOnGenderButtonPressedListener(new RbxGenderPicker.a() { // from class: com.roblox.client.signup.a.3
            @Override // com.roblox.client.components.RbxGenderPicker.a
            public void a(RbxButton rbxButton) {
                a.this.a("gender");
                p.a(a.this.getContext(), a.this.J);
            }
        });
        this.f.setRbxDateChangedListener(new com.roblox.client.components.h() { // from class: com.roblox.client.signup.a.4
            @Override // com.roblox.client.components.h
            public void a(int i, int i2) {
                boolean zH = a.this.h();
                switch (i) {
                    case 0:
                        a.this.z = i2;
                        a.this.a("birthdayDay");
                        break;
                    case 1:
                        a.this.y = i2;
                        a.this.a("birthdayMonth");
                        break;
                    case 2:
                        a.this.a("birthdayYear");
                        a.this.x = i2;
                        break;
                }
                a.this.a(zH);
            }
        });
        this.p.setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.signup.a.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                p.a(a.this.getContext(), view);
                com.roblox.client.i.b("signup", "login");
                a.this.h.l();
            }
        });
        this.i.setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.signup.a.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                a.this.B = true;
                com.roblox.client.i.b("signup", "close");
                a.this.h.m();
            }
        });
        this.n.setOnRbxClickedListener(new com.roblox.client.components.g() { // from class: com.roblox.client.signup.a.7
            @Override // com.roblox.client.components.g
            public void a(View view) {
                a.this.b(true);
            }
        });
        com.roblox.client.util.a.b.b(getActivity(), this.o);
        this.o.setTextIsSelectable(false);
        com.roblox.client.i.b("signup");
        d();
        return viewInflate;
    }

    @Override // android.support.v4.app.g, android.support.v4.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.j.removeCallbacks(this.P);
        this.l.removeCallbacks(this.Q);
    }

    @Override // com.roblox.client.m, android.support.v4.app.g, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.q = new g(new com.roblox.client.http.h());
    }

    private void d() {
        this.R = getString(R.string.Authentication_SignUp_Response_UsernameContainsInvalidCharacters);
        this.S = getString(R.string.Authentication_SignUp_Response_UnexpectedErrorText);
        this.T = getString(R.string.Authentication_SignUp_Response_BadServerResponseError);
        this.U = getString(R.string.Authentication_SignUp_Response_ServerError);
        this.V = getString(R.string.Authentication_SignUp_Response_Error);
    }

    private void e() {
        final Runnable runnable = new Runnable() { // from class: com.roblox.client.signup.a.8
            @Override // java.lang.Runnable
            public void run() {
                if (!a.this.B) {
                    a.this.a(f.USERNAME);
                }
            }
        };
        final Runnable runnable2 = new Runnable() { // from class: com.roblox.client.signup.a.9
            @Override // java.lang.Runnable
            public void run() {
                if (!a.this.B) {
                    a.this.a(f.PASSWORD);
                }
            }
        };
        this.P = new RunnableC0129a(this.j);
        this.Q = new RunnableC0129a(this.l);
        this.f7788a.addTextChangedListener(new TextWatcher() { // from class: com.roblox.client.signup.a.10
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                a.this.C = d.INVALID;
                a.this.j.removeCallbacks(a.this.P);
                a.this.f7788a.removeCallbacks(runnable);
                a.this.f7788a.postDelayed(runnable, 500L);
            }
        });
        this.f7790c.addTextChangedListener(new TextWatcher() { // from class: com.roblox.client.signup.a.11
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (!a.this.B) {
                    a.this.f();
                }
            }
        });
        this.k.addTextChangedListener(new TextWatcher() { // from class: com.roblox.client.signup.a.13
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                a.this.D = d.INVALID;
                a.this.k.removeCallbacks(runnable2);
                a.this.k.postDelayed(runnable2, 500L);
            }
        });
        final Runnable runnable3 = new Runnable() { // from class: com.roblox.client.signup.a.14
            @Override // java.lang.Runnable
            public void run() {
                if (!a.this.B) {
                    a.this.j();
                }
            }
        };
        this.f7791d.getTextBox().addTextChangedListener(new TextWatcher() { // from class: com.roblox.client.signup.a.15
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                a.this.F = d.INVALID;
                a.this.f7791d.removeCallbacks(runnable3);
                a.this.f7791d.postDelayed(runnable3, 500L);
            }
        });
        this.g.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.roblox.client.signup.a.16
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                a.this.a("termsOfUse");
                a.this.k();
            }
        });
    }

    @Override // android.support.v4.app.g, android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        getActivity().getWindow().setSoftInputMode(32);
        com.roblox.client.i.b("signup");
    }

    @Override // android.support.v4.app.g, android.support.v4.app.Fragment
    public void onStop() {
        super.onStop();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.support.v4.app.g, android.support.v4.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (context instanceof b) {
            this.h = (b) context;
        } else {
            com.roblox.client.util.g.b("signup_window", "Parent activity does not implement FragmentSignUp.OnFragmentInteractionListener!");
            throw new RuntimeException(context.toString() + " must implement OnFragmentInteractionListener.");
        }
    }

    @Override // android.support.v4.app.g, android.support.v4.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.h = L;
        if (this.O != null) {
            this.O.cancel(true);
        }
    }

    public void a(boolean z) {
        if (h()) {
            this.f.b();
            a(this.z, this.y, this.x);
            String string = this.f7788a.getText().toString();
            this.f7788a.setText(string);
            this.f7788a.setSelection(string.length());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(RbxEditText rbxEditText, int i) {
        rbxEditText.a(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(RbxEditText rbxEditText, String str) {
        rbxEditText.a(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(RbxEditText rbxEditText, int i) {
        rbxEditText.b(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(RbxEditText rbxEditText, String str) {
        rbxEditText.b(str);
    }

    private void a(int i, int i2, int i3) {
        this.f7791d.setHintText(b(i, i2, i3) ? R.string.Authentication_SignUp_Label_EmailRequirementsUnder13 : R.string.Authentication_SignUp_Label_Email);
        this.f7791d.c();
    }

    private boolean b(int i, int i2, int i3) {
        return com.roblox.client.util.d.a(i, i2, i3) < 13;
    }

    public void b(boolean z) {
        if (z) {
            if (!alertIfNetworkNotConnected()) {
                com.roblox.client.i.b("signup", "submit");
            } else {
                return;
            }
        }
        g();
        if (this.G == d.VALID) {
            b();
            this.A = this.e.getValue();
            this.n.a(RbxProgressButton.b.SHOW_PROGRESS, R.string.CommonUI_Messages_Action_Validating);
            m();
            final Handler handler = new Handler(Looper.getMainLooper());
            handler.postDelayed(new Runnable() { // from class: com.roblox.client.signup.a.17
                @Override // java.lang.Runnable
                public void run() {
                    String str = "";
                    String str2 = "";
                    if (a.this.t.equals("")) {
                        str = "Empty";
                        str2 = "username";
                        a.this.a(a.this.j, R.string.Authentication_SignUp_Response_PleaseEnterUsername);
                        a.this.C = d.INVALID;
                    }
                    if (a.this.u.equals("")) {
                        str = "Empty";
                        str2 = "password";
                        a.this.a(a.this.f7789b, R.string.Authentication_SignUp_Response_PleaseEnterPassword);
                        a.this.D = d.INVALID;
                    }
                    if (a.this.v.equals("")) {
                        a.this.a(a.this.l, R.string.Authentication_SignUp_Response_VerifyPassword);
                        a.this.E = d.INVALID;
                    }
                    if (!str.isEmpty() && !str2.isEmpty()) {
                        com.roblox.client.i.a("signup", str2, str, true);
                    }
                    a.this.g();
                    a.this.i();
                    a.this.k();
                    if (a.this.C != d.VALID || a.this.G != d.VALID || a.this.D != d.VALID || a.this.E != d.VALID || a.this.H != d.VALID || a.this.I != d.VALID || a.this.F != d.VALID) {
                        a.this.n();
                    } else {
                        handler.postDelayed(new Runnable() { // from class: com.roblox.client.signup.a.17.1
                            @Override // java.lang.Runnable
                            public void run() {
                                a.this.n.a(RbxProgressButton.b.SHOW_PROGRESS, R.string.Authentication_SignUp_Response_RegisteringWord);
                                a.this.K = System.currentTimeMillis();
                                new com.roblox.client.signup.d(a.this.A, a.this.x, a.this.y, a.this.z, a.this.w, a.this.t, a.this.u, a.this.W).execute(new Void[0]);
                            }
                        }, 1000L);
                    }
                }
            }, 1000L);
        }
    }

    public void b() {
        this.t = this.f7788a.getText().toString();
        this.u = this.k.getText().toString();
        this.v = this.f7790c.getText().toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(f fVar) {
        android.support.v4.app.h activity = getActivity();
        if (activity != null) {
            b();
            String str = "";
            String str2 = "";
            switch (fVar) {
                case USERNAME:
                    this.C = d.INVALID;
                    str = "username";
                    if (!p.e(activity)) {
                        a(this.j, R.string.CommonUI_Messages_Response_ConnectionError);
                    } else {
                        if (this.t.isEmpty()) {
                            this.j.a();
                            str2 = "Empty";
                        } else if (this.t.length() < 3) {
                            a(this.j, R.string.Authentication_SignUp_Response_UsernameInvalidLength);
                            str2 = "TooShort";
                        } else if (this.t.length() > 20) {
                            a(this.j, R.string.Authentication_SignUp_Response_UsernameInvalidLength);
                            str2 = "TooLong";
                        } else if (!Pattern.compile("([A-Z]|[a-z]|[0-9]|_)*").matcher(this.t).matches()) {
                            a(this.j, R.string.Authentication_SignUp_Response_UsernameInvalidCharacters);
                            str2 = "InvalidCharacters";
                        } else if (this.t.charAt(0) == '_' || this.t.charAt(this.t.length() - 1) == '_') {
                            a(this.j, R.string.Authentication_SignUp_Response_UsernameInvalidFirstOrLastCharacter);
                            str2 = "InvalidFirstOrLastCharacter";
                        } else if (n.a(this.t, '_') > 1) {
                            a(this.j, R.string.Authentication_SignUp_Response_UsernameTooManyUnderscores);
                            str2 = "InvalidUsernameDoubleUnderscore";
                        } else if (!h()) {
                            a(this.j, R.string.Authentication_SignUp_Response_BirthdayMustBeSetFirst);
                            str2 = "BirthdayNotSet";
                        } else {
                            if (this.O != null) {
                                this.O.cancel(true);
                            }
                            this.O = new e(fVar);
                            this.O.execute(new Void[0]);
                            this.j.f();
                        }
                        if (!str2.isEmpty()) {
                            this.j.k();
                        }
                    }
                    break;
                case PASSWORD:
                    this.D = d.INVALID;
                    str = "password";
                    if (!p.e(activity)) {
                        a(this.f7789b, R.string.CommonUI_Messages_Response_ConnectionError);
                    } else if (this.u.isEmpty()) {
                        this.f7789b.a();
                        str2 = "Empty";
                    } else if (this.t.equals(this.u)) {
                        a(this.f7789b, R.string.Authentication_SignUp_Response_PasswordMatchesUsername);
                        str2 = "IsUsername";
                    } else if (this.u.length() < 8) {
                        a(this.f7789b, R.string.Authentication_SignUp_Response_SignUpPasswordTooShortError);
                        str2 = "TooShort";
                    } else {
                        f();
                        new e(fVar).execute(new Void[0]);
                    }
                    break;
            }
            if (!str2.isEmpty()) {
                com.roblox.client.i.a("signup", str, str2, true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        this.E = d.INVALID;
        b();
        String str = "";
        if (this.u.isEmpty()) {
            a(this.f7789b, R.string.Authentication_SignUp_Response_PleaseEnterPassword);
            str = "Empty";
        } else if (this.v.isEmpty()) {
            this.l.a();
        } else if (!this.v.equals(this.u)) {
            a(this.l, R.string.Authentication_SignUp_Response_PasswordMismatch);
            str = "PasswordMismatch";
        } else {
            this.E = d.VALID;
            b(this.l, R.string.Authentication_SignUp_Response_LooksGreat);
            this.l.postDelayed(this.Q, 2000L);
        }
        if (!str.isEmpty()) {
            this.l.removeCallbacks(this.Q);
            com.roblox.client.i.a("signup", "password", str, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        this.G = h() ? d.VALID : d.INVALID;
        if (this.G != d.VALID) {
            this.f.a();
            com.roblox.client.i.a("signup", "birthday", "incomplete", true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean h() {
        return (this.x == -1 || this.y == -1 || this.z == -1) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        this.H = this.A == 0 ? d.INVALID : d.VALID;
        if (this.H == d.INVALID) {
            this.e.a();
            com.roblox.client.i.a("signup", "gender", "not selected", true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        if (this.s.b()) {
            this.f7791d.f();
            this.w = this.f7791d.getText();
            this.q.a(this.w, new g.a() { // from class: com.roblox.client.signup.a.18
                @Override // com.roblox.client.signup.g.a
                public void a(boolean z) {
                    com.roblox.client.util.g.b("rbx.signup", "isEmailValid=" + z + ".");
                    if (a.this.getActivity() != null) {
                        a.this.F = z ? d.VALID : d.INVALID;
                        if (z) {
                            a.this.f7791d.b((String) null);
                            a.this.r.a("Android-AppSignup-Validation-EmailValid");
                        } else {
                            a.this.f7791d.a(R.string.Authentication_SignUp_Response_InvalidEmail);
                            a.this.r.a("Android-AppSignup-Validation-EmailInvalid");
                        }
                    }
                }
            });
            return;
        }
        this.F = d.VALID;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        if (!this.g.isChecked()) {
            this.m.setVisibility(0);
            this.I = d.INVALID;
        } else {
            this.m.setVisibility(4);
            this.I = d.VALID;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        String text = this.j.getText();
        this.j.f();
        try {
            this.q.a(URLEncoder.encode(text, Constants.UTF8_NAME), com.roblox.client.signup.e.a(this.y, this.z, this.x), new g.b() { // from class: com.roblox.client.signup.a.19
                @Override // com.roblox.client.signup.g.b
                public void a(boolean z, String str) {
                    com.roblox.client.util.g.b("rbx.signup", "isNewUsername=" + z + ". NewUsername=" + str + ".");
                    if (a.this.getActivity() != null) {
                        if (z && !TextUtils.isEmpty(str)) {
                            a.this.r.a("Android-AppSignup-UsernameGenerated");
                        } else {
                            str = a.this.f7788a.getText().toString();
                            a.this.alertOk(R.string.Authentication_SignUp_Response_SignUpErrorGeneratingUsername);
                            a.this.r.a("Android-AppSignup-UsernameNotGenerated");
                        }
                        a.this.f7788a.setText(str);
                        a.this.f7788a.setSelection(str.length());
                    }
                }
            });
        } catch (UnsupportedEncodingException e2) {
            b(this.R);
        }
    }

    private class e extends AsyncTask<Void, Void, Void> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        f f7833a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f7834b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        String f7835c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        String f7836d = null;
        JSONObject e = null;

        e(f fVar) {
            this.f7834b = null;
            this.f7835c = null;
            this.f7833a = fVar;
            String str = "";
            try {
                str = "username";
                this.f7834b = URLEncoder.encode(a.this.t, Constants.UTF8_NAME);
                try {
                    str = "password";
                    this.f7835c = URLEncoder.encode(a.this.u, Constants.UTF8_NAME);
                } catch (UnsupportedEncodingException e) {
                    a.this.a(a.this.f7789b, R.string.Authentication_SignUp_Response_PasswordInvalidCharacters);
                    com.roblox.client.b.c.a("SignUpPreValidation", a(), "EncodingError");
                    com.roblox.client.i.a("signup", str, "NotUTF8", true);
                }
            } catch (UnsupportedEncodingException e2) {
                a.this.a(a.this.j, R.string.Authentication_SignUp_Response_UsernameInvalidCharacters);
                com.roblox.client.b.c.a("SignUpPreValidation", a(), "EncodingError");
                com.roblox.client.i.a("signup", str, "NotUTF8", true);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void doInBackground(Void... voidArr) {
            String str = this.f7833a == f.USERNAME ? "username" : "password";
            String str2 = "";
            if (!isCancelled()) {
                switch (this.f7833a) {
                    case USERNAME:
                        this.f7836d = com.roblox.client.http.b.a(RobloxSettings.usernameCheckUrlXBOX(this.f7834b, n.a(com.roblox.client.signup.e.a(a.this.y, a.this.z, a.this.x))), null, null);
                        break;
                    case PASSWORD:
                        this.f7836d = com.roblox.client.http.b.a(RobloxSettings.passwordCheckUrlXBOX(this.f7834b, this.f7835c), null, null);
                        break;
                }
                if (this.f7836d != null) {
                    try {
                        this.e = new JSONObject(this.f7836d);
                    } catch (JSONException e) {
                        str2 = "ValidationJSONException";
                    }
                } else {
                    str2 = "NoResponse";
                }
                if (!str2.isEmpty()) {
                    com.roblox.client.i.a("signup", str, str2, true);
                }
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(Void r9) {
            super.onPostExecute(r9);
            String strA = a();
            if (this.f7833a == f.USERNAME && this != a.this.O) {
                com.roblox.client.b.c.a("SignUpPreValidation", strA, "UsernameRace");
                return;
            }
            String str = this.f7833a == f.USERNAME ? "username" : "password";
            String strA2 = "";
            if (a.this.getActivity() == null) {
                com.roblox.client.i.a("signup", str, "WindowClosed", true);
                com.roblox.client.b.c.a("SignUpPreValidation", strA, "ActivityNull");
                return;
            }
            if (this.f7836d == null) {
                if (!a.this.alertIfNetworkNotConnected()) {
                    a.this.alertOk(R.string.Authentication_SignUp_Response_ErrorTryAgain);
                }
                com.roblox.client.b.c.a("SignUpPreValidation", strA, "ResponseNull");
                a.this.r.a(this.f7833a == f.USERNAME ? "Android-AppSignup-Validation-UsernameResponseNull" : "Android-AppSignup-Validation-PasswordResponseNull");
                strA2 = "NoResponse";
            } else if (this.e == null) {
                a.this.alertOk(R.string.Authentication_SignUp_Response_ErrorTryAgain);
                a.this.r.a(this.f7833a == f.USERNAME ? "Android-AppSignup-Validation-UsernameJsonNull" : "Android-AppSignup-Validation-PasswordJsonNull");
                com.roblox.client.b.c.a("SignUpPreValidation", strA, "JsonNull");
                strA2 = "JSONParseFailure";
            }
            if (!strA2.isEmpty()) {
                if (this.f7833a == f.USERNAME) {
                    a.this.C = d.VALID;
                    a.this.a(a.this.j, "");
                }
                com.roblox.client.i.a("signup", str, strA2, true);
                return;
            }
            switch (this.f7833a) {
                case USERNAME:
                    boolean zOptBoolean = this.e.optBoolean("IsValid", false);
                    String strOptString = this.e.optString("ErrorMessage", "");
                    int iOptInt = this.e.optInt("ErrorCode", -1);
                    com.roblox.client.util.g.a("rbx.signup", "isUsernameValid: " + zOptBoolean + ", errorMessage: " + strOptString + ", responseCode: " + iOptInt);
                    strA2 = b(iOptInt);
                    break;
                case PASSWORD:
                    com.roblox.client.util.g.a("rbx.signup", " ValidPasswordApiResponse - isPasswordValid: " + this.e.optBoolean("IsValid", false) + ", errorMessage: " + this.e.optString("ErrorMessage", ""));
                    strA2 = a(this.e.optInt("ErrorCode", -1));
                    break;
            }
            if (strA2.isEmpty()) {
                com.roblox.client.i.a("signup", str, true);
            } else {
                com.roblox.client.i.a("signup", str, strA2, true);
            }
        }

        private String a(int i) {
            String str;
            String str2 = "";
            switch (i) {
                case 0:
                    a.this.D = d.VALID;
                    a.this.b(a.this.f7789b, (String) null);
                    str = "Android-AppSignup-Validation-PasswordSuccess";
                    break;
                case 1:
                    a.this.D = d.INVALID;
                    a.this.a(a.this.f7789b, R.string.Authentication_SignUp_Response_PasswordVipLength);
                    str2 = "PasswordVipLength";
                    str = "Android-AppSignup-Validation-PasswordRequirementsNotSatisfied";
                    break;
                case 2:
                    a.this.D = d.INVALID;
                    a.this.a(a.this.f7789b, R.string.Authentication_SignUp_Response_SignUpPasswordTooShortError);
                    str2 = "PasswordLengthShort";
                    str = "Android-AppSignup-Validation-PasswordLengthShort";
                    break;
                case 3:
                    a.this.D = d.INVALID;
                    a.this.a(a.this.f7789b, R.string.Authentication_SignUp_Response_PasswordMatchesUsername);
                    str2 = "PasswordMatchesUsername";
                    str = "Android-AppSignup-Validation-PasswordMatchesUsername";
                    break;
                case 4:
                    a.this.D = d.INVALID;
                    a.this.a(a.this.f7789b, R.string.Authentication_SignUp_Response_PasswordForbidden);
                    str2 = "PasswordForbidden";
                    str = "Android-AppSignup-Validation-PasswordForbidden";
                    break;
                case 5:
                    a.this.D = d.INVALID;
                    a.this.a(a.this.f7789b, R.string.Authentication_SignUp_Response_PasswordComplexity);
                    str2 = "PasswordDumb";
                    str = "Android-AppSignup-Validation-PasswordDumb";
                    break;
                default:
                    a.this.D = d.INVALID;
                    a.this.a(a.this.f7789b, R.string.Authentication_SignUp_Response_PasswordUnknownError);
                    str2 = "UnknownError";
                    str = "Android-AppSignup-Validation-PasswordError";
                    break;
            }
            a.this.r.a(str);
            com.roblox.client.util.g.a("rbx.signup", "handlePasswordValidationResponse(int responseCode): " + i + ", diagCounterName: " + str);
            return str2;
        }

        private String a() {
            return this.f7833a == f.USERNAME ? "Username" : "Password";
        }

        private String b(int i) {
            String str;
            String str2;
            String str3 = "";
            switch (i) {
                case 0:
                    a.this.C = d.VALID;
                    a.this.b(a.this.j, R.string.Authentication_SignUp_Response_LooksGreat);
                    a.this.j.postDelayed(a.this.P, 2000L);
                    a.this.j.i();
                    str = "Success";
                    str2 = "Android-AppSignup-Validation-UsernameSuccess";
                    break;
                case 1:
                    a.this.a(a.this.j, R.string.Authentication_SignUp_Response_UsernameAlreadyInUse);
                    a.this.j.h();
                    str = "Taken";
                    str2 = "Android-AppSignup-Validation-UsernameTaken";
                    str3 = "UsernameTaken";
                    break;
                case 2:
                    a.this.a(a.this.j, R.string.Authentication_SignUp_Response_UsernameExplicit);
                    a.this.j.j();
                    str = "Explicit";
                    str2 = "Android-AppSignup-Validation-UsernameExplicit";
                    str3 = "UsernameModerated";
                    break;
                case 3:
                    a.this.a(a.this.j, R.string.Authentication_SignUp_Response_UsernameInvalidLength);
                    a.this.j.j();
                    str = "InvalidLength";
                    str2 = "Android-AppSignup-Validation-UsernameInvalidLength";
                    str3 = "UsernameInvalidLength";
                    break;
                case 4:
                    a.this.a(a.this.j, R.string.Authentication_SignUp_Response_UsernameInvalidFirstOrLastCharacter);
                    a.this.j.j();
                    str = "StartingOrEndingWithUnderscore";
                    str2 = "Android-AppSignup-Validation-UsernameStartingOrEndingWithUnderscore";
                    str3 = "StartingOrEndingWithUnderscore";
                    break;
                case 5:
                    a.this.a(a.this.j, R.string.Authentication_SignUp_Response_UsernameTooManyUnderscores);
                    a.this.j.j();
                    str = "MoreThanOneUnderscore";
                    str2 = "Android-AppSignup-Validation-UsernameContainsMoreThanOneUnderscore";
                    str3 = "MoreThanOneUnderscore";
                    break;
                case 6:
                    a.this.a(a.this.j, R.string.Authentication_SignUp_Response_UsernameCannotContainSpaces);
                    a.this.j.j();
                    str = "ContainSpaces";
                    str2 = "Android-AppSignup-Validation-UsernameContainsSpaces";
                    str3 = "ContainSpaces";
                    break;
                case 7:
                    a.this.a(a.this.j, R.string.Authentication_SignUp_Response_UsernameContainsInvalidCharacters);
                    a.this.j.j();
                    str = "ContainInvalidCharacters";
                    str2 = "Android-AppSignup-Validation-UsernameContainsInvalidCharacters";
                    str3 = "ContainInvalidCharacters";
                    break;
                case 8:
                default:
                    a.this.a(a.this.j, R.string.Authentication_SignUp_Response_UsernameUnknownError);
                    a.this.j.j();
                    str = "UnknownError";
                    str2 = "Android-AppSignup-Validation-UsernameUnknownError";
                    str3 = "UnknownError";
                    break;
                case 9:
                    a.this.a(a.this.j, R.string.Authentication_SignUp_Response_PleaseEnterUsername);
                    a.this.j.j();
                    str = "UsernameIsNull";
                    str2 = "Android-AppSignup-Validation-UsernameIsNull";
                    str3 = "UsernameIsNull";
                    break;
                case 10:
                    a.this.a(a.this.j, R.string.Authentication_SignUp_Response_UsernamePrivateInfo);
                    a.this.j.j();
                    str = "ContainsPII";
                    str2 = "Android-AppSignup-Validation-UsernameContainsPII";
                    str3 = "ContainsPII";
                    break;
                case 11:
                    a.this.a(a.this.j, R.string.Authentication_SignUp_Response_UsernameUnknownError);
                    a.this.j.j();
                    str = "InvalidBirthDate";
                    str2 = "Android-AppSignup-Validation-UsernameHasInvalidBirthDate";
                    str3 = "InvalidBirthDate";
                    break;
            }
            com.roblox.client.b.c.a("SignUpPreValidation", "Username", str);
            a.this.r.a(str2);
            com.roblox.client.util.g.a("rbx.signup", "analyticsLabel: " + str + ", diagCounterName: " + str2);
            return str3;
        }
    }

    private class c implements e.a {
        private c() {
        }

        @Override // com.roblox.client.signup.e.a
        public void a(final j jVar) {
            final long j = jVar.f;
            a.this.s.b(j);
            a.this.s.a(new a.InterfaceC0093a() { // from class: com.roblox.client.signup.a.c.1
                @Override // com.roblox.abtesting.a.InterfaceC0093a
                public void a() {
                    c.this.a(jVar.f7875c, j);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(int i, long j) {
            com.roblox.client.i.h.a().a(a.this.t, j);
            a.this.h.k();
            com.roblox.client.i.f.d(i);
        }

        @Override // com.roblox.client.signup.e.a
        public void b(j jVar) {
            if (jVar == null) {
                a.this.b(a.this.S);
                jVar = new j();
                jVar.f7874b = "FailureUnknownError";
            } else if (jVar.f7873a.size() == 0 || jVar.f7873a.get(0) == null) {
                a.this.b(a.this.S);
                jVar.f7874b = "FailureUnknownError";
            } else {
                String str = jVar.f7873a.get(0);
                if (str.equals("UsernameTaken")) {
                    a.this.a(a.this.j, R.string.Authentication_SignUp_Response_UsernameAlreadyInUse);
                    jVar.f7874b = "FailureAlreadyTaken";
                } else if (str.equals("UsernameContainsInvalidCharacters")) {
                    a.this.a(a.this.j, R.string.Authentication_SignUp_Response_UsernameContainsInvalidCharacters);
                    jVar.f7874b = "FailureInvalidCharacters";
                } else if (str.equals("UsernameCannotContainSpaces")) {
                    a.this.a(a.this.j, R.string.Authentication_SignUp_Response_UsernameCannotContainSpaces);
                    jVar.f7874b = "FailureContainsSpaces";
                } else if (str.equals("UsernameInvalid")) {
                    a.this.a(a.this.j, R.string.Authentication_SignUp_Response_UsernameInvalid);
                    jVar.f7874b = "FailureInvalidUsername";
                } else if (str.equals("BirthdayInvalid")) {
                    a.this.f.a();
                    jVar.f7874b = "FailureInvalidBirthday";
                } else if (str.equals("GenderInvalid")) {
                    a.this.e.a();
                    jVar.f7874b = "FailureInvalidGender";
                } else if (str.equals("PasswordInvalid")) {
                    a.this.a(a.this.f7789b, R.string.Authentication_SignUp_Response_PasswordRequirements);
                    jVar.f7874b = "FailureInvalidPassword";
                } else if (str.equals("Captcha")) {
                    android.support.v4.app.h activity = a.this.getActivity();
                    if (activity != null) {
                        ReCaptchaActivity.a(activity, a.this, a.this.t, 2);
                    }
                    jVar.f7874b = "FailureAccountCreateFloodcheck";
                } else if (str.equals("StatusJsonError")) {
                    a.this.b(a.this.T);
                    jVar.f7874b = "FailureJSONParse";
                } else if (str.equals("StatusThrottled")) {
                    a.this.c();
                    com.roblox.client.i.f.a().a("Android-AppSignup-Throttled");
                    jVar.f7874b = "FailureStatusThrottled";
                } else if (str.equals("StatusServerError")) {
                    a.this.b(a.this.U);
                    jVar.f7874b = "FailureServerError";
                } else if (str.equals("StatusUserIdInvalid")) {
                    a.this.b(a.this.U);
                    jVar.f7874b = "MissingUserInfo";
                } else if (str.equals("PasswordMatchesUsername")) {
                    a.this.a(a.this.f7789b, R.string.Authentication_SignUp_Response_PasswordMatchesUsername);
                    jVar.f7874b = "PasswordMatchesUsername";
                } else if (str.equals("DumbPassword")) {
                    a.this.a(a.this.f7789b, R.string.Authentication_SignUp_Response_PasswordComplexity);
                    jVar.f7874b = "DumbPassword";
                } else {
                    a.this.b(a.this.V);
                }
            }
            com.roblox.client.i.f.a().a(jVar.f7874b, jVar.f7875c, jVar.f7876d, jVar.e, a.this.t, System.currentTimeMillis() - a.this.K);
            a.this.n();
        }
    }

    public void c() {
        new b.a(getContext()).a(R.string.CommonUI_Messages_Response_TooManyAttemptsText).b(R.string.Authentication_SignUp_Response_TooManyAccountsCreatedTryAgainLater).a(R.string.CommonUI_Features_Action_Ok, new DialogInterface.OnClickListener() { // from class: com.roblox.client.signup.a.20
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        }).a(false).b().show();
    }

    @Override // android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 10105 && i2 == -1) {
            b(false);
        }
    }

    private void m() {
        this.f7789b.b();
        this.j.b();
        this.l.b();
        this.e.c();
        this.f.c();
        this.f7791d.b();
        this.g.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        this.n.a(RbxProgressButton.b.SHOW_BUTTON);
        this.j.c();
        this.f7789b.c();
        this.l.c();
        this.e.d();
        this.f.d();
        this.g.b();
        if (h()) {
            this.f7791d.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) {
        com.roblox.client.b.c.a("UnexpectedError", str);
        alertFormatted(R.string.CommonUI_Messages_Response_UnexpectedErrorFormatted, str);
    }

    void a(String str, boolean z) {
        com.roblox.client.i.b("signup", str, z ? "focus" : "offFocus");
    }

    void a(String str) {
        com.roblox.client.i.b("signup", str, "submit");
    }

    /* JADX INFO: renamed from: com.roblox.client.signup.a$a, reason: collision with other inner class name */
    private static class RunnableC0129a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        WeakReference<RbxEditText> f7824a;

        RunnableC0129a(RbxEditText rbxEditText) {
            this.f7824a = new WeakReference<>(rbxEditText);
        }

        @Override // java.lang.Runnable
        public void run() {
            RbxEditText rbxEditText = this.f7824a.get();
            if (rbxEditText != null) {
                rbxEditText.b("");
            }
        }
    }
}
