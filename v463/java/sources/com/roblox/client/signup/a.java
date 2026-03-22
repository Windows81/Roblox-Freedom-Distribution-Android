package com.roblox.client.signup;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
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
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.b;
import com.roblox.abtesting.a;
import com.roblox.client.ae.k;
import com.roblox.client.ae.t;
import com.roblox.client.components.RbxBirthdayPicker;
import com.roblox.client.components.RbxButton;
import com.roblox.client.components.RbxEditText;
import com.roblox.client.components.RbxGenderPicker;
import com.roblox.client.components.RbxLoadingEditText;
import com.roblox.client.components.RbxProgressButton;
import com.roblox.client.components.RbxTextView;
import com.roblox.client.http.j;
import com.roblox.client.l;
import com.roblox.client.o;
import com.roblox.client.p;
import com.roblox.client.s;
import com.roblox.client.signup.d;
import com.roblox.client.signup.e;
import com.roblox.client.u;
import com.roblox.client.x;
import com.roblox.engine.jni.NativeSettingsInterface;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.net.URLEncoder;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a extends s {
    private static b aZ = new b() { // from class: com.roblox.client.signup.a.1
        @Override // com.roblox.client.signup.a.b
        public void b(String str, String str2) {
        }

        @Override // com.roblox.client.signup.a.b
        public void q() {
        }

        @Override // com.roblox.client.signup.a.b
        public void r() {
        }

        @Override // com.roblox.client.signup.a.b
        public void s() {
        }
    };
    private RbxTextView aE;
    private RbxTextView aF;
    private com.roblox.client.signup.e aG;
    private com.roblox.client.s.f aH;
    private com.roblox.abtesting.a aI;
    private boolean aW;
    private long aY;
    private f bc;
    private RunnableC0171a bd;
    private String be;
    private String bf;
    private String bg;
    private String bh;
    private String bi;
    private RbxButton ay = null;
    private UsernameSignUpEditText az = null;
    private EditText aA = null;
    private RbxProgressButton aB = null;
    private TextView aC = null;
    private RbxButton aD = null;
    EditText as = null;
    RbxEditText at = null;
    RbxLoadingEditText au = null;
    RbxGenderPicker av = null;
    RbxBirthdayPicker aw = null;
    private String aJ = null;
    private String aK = null;
    private String aL = null;
    private int aM = -1;
    private int aN = -1;
    private int aO = -1;
    private int aP = 0;
    private boolean aQ = false;
    private e aR = e.BLANK;
    private e aS = e.BLANK;
    private e aT = e.VALID;
    private e aU = e.INVALID;
    private e aV = e.BLANK;
    private View aX = null;
    b ax = aZ;
    private final int ba = 500;
    private final int bb = 2000;
    private d.a bj = new c();

    interface b {
        void b(String str, String str2);

        void q();

        void r();

        void s();
    }

    public interface d {
        void a();

        void a(e eVar, Integer num);
    }

    public enum e {
        BLANK,
        VALID,
        INVALID
    }

    private enum g {
        USERNAME,
        PASSWORD
    }

    public interface h {
        void b(e eVar, Integer num);
    }

    static a aq() {
        return new a();
    }

    @Override // com.roblox.client.s, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void b(Bundle bundle) {
        super.b(bundle);
        a(1, d());
        this.aH = com.roblox.client.s.f.b();
        this.aI = com.roblox.abtesting.a.a();
    }

    @Override // androidx.fragment.app.Fragment
    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(o.g.fragment_signup_new, viewGroup, false);
        layoutInflater.inflate(o.g.fragment_sign_up_card_common_birthday_first, (LinearLayout) layoutInflater.inflate(o.g.fragment_sign_up_card, (LinearLayout) viewInflate.findViewById(o.f.fragment_sign_up_swap_container)).findViewById(o.f.fragment_sign_up_card_inner_container));
        ((LinearLayout) viewInflate.findViewById(o.f.fragment_sign_up_background)).setOnClickListener(null);
        this.ay = (RbxButton) viewInflate.findViewById(o.f.fragment_sign_up_cancel_btn);
        UsernameSignUpEditText usernameSignUpEditText = (UsernameSignUpEditText) viewInflate.findViewById(o.f.fragment_sign_up_username);
        this.az = usernameSignUpEditText;
        EditText textBox = usernameSignUpEditText.getTextBox();
        this.as = textBox;
        textBox.setId(o.f.view_signup_username_field);
        this.az.getBottomLabel().setId(o.f.view_signup_username_bottom_label);
        RbxEditText rbxEditText = (RbxEditText) viewInflate.findViewById(o.f.fragment_sign_up_password);
        this.at = rbxEditText;
        EditText textBox2 = rbxEditText.getTextBox();
        this.aA = textBox2;
        textBox2.setId(o.f.view_signup_password_field);
        this.at.getBottomLabel().setId(o.f.view_signup_password_bottom_label);
        this.at.setRightDrawableClickListener(new View.OnClickListener() { // from class: com.roblox.client.signup.a.12
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (a.this.aA.getTransformationMethod() == null) {
                    k.c("FragmentSignUp", "transformation = null");
                    a.this.aA.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, a.this.s().getDrawable(o.e.show_password), (Drawable) null);
                    a.this.aA.setTransformationMethod(new PasswordTransformationMethod());
                } else {
                    k.c("FragmentSignUp", "transformation not null");
                    a.this.aA.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, a.this.s().getDrawable(o.e.hide_password), (Drawable) null);
                    a.this.aA.setTransformationMethod(null);
                }
            }
        });
        this.av = (RbxGenderPicker) viewInflate.findViewById(o.f.fragment_sign_up_gender_picker);
        this.aw = (RbxBirthdayPicker) viewInflate.findViewById(o.f.fragment_sign_up_birthday_picker);
        this.au = (RbxLoadingEditText) viewInflate.findViewById(o.f.fragment_sign_up_email);
        RbxProgressButton rbxProgressButton = (RbxProgressButton) viewInflate.findViewById(o.f.fragment_sign_up_submit_btn);
        this.aB = rbxProgressButton;
        rbxProgressButton.setEnabled(false);
        this.aC = (TextView) viewInflate.findViewById(o.f.fragment_sign_up_agreement);
        this.aD = (RbxButton) viewInflate.findViewById(o.f.fragment_sign_up_login_btn);
        this.aE = (RbxTextView) viewInflate.findViewById(o.f.fragment_signup_header_txt);
        this.aF = (RbxTextView) viewInflate.findViewById(o.f.fragment_signup_gender_text);
        this.aX = viewInflate;
        final Context contextP = p();
        this.ay.setText(com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_SignUp_Action_Cancel, new Object[0]));
        this.aD.setText(com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_SignUp_Action_LoginWord, new Object[0]));
        this.ay.setContentDescription(com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_SignUp_Description_CancelButtonContentDesc, new Object[0]));
        this.at.setHintText(com.roblox.client.locale.a.a.a(contextP, o.j.CommonUI_Messages_Label_Password, new Object[0]));
        this.at.setLongHintText(com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_SignUp_Description_PasswordHintTextLong, new Object[0]));
        this.at.setContentDescription(com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_SignUp_Description_SignUpPasswordContentDesc, new Object[0]));
        this.az.setContentDescription(com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_SignUp_Description_SignUpUsernameContentDesc, new Object[0]));
        this.aB.setContentDescription(com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_SignUp_Description_SubmitButtonContentDesc, new Object[0]));
        this.az.setHintText(com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_SignUp_Description_Username, new Object[0]));
        this.az.setLongHintText(com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_SignUp_Description_UsernameHintTextLong, new Object[0]));
        this.au.setHintText(com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_SignUp_Label_Email, new Object[0]));
        this.au.setContentDescription(com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_SignUp_Label_Email, new Object[0]));
        this.aB.setText(com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_SignUp_Label_SignUp, new Object[0]));
        this.aE.setText(com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_SignUp_Label_SignUpWord, new Object[0]));
        if (u.j()) {
            this.aw.setLayoutParams(new LinearLayout.LayoutParams(-1, 0, 1.5f));
        }
        this.az.c(com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_SignUp_Description_UsernameHint, new Object[0]));
        if (com.roblox.client.b.ap()) {
            this.az.setGenerateUsernameIconTouchListener(new com.roblox.client.signup.b() { // from class: com.roblox.client.signup.a.19
                @Override // com.roblox.client.signup.b
                public void a() {
                    p.a("signup", "usernameSuggestion");
                    a.this.aC();
                }
            });
        }
        if (this.aI.b()) {
            this.au.setVisibility(0);
            this.au.b();
        }
        String strNativeGetGenderNeutralSignUpVariation = NativeSettingsInterface.nativeGetGenderNeutralSignUpVariation();
        if ("VARIANT-B".equals(strNativeGetGenderNeutralSignUpVariation)) {
            this.aV = e.VALID;
        } else if ("VARIANT-C".equals(strNativeGetGenderNeutralSignUpVariation)) {
            this.av.setVisibility(8);
            this.aF.setVisibility(8);
            this.aV = e.VALID;
        } else {
            this.aF.setVisibility(8);
        }
        this.as.setImeOptions(5);
        this.as.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.roblox.client.signup.a.20
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                if (i != 5) {
                    return false;
                }
                a.this.at.requestFocus();
                return true;
            }
        });
        this.as.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.roblox.client.signup.a.21
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                a.this.a("username", z);
            }
        });
        this.aA.setImeOptions(5);
        this.aA.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.roblox.client.signup.a.22
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                if (i != 5) {
                    return false;
                }
                a.this.aA.clearFocus();
                x.b(a.this.aX);
                return true;
            }
        });
        this.at.setRbxFocusChangedListener(new com.roblox.client.components.f() { // from class: com.roblox.client.signup.a.23
            @Override // com.roblox.client.components.f
            public void a(View view, boolean z) {
                a.this.a("password", z);
                if (a.this.aS == e.BLANK) {
                    if (z) {
                        a.this.at.c(com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_SignUp_Description_PasswordMinLength, new Object[0]));
                    } else {
                        a.this.at.a();
                    }
                }
            }
        });
        EditText textBox3 = this.au.getTextBox();
        textBox3.setImeOptions(6);
        textBox3.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.roblox.client.signup.a.24
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                if (i != 6) {
                    return false;
                }
                x.a(a.this.p(), a.this.aX);
                return true;
            }
        });
        textBox3.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.roblox.client.signup.a.25
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                a.this.a("email", z);
            }
        });
        au();
        this.av.setOnGenderButtonPressedListener(new RbxGenderPicker.a() { // from class: com.roblox.client.signup.a.2
            @Override // com.roblox.client.components.RbxGenderPicker.a
            public void a(RbxButton rbxButton) {
                a.this.d("gender");
                x.a(a.this.p(), a.this.aX);
                a.this.aA();
            }
        });
        this.aw.setRbxDateChangedListener(new com.roblox.client.components.e() { // from class: com.roblox.client.signup.a.3
            @Override // com.roblox.client.components.e
            public void a(int i, int i2) {
                boolean zAz = a.this.az();
                if (i == 0) {
                    a.this.aO = i2;
                    a.this.d("birthdayDay");
                } else if (i == 1) {
                    a.this.aN = i2;
                    a.this.d("birthdayMonth");
                } else if (i == 2) {
                    a.this.d("birthdayYear");
                    a.this.aM = i2;
                }
                a.this.m(zAz);
                a.this.ay();
            }
        });
        this.aD.setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.signup.a.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                x.a(a.this.p(), view);
                p.a("signup", "login");
                a.this.ax.q();
            }
        });
        this.ay.setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.signup.a.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                a.this.aQ = true;
                p.a("signup", "close");
                a.this.ax.r();
            }
        });
        this.aB.setOnRbxClickedListener(new com.roblox.client.components.d() { // from class: com.roblox.client.signup.a.6
            @Override // com.roblox.client.components.d
            public void a(View view) {
                a.this.a(true, (String) null, (String) null);
            }
        });
        com.roblox.client.ae.a.b.b(contextP, this.aC);
        this.aC.setTextIsSelectable(false);
        p.b("signup");
        b(contextP);
        return viewInflate;
    }

    @Override // androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void j() {
        super.j();
        this.az.removeCallbacks(this.bd);
    }

    @Override // com.roblox.client.s, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void d(Bundle bundle) {
        super.d(bundle);
        this.aG = new com.roblox.client.signup.e(new com.roblox.client.http.h());
    }

    private void b(Context context) {
        this.be = com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Response_UsernameContainsInvalidCharacters, new Object[0]);
        this.bf = com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Response_UnexpectedErrorText, new Object[0]);
        this.bg = com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Response_BadServerResponseError, new Object[0]);
        this.bh = com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Response_ServerError, new Object[0]);
        this.bi = com.roblox.client.locale.a.a.a(context, o.j.Authentication_SignUp_Response_Error, new Object[0]);
    }

    private void au() {
        final Runnable runnable = new Runnable() { // from class: com.roblox.client.signup.a.7
            @Override // java.lang.Runnable
            public void run() {
                if (a.this.aQ) {
                    return;
                }
                a.this.a(g.USERNAME);
            }
        };
        final Runnable runnable2 = new Runnable() { // from class: com.roblox.client.signup.a.8
            @Override // java.lang.Runnable
            public void run() {
                if (a.this.aQ) {
                    return;
                }
                a.this.a(g.PASSWORD);
            }
        };
        this.bd = new RunnableC0171a(this.az);
        this.as.addTextChangedListener(new TextWatcher() { // from class: com.roblox.client.signup.a.9
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                a.this.aR = e.INVALID;
                a.this.az.removeCallbacks(a.this.bd);
                a.this.as.removeCallbacks(runnable);
                a.this.as.postDelayed(runnable, 500L);
            }
        });
        this.aA.addTextChangedListener(new TextWatcher() { // from class: com.roblox.client.signup.a.10
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                k.c("FragmentSignUp", "start: " + i + ". before: " + i2 + ". count: " + i3);
                if (i == 0 && i2 == 0 && i3 > 0) {
                    a.this.aA.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, a.this.s().getDrawable(o.e.show_password), (Drawable) null);
                } else if (charSequence.length() == 0) {
                    a.this.aA.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, (Drawable) null, (Drawable) null);
                    if (a.this.aA.getTransformationMethod() == null) {
                        a.this.aA.setTransformationMethod(new PasswordTransformationMethod());
                    }
                }
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                a.this.aS = e.INVALID;
                a.this.aA.removeCallbacks(runnable2);
                a.this.aA.postDelayed(runnable2, 500L);
            }
        });
        final Runnable runnable3 = new Runnable() { // from class: com.roblox.client.signup.a.11
            @Override // java.lang.Runnable
            public void run() {
                if (a.this.aQ) {
                    return;
                }
                a.this.aB();
            }
        };
        this.au.getTextBox().addTextChangedListener(new TextWatcher() { // from class: com.roblox.client.signup.a.13
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                a.this.aT = e.INVALID;
                a.this.au.removeCallbacks(runnable3);
                a.this.au.postDelayed(runnable3, 500L);
            }
        });
    }

    @Override // com.roblox.client.s, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void h() {
        super.h();
        r().getWindow().setSoftInputMode(32);
        p.b("signup");
    }

    @Override // com.roblox.client.s, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void i() {
        super.i();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void a(Context context) {
        super.a(context);
        if (context instanceof b) {
            this.ax = (b) context;
            return;
        }
        k.b("signup_window", "Parent activity does not implement FragmentSignUp.OnFragmentInteractionListener!");
        throw new RuntimeException(context.toString() + " must implement OnFragmentInteractionListener.");
    }

    @Override // androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void f() {
        super.f();
        this.ax = aZ;
        f fVar = this.bc;
        if (fVar != null) {
            fVar.cancel(true);
        }
    }

    public void m(boolean z) {
        if (az()) {
            this.aw.b();
            a(this.aO, this.aN, this.aM);
            String string = this.as.getText().toString();
            this.as.setText(string);
            this.as.setSelection(string.length());
        }
    }

    private void a(RbxEditText rbxEditText, int i) {
        rbxEditText.b(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(RbxEditText rbxEditText, String str) {
        rbxEditText.b(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(RbxEditText rbxEditText, String str) {
        rbxEditText.a(str);
    }

    private void a(int i, int i2, int i3) {
        String strA;
        Context contextP = p();
        if (b(i, i2, i3)) {
            strA = com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_SignUp_Label_EmailRequirementsUnder13, new Object[0]);
        } else {
            strA = com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_SignUp_Label_Email, new Object[0]);
        }
        this.au.setHintText(strA);
        this.au.c();
    }

    private boolean b(int i, int i2, int i3) {
        return com.roblox.client.ae.e.a(i, i2, i3) < 13;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean av() {
        return this.aI.l();
    }

    private boolean aw() {
        return this.aR == e.VALID && this.aU == e.VALID && this.aS == e.VALID && this.aV == e.VALID && this.aT == e.VALID;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean ax() {
        boolean zAw = aw();
        k.b("FragmentSignUp", "formValid: " + zAw);
        this.aB.setEnabled(zAw);
        return zAw;
    }

    public void a(final boolean z, final String str, final String str2) {
        if (z) {
            if (ap()) {
                return;
            } else {
                p.a("signup", "submit");
            }
        }
        ay();
        if (this.aU != e.VALID) {
            return;
        }
        ar();
        this.aB.a(RbxProgressButton.b.SHOW_PROGRESS, o.j.CommonUI_Messages_Action_Validating);
        aE();
        final Handler handler = new Handler(Looper.getMainLooper());
        final Context contextP = p();
        handler.postDelayed(new Runnable() { // from class: com.roblox.client.signup.a.14
            @Override // java.lang.Runnable
            public void run() {
                String str3;
                String str4;
                String str5 = "Empty";
                if (a.this.aJ.equals("")) {
                    a aVar = a.this;
                    aVar.a(aVar.az, com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_SignUp_Response_PleaseEnterUsername, new Object[0]));
                    a.this.aR = e.INVALID;
                    str3 = "username";
                    str4 = "Empty";
                } else {
                    str3 = "";
                    str4 = str3;
                }
                if (a.this.aK.equals("")) {
                    a aVar2 = a.this;
                    aVar2.a(aVar2.at, com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_SignUp_Response_PleaseEnterPassword, new Object[0]));
                    a.this.aS = e.INVALID;
                    str3 = "password";
                } else {
                    str5 = str4;
                }
                if (!str5.isEmpty() && !str3.isEmpty()) {
                    p.a("signup", str3, str5, true);
                }
                a.this.ay();
                a.this.aA();
                if (!a.this.ax()) {
                    a.this.at();
                    return;
                }
                if (z) {
                    if (a.this.av() && !a.this.aW) {
                        a.this.ax.s();
                        return;
                    }
                } else {
                    a.this.aW = true;
                }
                handler.postDelayed(new Runnable() { // from class: com.roblox.client.signup.a.14.1
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.aB.a(RbxProgressButton.b.SHOW_PROGRESS, com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_SignUp_Response_RegisteringWord, new Object[0]));
                        a.this.aY = System.currentTimeMillis();
                        new com.roblox.client.signup.c(a.this.aP, a.this.aM, a.this.aN, a.this.aO, a.this.aL, a.this.aJ, a.this.aK, str, str2, a.this.bj).execute(new Void[0]);
                    }
                }, 1000L);
            }
        }, 1000L);
    }

    public void ar() {
        this.aJ = this.as.getText().toString();
        this.aK = this.aA.getText().toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0176  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(com.roblox.client.signup.a.g r11) {
        /*
            Method dump skipped, instruction units count: 417
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.roblox.client.signup.a.a(com.roblox.client.signup.a$g):void");
    }

    /* JADX INFO: renamed from: com.roblox.client.signup.a$18, reason: invalid class name */
    static /* synthetic */ class AnonymousClass18 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f7071a;

        static {
            int[] iArr = new int[g.values().length];
            f7071a = iArr;
            try {
                iArr[g.USERNAME.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f7071a[g.PASSWORD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ay() {
        e eVar = az() ? e.VALID : e.INVALID;
        this.aU = eVar;
        if (eVar != e.VALID) {
            this.aw.a();
            p.a("signup", "birthday", "incomplete", true);
        }
        ax();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean az() {
        return (this.aM == -1 || this.aN == -1 || this.aO == -1) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aA() {
        int value = this.av.getValue();
        this.aP = value;
        this.aV = value == 0 ? e.INVALID : e.VALID;
        String strNativeGetGenderNeutralSignUpVariation = NativeSettingsInterface.nativeGetGenderNeutralSignUpVariation();
        if ("VARIANT-B".equals(strNativeGetGenderNeutralSignUpVariation) || "VARIANT-C".equals(strNativeGetGenderNeutralSignUpVariation)) {
            this.aV = e.VALID;
        }
        if (this.aV == e.INVALID) {
            this.av.a();
            p.a("signup", "gender", "not selected", true);
        }
        ax();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aB() {
        if (this.aI.b()) {
            this.au.f();
            String text = this.au.getText();
            this.aL = text;
            this.aG.a(text, new e.a() { // from class: com.roblox.client.signup.a.15
                @Override // com.roblox.client.signup.e.a
                public void a(boolean z) {
                    k.b("rbx.signup", "isEmailValid=" + z + ".");
                    androidx.fragment.app.c cVarR = a.this.r();
                    if (cVarR == null) {
                        return;
                    }
                    a.this.aT = z ? e.VALID : e.INVALID;
                    a.this.ax();
                    if (z) {
                        a.this.au.a((String) null);
                        a.this.aH.a("Android-AppSignup-Validation-EmailValid");
                    } else {
                        a.this.au.b(com.roblox.client.locale.a.a.a(cVarR, o.j.Authentication_SignUp_Response_InvalidEmail, new Object[0]));
                        a.this.aH.a("Android-AppSignup-Validation-EmailInvalid");
                    }
                }
            });
            return;
        }
        this.aT = e.VALID;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aC() {
        String text = this.az.getText();
        this.az.f();
        try {
            this.aG.a(URLEncoder.encode(text, "UTF-8"), com.roblox.client.signup.d.a(this.aN, this.aO, this.aM), new e.b() { // from class: com.roblox.client.signup.a.16
                @Override // com.roblox.client.signup.e.b
                public void a(boolean z, String str) {
                    k.b("rbx.signup", "isNewUsername=" + z + ". NewUsername=" + str + ".");
                    androidx.fragment.app.c cVarR = a.this.r();
                    if (cVarR == null) {
                        return;
                    }
                    if (z && !TextUtils.isEmpty(str)) {
                        a.this.aH.a("Android-AppSignup-UsernameGenerated");
                    } else {
                        str = a.this.as.getText().toString();
                        a.this.c(com.roblox.client.locale.a.a.a(cVarR, o.j.Authentication_SignUp_Response_SignUpErrorGeneratingUsername, new Object[0]));
                        a.this.aH.a("Android-AppSignup-UsernameNotGenerated");
                    }
                    a.this.as.setText(str);
                    a.this.as.setSelection(str.length());
                }
            });
        } catch (UnsupportedEncodingException unused) {
            e(this.be);
        }
    }

    private class f extends AsyncTask<Void, Void, Void> implements d, h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        g f7098a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f7099b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        String f7100c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        String f7101d = null;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        JSONObject f7102e = null;
        int f = -1;
        private com.roblox.client.signup.a.e h;
        private com.roblox.client.signup.a.f i;

        /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
        f(g gVar) {
            this.f7099b = null;
            this.f7100c = null;
            this.f7098a = gVar;
            Context contextP = a.this.p();
            String str = "username";
            try {
                this.f7099b = URLEncoder.encode(a.this.aJ, "UTF-8");
                try {
                    str = "password";
                    this.f7100c = URLEncoder.encode(a.this.aK, "UTF-8");
                } catch (UnsupportedEncodingException unused) {
                    a.this.a(a.this.at, com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_SignUp_Response_PasswordInvalidCharacters, new Object[0]));
                    com.roblox.client.analytics.d.a("SignUpPreValidation", b(), "EncodingError");
                    p.a("signup", str, "NotUTF8", true);
                }
                if (com.roblox.client.b.cd()) {
                    this.i = new com.roblox.client.signup.a.c(a.this.aH, this);
                } else {
                    this.i = new com.roblox.client.signup.a.a(a.this.aH, this);
                }
                if (com.roblox.client.b.ce()) {
                    this.h = new com.roblox.client.signup.a.d(a.this.aH, this);
                } else {
                    this.h = new com.roblox.client.signup.a.b(a.this.aH, this);
                }
            } catch (UnsupportedEncodingException unused2) {
                a.this.a(a.this.az, com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_SignUp_Response_UsernameInvalidCharacters, new Object[0]));
                com.roblox.client.analytics.d.a("SignUpPreValidation", b(), "EncodingError");
                p.a("signup", "username", "NotUTF8", true);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void doInBackground(Void... voidArr) {
            String str;
            String str2 = this.f7098a == g.USERNAME ? "username" : "password";
            if (isCancelled()) {
                return null;
            }
            int i = AnonymousClass18.f7071a[this.f7098a.ordinal()];
            if (i == 1) {
                j jVarA = this.h.a(a.this.aJ, t.a(com.roblox.client.signup.d.a(a.this.aN, a.this.aO, a.this.aM)), "Signup");
                this.f7101d = jVarA.a();
                this.f = jVarA.b();
            } else if (i == 2) {
                j jVarA2 = this.i.a(this.f7099b, this.f7100c);
                this.f7101d = jVarA2.a();
                this.f = jVarA2.b();
            }
            if (this.f7101d != null) {
                try {
                    this.f7102e = new JSONObject(this.f7101d);
                    str = "";
                } catch (JSONException unused) {
                    str = "ValidationJSONException";
                }
            } else {
                str = "NoResponse";
            }
            if (!str.isEmpty()) {
                p.a("signup", str2, str, true);
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(Void r10) {
            String strA;
            super.onPostExecute(r10);
            String strB = b();
            if (this.f7098a == g.USERNAME && this != a.this.bc) {
                com.roblox.client.analytics.d.a("SignUpPreValidation", strB, "UsernameRace");
                return;
            }
            String str = this.f7098a == g.USERNAME ? "username" : "password";
            androidx.fragment.app.c cVarR = a.this.r();
            if (cVarR == null) {
                p.a("signup", str, "WindowClosed", true);
                com.roblox.client.analytics.d.a("SignUpPreValidation", strB, "ActivityNull");
                return;
            }
            if (this.f7101d == null) {
                if (!a.this.ap()) {
                    a.this.c(com.roblox.client.locale.a.a.a(cVarR, o.j.Authentication_SignUp_Response_ErrorTryAgain, new Object[0]));
                }
                com.roblox.client.analytics.d.a("SignUpPreValidation", strB, "ResponseNull");
                a.this.aH.a(this.f7098a == g.USERNAME ? "Android-AppSignup-Validation-UsernameResponseNull" : "Android-AppSignup-Validation-PasswordResponseNull");
                strA = "NoResponse";
            } else if (this.f7102e == null) {
                a.this.c(com.roblox.client.locale.a.a.a(cVarR, o.j.Authentication_SignUp_Response_ErrorTryAgain, new Object[0]));
                a.this.aH.a(this.f7098a == g.USERNAME ? "Android-AppSignup-Validation-UsernameJsonNull" : "Android-AppSignup-Validation-PasswordJsonNull");
                com.roblox.client.analytics.d.a("SignUpPreValidation", strB, "JsonNull");
                strA = "JSONParseFailure";
            } else {
                strA = "";
            }
            if (!strA.isEmpty()) {
                if (this.f7098a == g.USERNAME) {
                    a.this.aR = e.VALID;
                    a aVar = a.this;
                    aVar.a(aVar.az, "");
                }
                p.a("signup", str, strA, true);
                return;
            }
            int i = AnonymousClass18.f7071a[this.f7098a.ordinal()];
            if (i == 1) {
                strA = this.h.a(this.f, this.f7102e);
                a.this.ax();
            } else if (i == 2) {
                strA = this.i.a(this.f, this.f7102e);
                a.this.ax();
            }
            if (strA.isEmpty()) {
                p.a("signup", str, true);
            } else {
                p.a("signup", str, strA, true);
            }
        }

        private String b() {
            return this.f7098a == g.USERNAME ? "Username" : "Password";
        }

        @Override // com.roblox.client.signup.a.d
        public void a(e eVar, Integer num) {
            a.this.aR = eVar;
            if (eVar == e.VALID) {
                a aVar = a.this;
                aVar.b(aVar.az, com.roblox.client.locale.a.a.a(a.this.p(), num.intValue(), new Object[0]));
                a.this.az.postDelayed(a.this.bd, 2000L);
                a.this.az.i();
                return;
            }
            a aVar2 = a.this;
            aVar2.a(aVar2.az, com.roblox.client.locale.a.a.a(a.this.p(), num.intValue(), new Object[0]));
            a.this.az.j();
        }

        @Override // com.roblox.client.signup.a.d
        public void a() {
            a.this.aR = e.INVALID;
            a aVar = a.this;
            aVar.a(aVar.az, com.roblox.client.locale.a.a.a(a.this.p(), o.j.Authentication_SignUp_Response_UsernameAlreadyInUse, new Object[0]));
            a.this.az.h();
        }

        @Override // com.roblox.client.signup.a.h
        public void b(e eVar, Integer num) {
            a.this.aS = eVar;
            if (eVar == e.VALID) {
                a aVar = a.this;
                aVar.b(aVar.at, (String) null);
            } else {
                a aVar2 = a.this;
                aVar2.a(aVar2.at, com.roblox.client.locale.a.a.a(a.this.p(), num.intValue(), new Object[0]));
            }
        }
    }

    private class c implements d.a {
        private c() {
        }

        @Override // com.roblox.client.signup.d.a
        public void a(final com.roblox.client.signup.f fVar) {
            final long j = fVar.g;
            a.this.aI.b(j);
            if (com.roblox.client.b.bP() && fVar.h != -1) {
                l.a().h().a(com.roblox.client.game.h.a(Long.valueOf(fVar.h), null, null, null, null, "SignUp"));
            }
            a.this.aI.a(new a.InterfaceC0117a() { // from class: com.roblox.client.signup.a.c.1
                @Override // com.roblox.abtesting.a.InterfaceC0117a
                public void a() {
                    c.this.a(fVar.f7134d, j);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(int i, long j) {
            com.roblox.client.s.h.a().a(a.this.aJ, j);
            a.this.ax.b(a.this.aJ, a.this.aK);
            com.roblox.client.s.f.c(i);
        }

        @Override // com.roblox.client.signup.d.a
        public void b(com.roblox.client.signup.f fVar) {
            if (fVar == null) {
                a aVar = a.this;
                aVar.e(aVar.bf);
                fVar = new com.roblox.client.signup.f();
                fVar.f7132b = "FailureUnknownError";
                fVar.f7133c = "Android-AppSignup-UnknownError";
            } else if (fVar.f7131a.size() == 0 || fVar.f7131a.get(0) == null) {
                a aVar2 = a.this;
                aVar2.e(aVar2.bf);
                fVar.f7132b = "FailureUnknownError";
                fVar.f7133c = "Android-AppSignup-UnknownError";
            } else {
                Context contextP = a.this.p();
                String str = fVar.f7131a.get(0);
                if (str.equals("UsernameTaken")) {
                    a aVar3 = a.this;
                    aVar3.a(aVar3.az, com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_SignUp_Response_UsernameAlreadyInUse, new Object[0]));
                    fVar.f7132b = "FailureAlreadyTaken";
                    fVar.f7133c = "Android-AppSignup-UsernameTaken";
                } else if (str.equals("UsernameContainsInvalidCharacters")) {
                    a aVar4 = a.this;
                    aVar4.a(aVar4.az, a.this.be);
                    fVar.f7132b = "FailureInvalidCharacters";
                    fVar.f7133c = "Android-AppSignup-UsernameInvalidChars";
                } else if (str.equals("UsernameCannotContainSpaces")) {
                    a aVar5 = a.this;
                    aVar5.a(aVar5.az, com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_SignUp_Response_UsernameCannotContainSpaces, new Object[0]));
                    fVar.f7132b = "FailureContainsSpaces";
                    fVar.f7133c = "Android-AppSignup-UsernameWithSpaces";
                } else if (str.equals("UsernameInvalid")) {
                    a aVar6 = a.this;
                    aVar6.a(aVar6.az, com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_SignUp_Response_UsernameInvalid, new Object[0]));
                    fVar.f7132b = "FailureInvalidUsername";
                    fVar.f7133c = "Android-AppSignup-UsernameInvalid";
                } else if (str.equals("BirthdayInvalid")) {
                    a.this.aw.a();
                    fVar.f7132b = "FailureInvalidBirthday";
                    fVar.f7133c = "Android-AppSignup-InvalidBirthday";
                } else if (str.equals("GenderInvalid")) {
                    a.this.av.a();
                    fVar.f7132b = "FailureInvalidGender";
                    fVar.f7133c = "Android-AppSignup-InvalidGender";
                } else if (str.equals("PasswordInvalid")) {
                    a aVar7 = a.this;
                    aVar7.a(aVar7.at, com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_SignUp_Response_PasswordRequirements, new Object[0]));
                    fVar.f7132b = "FailureInvalidPassword";
                    fVar.f7133c = "Android-AppSignup-PasswordInvalid";
                } else if (str.equals("Captcha")) {
                    if (contextP != null) {
                        a.this.aD();
                    }
                    fVar.f7132b = "FailureAccountCreateFloodcheck";
                    fVar.f7133c = "Android-AppSignup-Captcha";
                } else if (str.equals("StatusJsonError")) {
                    a aVar8 = a.this;
                    aVar8.e(aVar8.bg);
                    fVar.f7132b = "FailureJSONParse";
                    fVar.f7133c = "Android-AppSignup-JsonError";
                } else if (str.equals("StatusThrottled")) {
                    a.this.as();
                    fVar.f7132b = "FailureStatusThrottled";
                    fVar.f7133c = "Android-AppSignup-Throttled";
                } else if (str.equals("StatusServerError")) {
                    a aVar9 = a.this;
                    aVar9.e(aVar9.bh);
                    fVar.f7132b = "FailureServerError";
                    fVar.f7133c = "Android-AppSignup-ServerError";
                } else if (str.equals("StatusUserIdInvalid")) {
                    a aVar10 = a.this;
                    aVar10.e(aVar10.bh);
                    fVar.f7132b = "MissingUserInfo";
                    fVar.f7133c = "Android-AppSignup-UserIdInvalid";
                } else if (str.equals("PasswordMatchesUsername")) {
                    a aVar11 = a.this;
                    aVar11.a(aVar11.at, com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_SignUp_Response_PasswordMatchesUsername, new Object[0]));
                    fVar.f7132b = "PasswordMatchesUsername";
                    fVar.f7133c = "Android-AppSignup-PasswordMatchesUsername";
                } else if (str.equals("DumbPassword")) {
                    a aVar12 = a.this;
                    aVar12.a(aVar12.at, com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_SignUp_Response_PasswordComplexity, new Object[0]));
                    fVar.f7132b = "DumbPassword";
                    fVar.f7133c = "Android-AppSignup-DumbPassword";
                } else {
                    a aVar13 = a.this;
                    aVar13.e(aVar13.bi);
                    fVar.f7133c = "Android-AppSignup-UnknownError";
                }
            }
            com.roblox.client.s.f.b().a(fVar.f7133c, fVar.f7132b, fVar.f7134d, fVar.f7135e, fVar.f, a.this.aJ, System.currentTimeMillis() - a.this.aY);
            if ("Captcha".equals(fVar.f7131a.get(0))) {
                return;
            }
            a.this.at();
        }
    }

    public void as() {
        Context contextP = p();
        new b.a(contextP).a(com.roblox.client.locale.a.a.a(contextP, o.j.CommonUI_Messages_Response_TooManyAttemptsText, new Object[0])).b(com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_SignUp_Response_TooManyAccountsCreatedTryAgainLater, new Object[0])).a(com.roblox.client.locale.a.a.a(contextP, o.j.CommonUI_Features_Action_Ok, new Object[0]), new DialogInterface.OnClickListener() { // from class: com.roblox.client.signup.a.17
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        }).a(false).b().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aD() {
        if (z()) {
            this.ax.s();
        } else if (com.roblox.client.b.bR()) {
            at();
        }
    }

    private void aE() {
        this.at.b();
        this.az.b();
        this.av.c();
        this.aw.c();
        this.au.b();
        this.ay.a();
        this.aD.a();
    }

    public void at() {
        this.aB.a(RbxProgressButton.b.SHOW_BUTTON, com.roblox.client.locale.a.a.a(p(), o.j.Authentication_SignUp_Label_SignUp, new Object[0]));
        this.az.c();
        this.at.c();
        this.av.d();
        this.aw.d();
        this.ay.b();
        this.aD.b();
        if (az()) {
            this.au.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(String str) {
        com.roblox.client.analytics.d.a("UnexpectedError", str);
        b(o.j.CommonUI_Messages_Response_UnexpectedErrorFormatted, str);
    }

    void a(String str, boolean z) {
        p.c("signup", str, z ? "focus" : "offFocus");
    }

    void d(String str) {
        p.c("signup", str, "submit");
    }

    /* JADX INFO: renamed from: com.roblox.client.signup.a$a, reason: collision with other inner class name */
    private static class RunnableC0171a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        WeakReference<RbxEditText> f7089a;

        RunnableC0171a(RbxEditText rbxEditText) {
            this.f7089a = new WeakReference<>(rbxEditText);
        }

        @Override // java.lang.Runnable
        public void run() {
            RbxEditText rbxEditText = this.f7089a.get();
            if (rbxEditText != null) {
                rbxEditText.a("");
            }
        }
    }
}
