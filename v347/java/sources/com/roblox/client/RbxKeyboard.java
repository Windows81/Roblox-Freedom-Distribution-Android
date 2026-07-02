package com.roblox.client;

import android.content.Context;
import android.os.Build;
import android.support.v7.widget.AppCompatEditText;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.widget.TextView;
import com.roblox.engine.jni.NativeGLInterface;

/* JADX INFO: loaded from: classes.dex */
public class RbxKeyboard extends AppCompatEditText {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    long f6421a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f6422b;

    public RbxKeyboard(Context context) {
        super(context);
        this.f6422b = 0.0f;
    }

    public RbxKeyboard(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6422b = 0.0f;
    }

    public void setCurrentTextBox(long j) {
        this.f6421a = j;
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onKeyPreIme(int i, KeyEvent keyEvent) {
        a();
        if (keyEvent.getKeyCode() == 4 && keyEvent.getAction() == 1) {
            a(this.f6421a);
            this.f6421a = 0L;
            setVisibility(8);
            setText("");
            p.a(getContext(), this);
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.widget.TextView
    protected void onSelectionChanged(int i, int i2) {
        if (!isInEditMode()) {
            a();
        }
    }

    public void setRbxLetterSpacing(float f) {
        this.f6422b = f;
        if (Build.VERSION.SDK_INT >= 21) {
            setLetterSpacing(this.f6422b);
        } else {
            b();
        }
    }

    private void b() {
    }

    @Override // android.widget.EditText, android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        super.setText(charSequence, bufferType);
        if (Build.VERSION.SDK_INT < 21) {
            b();
        }
    }

    public void a(long j) {
        FragmentGlView singleton = FragmentGlView.getSingleton();
        if (singleton != null) {
            if (!singleton.isSurfaceCreated()) {
                com.roblox.client.util.g.d("rbx.keyboard", "releaseFocusNative() called unexpectedly");
            } else {
                NativeGLInterface.nativeReleaseFocus(j);
            }
        }
    }

    public void a() {
        FragmentGlView singleton = FragmentGlView.getSingleton();
        if (singleton != null) {
            singleton.syncTextboxTextAndCursorPosition();
        }
    }
}
