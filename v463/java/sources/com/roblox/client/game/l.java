package com.roblox.client.game;

import android.content.Context;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.roblox.client.RbxKeyboard;
import com.roblox.client.x;
import com.roblox.engine.jni.NativeGLInterface;
import com.roblox.engine.jni.model.NativeTextBoxInfo;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class l implements o {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected RbxKeyboard f6305b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private NativeTextBoxInfo f6307d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final String f6304a = "rbx.glview.text";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.roblox.engine.e f6306c = new com.roblox.engine.e();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f6308e = false;
    private long f = 0;

    public l(RbxKeyboard rbxKeyboard) {
        this.f6305b = rbxKeyboard;
        rbxKeyboard.setAdapter(new a());
        this.f6305b.setVisibility(8);
        this.f6305b.setImeOptions(268435460);
        this.f6305b.setSingleLine(true);
        this.f6305b.setText("");
        this.f6305b.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.roblox.client.game.l.1
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                com.roblox.client.ae.k.c("rbx.glview.text", "onEditorAction() text:" + ((Object) textView.getText()));
                l.this.c();
                if (com.roblox.client.x.c.m()) {
                    NativeGLInterface.nativeReturnPressedFromOnScreenKeyboard(l.this.f);
                }
                if (l.this.f6308e && com.roblox.client.b.cp()) {
                    return true;
                }
                if (i != 4 && !com.roblox.client.b.cq()) {
                    return false;
                }
                NativeGLInterface.nativePassText(l.this.f, textView.getText().toString(), true, textView.getSelectionStart());
                l.this.f6305b.setCurrentTextBox(0L);
                textView.setVisibility(8);
                x.a(textView.getContext(), textView);
                return true;
            }
        });
        this.f6305b.addTextChangedListener(new TextWatcher() { // from class: com.roblox.client.game.l.2
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                com.roblox.client.ae.k.c("rbx.glview.text", "onTextChanged() text:" + ((Object) charSequence));
                l.this.c();
                NativeGLInterface.nativePassText(l.this.f, charSequence.toString(), false, i + i3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        String string = this.f6305b.getText().toString();
        int selectionStart = this.f6305b.getSelectionStart();
        com.roblox.client.ae.k.c("rbx.glview.text", "syncTextboxTextAndCursorPosition() text:" + string + " pos:" + selectionStart);
        NativeGLInterface.syncTextboxTextAndCursorPosition2(string, selectionStart);
    }

    private void a(EditText editText, NativeTextBoxInfo nativeTextBoxInfo, float f) {
        float f2 = 0.833f;
        switch (nativeTextBoxInfo.font) {
            case 17:
                com.roblox.client.components.h.a(editText, "GothamSSm-Book.otf");
                break;
            case 18:
                com.roblox.client.components.h.a(editText, "GothamSSm-Medium.otf");
                break;
            case 19:
                com.roblox.client.components.h.a(editText, "GothamSSm-Bold.otf");
                break;
            case 20:
                com.roblox.client.components.h.a(editText, "GothamSSm-Black.otf");
                break;
            default:
                com.roblox.client.components.h.a(editText, e(), "SourceSansPro-Regular.ttf");
                f2 = 0.795f;
                break;
        }
        editText.setTextSize(0, nativeTextBoxInfo.fontSize * f * f2);
    }

    private void a(NativeTextBoxInfo nativeTextBoxInfo, EditText editText) {
        int i;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) editText.getLayoutParams();
        float fD = d();
        float f = (nativeTextBoxInfo != null ? nativeTextBoxInfo.x : 0.0f) * fD;
        float f2 = (nativeTextBoxInfo != null ? nativeTextBoxInfo.y : 0.0f) * fD;
        float f3 = (nativeTextBoxInfo != null ? nativeTextBoxInfo.width : 0.0f) * fD;
        float f4 = nativeTextBoxInfo != null ? nativeTextBoxInfo.height : 0.0f;
        layoutParams.topMargin = (int) f2;
        layoutParams.width = (int) f3;
        layoutParams.height = (int) (f4 * fD);
        layoutParams.leftMargin = (int) f;
        editText.setLayoutParams(layoutParams);
        if (nativeTextBoxInfo != null) {
            editText.setTextColor(nativeTextBoxInfo.textColor);
            if (com.roblox.client.b.cp()) {
                this.f6308e = nativeTextBoxInfo.manualFocusRelease;
            }
            switch (nativeTextBoxInfo.textInputType) {
                case 2:
                    i = 2;
                    break;
                case 3:
                    i = 33;
                    break;
                case 4:
                    i = 3;
                    break;
                case 5:
                    i = 129;
                    break;
                case 6:
                    i = 524432;
                    break;
                case 7:
                    i = 524289;
                    break;
                default:
                    i = 1;
                    break;
            }
            int i2 = nativeTextBoxInfo.returnKeyType;
            int i3 = 4;
            if (i2 == 1) {
                i3 = 6;
            } else if (i2 == 2) {
                i3 = 2;
            } else if (i2 == 3) {
                i3 = 5;
            } else if (i2 == 4) {
                i3 = 3;
            }
            if (nativeTextBoxInfo.multiline) {
                i |= 131072;
            }
            if (com.roblox.client.b.cq()) {
                editText.setImeOptions(268435456 | i3);
            }
            if (editText.getInputType() != i) {
                editText.setInputType(i);
                editText.setSelection(editText.getText().length());
            }
            int i4 = nativeTextBoxInfo.xAlignment;
            int i5 = i4 != 0 ? i4 != 1 ? i4 != 2 ? 0 : 1 : 5 : 3;
            int i6 = nativeTextBoxInfo.yAlignment;
            editText.setGravity((i6 != 0 ? i6 != 1 ? i6 != 2 ? 0 : 80 : 16 : 48) | i5);
            a(editText, nativeTextBoxInfo, fD);
        }
        editText.setVisibility(0);
    }

    private float d() {
        return this.f6306c.a(e());
    }

    private Context e() {
        return this.f6305b.getContext();
    }

    @Override // com.roblox.client.game.o
    public void a(long j, boolean z, String str) {
        com.roblox.client.ae.k.c("rbx.glview.text", "showKeyboard() " + str);
        this.f = j;
        this.f6305b.setCurrentTextBox(j);
        this.f6305b.setText(str);
        if (z) {
            a(NativeGLInterface.nativeGetTextBoxInfo(), this.f6305b);
        }
        this.f6305b.setVisibility(0);
        this.f6305b.requestFocus();
        InputMethodManager inputMethodManager = (InputMethodManager) e().getSystemService("input_method");
        if (inputMethodManager != null) {
            inputMethodManager.showSoftInput(this.f6305b, 2);
        }
        this.f6305b.setSelection(str.length());
        c();
    }

    @Override // com.roblox.client.game.o
    public void a() {
        com.roblox.client.ae.k.c("rbx.glview.text", "hideKeyboard()");
        this.f = 0L;
        this.f6305b.setCurrentTextBox(0L);
        x.a(e(), this.f6305b);
        this.f6305b.setVisibility(8);
        this.f6307d = null;
    }

    @Override // com.roblox.client.game.o
    public void a(String str) {
        if (this.f6305b.getText().toString().equals(str)) {
            return;
        }
        this.f6305b.setText(str);
        if (com.roblox.client.b.co()) {
            this.f6305b.setSelection(str.length());
        }
    }

    @Override // com.roblox.client.game.o
    public void b() {
        NativeTextBoxInfo nativeTextBoxInfoNativeGetTextBoxInfo = NativeGLInterface.nativeGetTextBoxInfo();
        if (nativeTextBoxInfoNativeGetTextBoxInfo != null) {
            com.roblox.client.ae.k.c("rbx.glview.text", "onLuaTextBoxPropertyChanged() x:" + nativeTextBoxInfoNativeGetTextBoxInfo.x + " y:" + nativeTextBoxInfoNativeGetTextBoxInfo.y + " width:" + nativeTextBoxInfoNativeGetTextBoxInfo.width + " height:" + nativeTextBoxInfoNativeGetTextBoxInfo.height + " fontSize:" + nativeTextBoxInfoNativeGetTextBoxInfo.fontSize);
        }
        NativeTextBoxInfo nativeTextBoxInfo = this.f6307d;
        if (nativeTextBoxInfoNativeGetTextBoxInfo != nativeTextBoxInfo) {
            if (nativeTextBoxInfoNativeGetTextBoxInfo == null || !nativeTextBoxInfoNativeGetTextBoxInfo.equals(nativeTextBoxInfo)) {
                this.f6307d = nativeTextBoxInfoNativeGetTextBoxInfo;
                a(nativeTextBoxInfoNativeGetTextBoxInfo, this.f6305b);
            }
        }
    }

    class a implements RbxKeyboard.a {
        a() {
        }

        @Override // com.roblox.client.RbxKeyboard.a
        public void a(long j) {
            NativeGLInterface.nativeReleaseFocus(j);
        }

        @Override // com.roblox.client.RbxKeyboard.a
        public void a() {
            l.this.c();
        }
    }
}
