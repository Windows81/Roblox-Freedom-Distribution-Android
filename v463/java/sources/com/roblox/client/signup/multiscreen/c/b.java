package com.roblox.client.signup.multiscreen.c;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.text.InputFilter;
import android.text.SpannableStringBuilder;
import android.text.style.StyleSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.roblox.client.ae.k;
import com.roblox.client.components.RbxButton;
import com.roblox.client.components.RbxEditText;
import com.roblox.client.components.RbxProgressButton;
import com.roblox.client.components.RbxTextView;
import com.roblox.client.datastructures.NameValuePair;
import com.roblox.client.o;
import com.roblox.client.p;
import com.roblox.client.s;
import com.roblox.client.x;
import java.util.ArrayList;
import java.util.List;
import org.greenrobot.eventbus.ThreadMode;
import org.greenrobot.eventbus.j;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b extends s {
    private static a at = new a() { // from class: com.roblox.client.signup.multiscreen.c.b.1
        @Override // com.roblox.client.signup.multiscreen.c.b.a
        public void a_(String str) {
        }

        @Override // com.roblox.client.signup.multiscreen.c.b.a
        public void p_() {
        }

        @Override // com.roblox.client.signup.multiscreen.c.b.a
        public void q_() {
        }
    };
    private a as = at;
    private View au;
    private RbxProgressButton av;
    private RbxEditText aw;
    private RbxButton ax;
    private boolean ay;
    private int az;

    public interface a {
        void a_(String str);

        void p_();

        void q_();
    }

    public static b a(int i, String str) {
        b bVar = new b();
        Bundle bundle = new Bundle();
        bundle.putString("credentialBundleKey", str);
        bundle.putInt("credentialTypeBundleKey", i);
        bVar.g(bundle);
        return bVar;
    }

    @Override // androidx.fragment.app.Fragment
    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        b(false);
        this.az = 1;
        String string = "";
        if (n() != null) {
            this.az = n().getInt("credentialTypeBundleKey");
            string = n().getString("credentialBundleKey", "");
        }
        k.b("SignUpCodeVerificationFragment", "CredentialValue: " + string);
        View viewInflate = layoutInflater.inflate(o.g.code_verification_fragment, viewGroup, false);
        RbxTextView rbxTextView = (RbxTextView) viewInflate.findViewById(o.f.verify_code_title);
        rbxTextView.setTypeface(null, 1);
        RbxTextView rbxTextView2 = (RbxTextView) viewInflate.findViewById(o.f.verify_code_edit_title);
        String strA = a(o.j.Authentication_SignUp_Label_EnterCodeSentFormated, string);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(strA);
        int iIndexOf = strA.indexOf(string);
        spannableStringBuilder.setSpan(new StyleSpan(1), iIndexOf, string.length() + iIndexOf, 33);
        rbxTextView2.setText(spannableStringBuilder);
        int i = this.az;
        if (i == 1) {
            rbxTextView.setText(o.j.Authentication_SignUp_Label_VerifyPhoneNumber);
        } else if (i == 2) {
            rbxTextView.setText(o.j.Authentication_SignUp_Label_VerifyEmail);
        }
        RbxEditText rbxEditText = (RbxEditText) viewInflate.findViewById(o.f.verify_code_code_edit_text);
        this.aw = rbxEditText;
        rbxEditText.getTextBox().setFilters(new InputFilter[]{new InputFilter.LengthFilter(6)});
        this.aw.setRbxFocusChangedListener(new com.roblox.client.components.f() { // from class: com.roblox.client.signup.multiscreen.c.b.2
            @Override // com.roblox.client.components.f
            public void a(View view, boolean z) {
                p.c(b.this.at(), "verifyCode", z ? "focus" : "offFocus");
            }
        });
        RbxButton rbxButton = (RbxButton) viewInflate.findViewById(o.f.verify_code_close_button);
        rbxButton.setTypeface(null, 1);
        rbxButton.setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.signup.multiscreen.c.b.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                p.a(b.this.at(), "closeButton");
                b.this.as.p_();
                b.this.a();
            }
        });
        RbxProgressButton rbxProgressButton = (RbxProgressButton) viewInflate.findViewById(o.f.verify_code_verify_button);
        this.av = rbxProgressButton;
        rbxProgressButton.setOnRbxClickedListener(new com.roblox.client.components.d() { // from class: com.roblox.client.signup.multiscreen.c.b.4
            @Override // com.roblox.client.components.d
            public void a(View view) {
                b.this.au();
            }
        });
        RbxButton rbxButton2 = (RbxButton) viewInflate.findViewById(o.f.verify_code_resend_code_button);
        this.ax = rbxButton2;
        rbxButton2.setText(o.j.Authentication_SignUp_Label_ResendCode);
        this.ax.setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.signup.multiscreen.c.b.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                p.a(b.this.at(), "resendButton");
                com.roblox.client.s.f.b().a("Android-VAppSignupC-ResendClicked");
                b.this.as.q_();
            }
        });
        this.au = viewInflate;
        as();
        return viewInflate;
    }

    @Override // com.roblox.client.s, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void d(Bundle bundle) {
        super.d(bundle);
        k.c("SignUpCodeVerificationFragment", "onActivityCreated.");
        c().setCanceledOnTouchOutside(false);
    }

    @Override // com.roblox.client.s, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void h() {
        super.h();
        k.c("SignUpCodeVerificationFragment", "onStart.");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new NameValuePair("aType", "shown"));
        a(arrayList);
        com.roblox.client.s.f.b().a("Android-VAppSignupC-VerifyScreenLoaded");
    }

    @Override // androidx.fragment.app.Fragment
    public void F() {
        super.F();
        k.c("SignUpCodeVerificationFragment", "onResume.");
        org.greenrobot.eventbus.c.a().a(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void G() {
        super.G();
        k.c("SignUpCodeVerificationFragment", "onPause.");
        org.greenrobot.eventbus.c.a().b(this);
    }

    @Override // androidx.fragment.app.b, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        k.c("SignUpCodeVerificationFragment", "onDismiss.");
        x.b(this.au);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new NameValuePair("aType", "dismissed"));
        a(arrayList);
    }

    @Override // androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void a(Context context) {
        super.a(context);
        if (w() instanceof a) {
            this.as = (a) w();
            return;
        }
        throw new IllegalStateException("Parent fragment must implement OnFragmentInteractionListener.");
    }

    @Override // androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void f() {
        super.f();
        k.c("SignUpCodeVerificationFragment", "onDetach.");
        if (!this.ay) {
            this.as.p_();
        }
        this.as = at;
    }

    public void d(String str) {
        k.c("SignUpCodeVerificationFragment", "showFieldError: " + str);
        ar();
        this.aw.b(str);
    }

    public void aq() {
        this.ay = true;
        a();
    }

    public void ar() {
        this.av.a(RbxProgressButton.b.SHOW_BUTTON, o.j.Authentication_SignUp_Label_Verify);
        this.aw.c();
        this.ax.b();
    }

    private void as() {
        new com.roblox.client.signup.multiscreen.e().a(p(), "SignUpCodeVerificationFragment");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String at() {
        return this.az == 1 ? "verifyPhone" : "verifyEmail";
    }

    private void a(List<NameValuePair> list) {
        p.a("modalAction", at(), list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void au() {
        this.av.a(RbxProgressButton.b.SHOW_PROGRESS, o.j.CommonUI_Messages_Action_Validating);
        av();
        x.b(this.au);
        com.roblox.client.s.f.b().a("Android-VAppSignupC-VerifyClicked");
        String text = this.aw.getText();
        if (text.length() != 6) {
            this.aw.b(o.j.Authentication_SignUp_Response_InvalidCode);
            ar();
        } else {
            p.a(at(), "verifyButton");
            this.aw.b("");
            this.as.a_(text);
        }
    }

    private void av() {
        this.aw.b();
        this.ax.a();
    }

    @j(a = ThreadMode.MAIN)
    public void onCodeParsedFromSMS(final com.roblox.client.l.o oVar) {
        k.c("SignUpCodeVerificationFragment", "Code: " + oVar.f6435a);
        this.aw.setTextBoxText(oVar.f6435a);
        new Handler().postDelayed(new Runnable() { // from class: com.roblox.client.signup.multiscreen.c.b.6
            @Override // java.lang.Runnable
            public void run() {
                b.this.as.a_(oVar.f6435a);
            }
        }, 500L);
    }
}
