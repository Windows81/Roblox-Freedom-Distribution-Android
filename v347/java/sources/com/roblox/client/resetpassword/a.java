package com.roblox.client.resetpassword;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v7.app.b;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.roblox.client.R;
import com.roblox.client.RobloxSettings;
import com.roblox.client.b.f;
import com.roblox.client.components.RbxButton;
import com.roblox.client.components.RbxEditText;
import com.roblox.client.components.RbxProgressButton;
import com.roblox.client.i;
import com.roblox.client.i.h;
import com.roblox.client.m;
import com.roblox.client.p;
import com.roblox.client.resetpassword.b;
import com.roblox.client.util.g;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import microsoft.aspnet.signalr.client.Constants;

/* JADX INFO: loaded from: classes.dex */
public class a extends m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    b.a f7769a = new b.a() { // from class: com.roblox.client.resetpassword.a.4
        @Override // com.roblox.client.resetpassword.b.a
        public void a() {
            h.a().e();
            if (a.this.getActivity() != null) {
                a.this.c();
            }
        }

        @Override // com.roblox.client.resetpassword.b.a
        public void a(String str, int i) {
            if (a.this.getActivity() != null) {
                if (str == null) {
                    str = a.this.getString(i);
                }
                a.this.a(str);
            }
        }
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private b f7770b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private RbxEditText f7771c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private RbxProgressButton f7772d;
    private LinearLayout e;
    private InterfaceC0128a f;

    /* JADX INFO: renamed from: com.roblox.client.resetpassword.a$a, reason: collision with other inner class name */
    public interface InterfaceC0128a {
        void x();
    }

    public static a a() {
        return new a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.support.v4.app.g, android.support.v4.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        g.b("FragmentResetPassword", "onAttach()");
        if (context instanceof InterfaceC0128a) {
            this.f = (InterfaceC0128a) context;
            return;
        }
        throw new RuntimeException(context.toString() + " must implement OnFragmentInteractionListener.");
    }

    @Override // android.support.v4.app.g, android.support.v4.app.Fragment
    public void onDetach() {
        super.onDetach();
        g.b("FragmentResetPassword", "onDetach()");
        this.f = null;
    }

    @Override // com.roblox.client.m, android.support.v4.app.g, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f7770b = new b(new f(), new com.roblox.client.http.h());
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.e = (LinearLayout) layoutInflater.inflate(R.layout.fragment_reset_password_container, viewGroup, false);
        layoutInflater.inflate(R.layout.fragment_reset_password_content, (LinearLayout) this.e.findViewById(R.id.fragment_reset_password_inner));
        if (RobloxSettings.isPhone()) {
            ((LinearLayout) this.e.findViewById(R.id.fragment_reset_horizontal_container)).setGravity(48);
            this.e.setWeightSum(1.6f);
        }
        this.f7771c = (RbxEditText) this.e.findViewById(R.id.fragment_reset_password_username_edit);
        this.f7772d = (RbxProgressButton) this.e.findViewById(R.id.fragment_reset_password_reset_button);
        this.f7772d.setOnRbxClickedListener(new com.roblox.client.components.g() { // from class: com.roblox.client.resetpassword.a.1
            @Override // com.roblox.client.components.g
            public void a(View view) {
                a.this.b();
            }
        });
        ((RbxButton) this.e.findViewById(R.id.fragment_reset_password_cancel_button)).setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.resetpassword.a.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                a.this.d();
            }
        });
        EditText textBox = this.f7771c.getTextBox();
        textBox.setImeOptions(6);
        textBox.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.roblox.client.resetpassword.a.3
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                if (i != 2 && i != 6) {
                    return false;
                }
                a.this.b();
                return true;
            }
        });
        textBox.requestFocus();
        p.a(this.e, textBox);
        return this.e;
    }

    @Override // android.support.v4.app.g, android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        i.b("passwordReset");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        this.f7772d.a(RbxProgressButton.b.SHOW_PROGRESS, R.string.Authentication_ResetPassword_Action_Reset);
        a("");
        String strTrim = this.f7771c.getText().trim();
        if (!strTrim.isEmpty()) {
            try {
                i.d("resetPassword", "username", URLEncoder.encode(strTrim, Constants.UTF8_NAME));
                this.f7770b.a(strTrim, this.f7769a);
                return;
            } catch (UnsupportedEncodingException e) {
                a(getString(R.string.Authentication_ResetPassword_Response_EmptyUsername));
                return;
            }
        }
        a(getString(R.string.Authentication_ResetPassword_Response_EmptyUsername));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        this.f7771c.a(str);
        this.f7772d.a(RbxProgressButton.b.SHOW_BUTTON);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        this.f7772d.a(RbxProgressButton.b.SHOW_BUTTON);
        new b.a(getContext()).a(R.string.CommonUI_Features_Heading_Roblox_NormalCase).b(R.string.Authentication_ResetPassword_Response_CheckYourEmail).a(R.string.CommonUI_Features_Action_Ok, new DialogInterface.OnClickListener() { // from class: com.roblox.client.resetpassword.a.5
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                a.this.d();
            }
        }).a(false).c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        p.b(this.e);
        if (this.f != null) {
            this.f.x();
        }
    }
}
