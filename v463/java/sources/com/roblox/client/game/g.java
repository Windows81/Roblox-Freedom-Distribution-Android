package com.roblox.client.game;

import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.roblox.client.RbxKeyboard;
import com.roblox.client.x;
import com.roblox.engine.b;
import com.roblox.engine.jni.NativeGLInterface;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class g implements o {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private RbxKeyboard f6282b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private b.a f6284d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f6281a = "rbx.game";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f6283c = 0;

    @Override // com.roblox.client.game.o
    public void a(String str) {
    }

    @Override // com.roblox.client.game.o
    public void b() {
    }

    public g(b.a aVar, RbxKeyboard rbxKeyboard) {
        this.f6284d = aVar;
        this.f6282b = rbxKeyboard;
        rbxKeyboard.setBackgroundColor(-1);
        this.f6282b.setTextColor(-16777216);
        this.f6282b.setVisibility(8);
        this.f6282b.setImeOptions(268435460);
        this.f6282b.setSingleLine(true);
        this.f6282b.setText("");
        this.f6282b.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.roblox.client.game.g.1
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                g.this.e();
                if (i != 4 && (!com.roblox.client.m.c.a().cH() || i != 0)) {
                    return false;
                }
                String string = textView.getText().toString();
                if (g.this.c()) {
                    NativeGLInterface.nativePassText(g.this.f6283c, string, true, textView.getSelectionStart());
                } else {
                    com.roblox.client.ae.k.d("rbx.game", "nativePassText not ready");
                }
                g.this.f6282b.setCurrentTextBox(0L);
                textView.setVisibility(8);
                x.a(textView.getContext(), textView);
                return true;
            }
        });
        this.f6282b.addTextChangedListener(new TextWatcher() { // from class: com.roblox.client.game.g.2
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                g.this.e();
                if (g.this.c()) {
                    NativeGLInterface.nativePassText(g.this.f6283c, charSequence.toString(), false, i + i3);
                } else {
                    com.roblox.client.ae.k.d("rbx.game", "nativePassText not ready");
                }
            }
        });
        this.f6282b.setAdapter(new RbxKeyboard.a() { // from class: com.roblox.client.game.g.3
            @Override // com.roblox.client.RbxKeyboard.a
            public void a(long j) {
                if (!g.this.c()) {
                    com.roblox.client.ae.k.d("rbx.keyboard", "releaseFocus() called unexpectedly");
                } else {
                    NativeGLInterface.nativeReleaseFocus(j);
                }
            }

            @Override // com.roblox.client.RbxKeyboard.a
            public void a() {
                g.this.e();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c() {
        return this.f6284d.j_();
    }

    private float d() {
        return this.f6284d.o();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        RbxKeyboard rbxKeyboard = this.f6282b;
        if (rbxKeyboard == null) {
            return;
        }
        NativeGLInterface.syncTextboxTextAndCursorPosition2(rbxKeyboard.getText().toString(), this.f6282b.getSelectionStart());
    }

    @Override // com.roblox.client.game.o
    public void a(long j, boolean z, String str) {
        com.roblox.client.ae.k.c("rbx.game", "showKeyboard: ...");
        this.f6283c = j;
        this.f6282b.setCurrentTextBox(j);
        this.f6282b.setText(str);
        float fD = d();
        int i = z ? 36 : -150;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f6282b.getLayoutParams();
        layoutParams.topMargin = (int) (i * fD);
        this.f6282b.setLayoutParams(layoutParams);
        this.f6282b.setVisibility(0);
        this.f6282b.requestFocus();
        x.a(this.f6282b);
        this.f6282b.setSelection(str.length());
        e();
    }

    @Override // com.roblox.client.game.o
    public void a() {
        com.roblox.client.ae.k.c("rbx.game", "hideKeyboard: ...");
        this.f6283c = 0L;
        this.f6282b.setCurrentTextBox(0L);
        x.a(this.f6282b.getContext(), this.f6282b);
        this.f6282b.setVisibility(8);
    }
}
