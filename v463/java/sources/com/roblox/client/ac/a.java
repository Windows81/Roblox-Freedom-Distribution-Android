package com.roblox.client.ac;

import android.content.Context;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.roblox.client.ac.b;
import com.roblox.client.ae.a.d;
import com.roblox.client.ae.k;
import com.roblox.client.components.RbxEditText;
import com.roblox.client.components.RbxProgressButton;
import com.roblox.client.http.h;
import com.roblox.client.o;
import com.roblox.client.p;
import com.roblox.client.s;
import com.roblox.client.s.f;
import com.roblox.client.u;
import com.roblox.client.x;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a extends s implements View.OnClickListener {
    private TextView aA;
    private TextView aB;
    private RbxProgressButton aC;
    private b aD;
    protected String as;
    protected String at;
    protected String au;
    protected CheckBox av;
    protected EditText aw;
    protected InterfaceC0119a ax;
    private RbxEditText az;
    private View.OnTouchListener aE = new View.OnTouchListener() { // from class: com.roblox.client.ac.a.1
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    };
    b.a ay = new b.a() { // from class: com.roblox.client.ac.a.4
        @Override // com.roblox.client.ac.b.a
        public void a(long j) {
            if (a.this.ax != null) {
                a.this.ax.a(j);
            }
        }

        @Override // com.roblox.client.ac.b.a
        public void a(String str, String str2) {
            a.this.as = str;
            a.this.at = str2;
            a aVar = a.this;
            aVar.a(com.roblox.client.locale.a.a.a(aVar.p(), o.j.Authentication_TwoStepVerification_Response_CodeSent, new Object[0]), 0);
            a.this.a(false, "");
        }

        @Override // com.roblox.client.ac.b.a
        public void a() {
            a aVar = a.this;
            aVar.a(true, com.roblox.client.locale.a.a.a(aVar.p(), o.j.Authentication_TwoStepVerification_Response_InvalidCode, new Object[0]));
        }

        @Override // com.roblox.client.ac.b.a
        public void a(int i) {
            a.this.b(b(i));
            a.this.a(false, "");
        }

        private String b(int i) {
            k.b("Fragment2SV", "ErrorCode = " + i);
            Context contextP = a.this.p();
            switch (i) {
                case -1005:
                    return com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_TwoStepVerification_Response_TooManyAttempts, new Object[0]);
                case -1004:
                    return com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_TwoStepVerification_Response_FeatureNotAvailable, new Object[0]);
                case -1003:
                    return com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_TwoStepVerification_Response_AccountIssueErrorTryAgain, new Object[0]);
                case -1002:
                    return com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_TwoStepVerification_Response_VerificationDisabled, new Object[0]);
                case -1001:
                    return com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_TwoStepVerification_Response_UserNotFound, new Object[0]);
                case -1000:
                    return com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_TwoStepVerification_Response_SystemErrorReturnToLogin, new Object[0]);
                default:
                    return com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_TwoStepVerification_Response_SystemErrorReturnToLogin, new Object[0]);
            }
        }
    };

    /* JADX INFO: renamed from: com.roblox.client.ac.a$a, reason: collision with other inner class name */
    public interface InterfaceC0119a {
        void a(long j);
    }

    public static a a(String str, String str2, String str3) {
        a aVar = new a();
        Bundle bundle = new Bundle();
        bundle.putString("nonce", str);
        bundle.putString("mediaType", str2);
        bundle.putString("username", str3);
        aVar.g(bundle);
        return aVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void a(Context context) {
        super.a(context);
        k.b("Fragment2SV", "onAttach()");
        if (context instanceof InterfaceC0119a) {
            this.ax = (InterfaceC0119a) context;
            return;
        }
        throw new RuntimeException(context.toString() + " must implement OnFragmentInteractionListener.");
    }

    @Override // androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void f() {
        super.f();
        k.b("Fragment2SV", "onDetach()");
        this.ax = null;
    }

    @Override // com.roblox.client.s, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void b(Bundle bundle) {
        super.b(bundle);
        if (n() != null) {
            this.as = n().getString("nonce");
            this.at = n().getString("mediaType");
            this.au = n().getString("username");
            this.aD = new b(f.b(), new h());
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(o.g.fragment_2_sv, viewGroup, false);
        RbxEditText rbxEditText = (RbxEditText) viewInflate.findViewById(o.f.edittext_verify_code);
        this.az = rbxEditText;
        EditText textBox = rbxEditText.getTextBox();
        this.aw = textBox;
        textBox.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.roblox.client.ac.a.2
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                if (i != 2 && i != 6) {
                    return false;
                }
                a.this.aq();
                return true;
            }
        });
        this.aA = (TextView) viewInflate.findViewById(o.f.textview_2sv_resend_code);
        this.aB = (TextView) viewInflate.findViewById(o.f.textview_2sv_support);
        this.aC = (RbxProgressButton) viewInflate.findViewById(o.f.button_verify_code);
        this.av = (CheckBox) viewInflate.findViewById(o.f.checkbox_2sv_trust_device);
        TextView textView = (TextView) viewInflate.findViewById(o.f.textview_2sv_message);
        TextView textView2 = (TextView) viewInflate.findViewById(o.f.textview_2sv_verification);
        ImageView imageView = (ImageView) viewInflate.findViewById(o.f.imageview_2sv_logo);
        Context contextP = p();
        String strA = com.roblox.client.locale.a.a.a(contextP, o.j.CommonUI_Messages_Response_RobloxSupport, new Object[0]);
        this.aA.setText(com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_TwoStepVerification_Action_ResendCode, new Object[0]));
        this.aC.setText(com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_TwoStepVerification_Action_Verify, new Object[0]));
        this.az.setHintText(com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_TwoStepVerification_Label_EnterCode, new Object[0]));
        textView.setText(com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_TwoStepVerification_Label_EnterEmailCode, new Object[0]));
        this.av.setText(com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_TwoStepVerification_Label_TrustThisDevice, new Object[0]));
        textView2.setText(com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_TwoStepVerification_Label_TwoStepVerification, new Object[0]));
        imageView.setContentDescription(com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_TwoStepVerification_Label_TwoStepVerification, new Object[0]));
        this.aC.setContentDescription(com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_TwoStepVerification_Label_TwoStepVerification, new Object[0]));
        String strA2 = com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_TwoStepVerification_Label_NeedHelp, strA);
        int iIndexOf = strA2.indexOf(strA);
        com.roblox.client.ae.a.b.a(this.aB, strA2, new d(u.W(), r(), strA, iIndexOf, iIndexOf + strA.length()));
        if ("Sms".equals(this.at)) {
            imageView.setImageResource(o.e.two_step_verification_logo_sms);
            textView.setText(com.roblox.client.locale.a.a.a(contextP, o.j.Authentication_TwoStepVerification_Label_EnterTextCode, new Object[0]));
        }
        this.aA.setOnClickListener(this);
        this.aw.requestFocus();
        this.aC.setOnRbxClickedListener(new com.roblox.client.components.d() { // from class: com.roblox.client.ac.a.3
            @Override // com.roblox.client.components.d
            public void a(View view) {
                a.this.aq();
            }
        });
        return viewInflate;
    }

    protected void aq() {
        m(false);
        Editable text = this.aw.getText();
        if (text != null && d(text.toString())) {
            this.aD.a(this.au, text.toString(), this.as, this.av.isChecked(), this.ay);
        } else {
            this.aw.setText("");
            a(true, com.roblox.client.locale.a.a.a(p(), o.j.Authentication_TwoStepVerification_Response_TwoStepEmptyCode, new Object[0]));
        }
    }

    private void ar() {
        m(true);
        this.aw.setText("");
        this.aD.a(this.au, this.as, this.ay);
    }

    protected boolean d(String str) {
        return !TextUtils.isEmpty(str.trim());
    }

    protected void m(boolean z) {
        if (!z) {
            this.aC.a(RbxProgressButton.b.SHOW_PROGRESS, o.j.CommonUI_Messages_Action_Validating);
        }
        this.az.a();
        this.aw.clearFocus();
        this.aA.setOnTouchListener(this.aE);
        this.aB.setOnTouchListener(this.aE);
        this.aw.setEnabled(false);
        x.b(this.aw);
    }

    protected void a(boolean z, String str) {
        if (z) {
            this.az.b(str);
        }
        this.aC.a(RbxProgressButton.b.SHOW_BUTTON, com.roblox.client.locale.a.a.a(p(), o.j.Authentication_TwoStepVerification_Action_Verify, new Object[0]));
        this.aA.setOnTouchListener(null);
        this.aB.setOnTouchListener(null);
        this.aw.setEnabled(true);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == o.f.textview_2sv_resend_code) {
            ar();
        }
    }

    @Override // com.roblox.client.s, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void h() {
        super.h();
        p.b("twoStepVerification");
    }
}
