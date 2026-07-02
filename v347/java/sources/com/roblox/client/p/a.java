package com.roblox.client.p;

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
import com.roblox.client.R;
import com.roblox.client.RobloxSettings;
import com.roblox.client.components.RbxEditText;
import com.roblox.client.components.RbxProgressButton;
import com.roblox.client.http.h;
import com.roblox.client.i;
import com.roblox.client.i.f;
import com.roblox.client.m;
import com.roblox.client.p;
import com.roblox.client.p.b;
import com.roblox.client.util.a.e;
import com.roblox.client.util.g;

/* JADX INFO: loaded from: classes.dex */
public class a extends m implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f7523b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f7524c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f7525d;
    private CheckBox e;
    private RbxEditText f;
    private EditText g;
    private TextView h;
    private TextView i;
    private RbxProgressButton j;
    private b k;
    private InterfaceC0123a m;
    private View.OnTouchListener l = new View.OnTouchListener() { // from class: com.roblox.client.p.a.1
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    b.a f7522a = new b.a() { // from class: com.roblox.client.p.a.4
        @Override // com.roblox.client.p.b.a
        public void a(long j) {
            if (a.this.m != null) {
                a.this.m.a(j);
            }
        }

        @Override // com.roblox.client.p.b.a
        public void a(String str, String str2) {
            a.this.f7523b = str;
            a.this.f7524c = str2;
            a.this.showToast(R.string.Authentication_2SV_Response_CodeSent, 0);
            a.this.a(false, "");
        }

        @Override // com.roblox.client.p.b.a
        public void a() {
            a.this.a(true, a.this.getString(R.string.Authentication_2SV_Response_InvalidCode));
        }

        @Override // com.roblox.client.p.b.a
        public void a(int i) {
            a.this.alertMessageFromServerOkButton(b(i));
            a.this.a(false, "");
        }

        private String b(int i) {
            g.b("Fragment2SV", "ErrorCode = " + i);
            switch (i) {
                case -1005:
                    return a.this.getString(R.string.Authentication_2SV_Response_TooManyAttempts);
                case -1004:
                    return a.this.getString(R.string.Authentication_2SV_Response_FeatureNotAvailable);
                case -1003:
                    return a.this.getString(R.string.Authentication_2SV_Response_AccountIssueErrorTryAgain);
                case -1002:
                    return a.this.getString(R.string.Authentication_2SV_Response_VerificationDisabled);
                case -1001:
                    return a.this.getString(R.string.Authentication_2SV_Response_UserNotFound);
                case -1000:
                    return a.this.getString(R.string.Authentication_2SV_Response_SystemErrorReturnToLogin);
                default:
                    return a.this.getString(R.string.Authentication_2SV_Response_SystemErrorReturnToLogin);
            }
        }
    };

    /* JADX INFO: renamed from: com.roblox.client.p.a$a, reason: collision with other inner class name */
    public interface InterfaceC0123a {
        void a(long j);
    }

    public static a a(String str, String str2, String str3) {
        a aVar = new a();
        Bundle bundle = new Bundle();
        bundle.putString("nonce", str);
        bundle.putString("mediaType", str2);
        bundle.putString("username", str3);
        aVar.setArguments(bundle);
        return aVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.support.v4.app.g, android.support.v4.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        g.b("Fragment2SV", "onAttach()");
        if (context instanceof InterfaceC0123a) {
            this.m = (InterfaceC0123a) context;
            return;
        }
        throw new RuntimeException(context.toString() + " must implement OnFragmentInteractionListener.");
    }

    @Override // android.support.v4.app.g, android.support.v4.app.Fragment
    public void onDetach() {
        super.onDetach();
        g.b("Fragment2SV", "onDetach()");
        this.m = null;
    }

    @Override // com.roblox.client.m, android.support.v4.app.g, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.f7523b = getArguments().getString("nonce");
            this.f7524c = getArguments().getString("mediaType");
            this.f7525d = getArguments().getString("username");
            this.k = new b(f.a(), new h());
        }
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_2_sv, viewGroup, false);
        this.f = (RbxEditText) viewInflate.findViewById(R.id.edittext_verify_code);
        this.g = this.f.getTextBox();
        this.g.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.roblox.client.p.a.2
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                if (i != 2 && i != 6) {
                    return false;
                }
                a.this.a();
                return true;
            }
        });
        this.h = (TextView) viewInflate.findViewById(R.id.textview_2sv_resend_code);
        this.i = (TextView) viewInflate.findViewById(R.id.textview_2sv_support);
        this.j = (RbxProgressButton) viewInflate.findViewById(R.id.button_verify_code);
        this.e = (CheckBox) viewInflate.findViewById(R.id.checkbox_2sv_trust_device);
        String string = getString(R.string.CommonUI_Messages_Response_RobloxSupport);
        String string2 = getString(R.string.Authentication_2SV_Label_NeedHelp, string);
        int iIndexOf = string2.indexOf(string);
        com.roblox.client.util.a.b.a(this.i, string2, new e(RobloxSettings.contactRobloxSupportUrl(), getActivity(), string, iIndexOf, string.length() + iIndexOf));
        if ("Sms".equals(this.f7524c)) {
            ((ImageView) viewInflate.findViewById(R.id.imageview_2sv_logo)).setImageResource(R.drawable.two_step_verification_logo_sms);
            ((TextView) viewInflate.findViewById(R.id.textview_2sv_message)).setText(R.string.Authentication_2SV_Label_EnterTextCode);
        }
        this.h.setOnClickListener(this);
        this.g.requestFocus();
        this.j.setOnRbxClickedListener(new com.roblox.client.components.g() { // from class: com.roblox.client.p.a.3
            @Override // com.roblox.client.components.g
            public void a(View view) {
                a.this.a();
            }
        });
        return viewInflate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        a(false);
        Editable text = this.g.getText();
        if (text != null && a(text.toString())) {
            this.k.a(this.f7525d, text.toString(), this.f7523b, this.e.isChecked(), this.f7522a);
        } else {
            this.g.setText("");
            a(true, getString(R.string.Authentication_2SV_Response_TwoStepEmptyCode));
        }
    }

    private void b() {
        a(true);
        this.g.setText("");
        this.k.a(this.f7525d, this.f7523b, this.f7522a);
    }

    private boolean a(String str) {
        return !TextUtils.isEmpty(str.trim());
    }

    private void a(boolean z) {
        if (!z) {
            this.j.a(RbxProgressButton.b.SHOW_PROGRESS, R.string.CommonUI_Messages_Action_Validating);
        }
        this.f.a();
        this.g.clearFocus();
        this.h.setOnTouchListener(this.l);
        this.i.setOnTouchListener(this.l);
        this.g.setEnabled(false);
        p.b(this.g);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z, String str) {
        if (z) {
            this.f.a(str);
        }
        this.j.a(RbxProgressButton.b.SHOW_BUTTON);
        this.h.setOnTouchListener(null);
        this.i.setOnTouchListener(null);
        this.g.setEnabled(true);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.textview_2sv_resend_code /* 2131231183 */:
                b();
                break;
        }
    }

    @Override // android.support.v4.app.g, android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        i.b("twoStepVerification");
    }
}
