package com.roblox.client;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatEditText;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class RbxKeyboard extends AppCompatEditText {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    long f5572a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f5573b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f5574c;

    public interface a {
        void a();

        void a(long j);
    }

    private void b() {
    }

    public RbxKeyboard(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5574c = 0.0f;
    }

    public void setAdapter(a aVar) {
        this.f5573b = aVar;
    }

    public void setCurrentTextBox(long j) {
        this.f5572a = j;
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onKeyPreIme(int i, KeyEvent keyEvent) {
        a();
        if (keyEvent.getKeyCode() == 4 && keyEvent.getAction() == 1) {
            a(this.f5572a);
            this.f5572a = 0L;
            setVisibility(8);
            setText("");
            x.a(getContext(), this);
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.widget.TextView
    protected void onSelectionChanged(int i, int i2) {
        if (isInEditMode()) {
            return;
        }
        a();
    }

    public void setRbxLetterSpacing(float f) {
        this.f5574c = f;
        if (Build.VERSION.SDK_INT >= 21) {
            setLetterSpacing(this.f5574c);
        } else {
            b();
        }
    }

    @Override // android.widget.EditText, android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        super.setText(charSequence, bufferType);
        if (Build.VERSION.SDK_INT < 21) {
            b();
        }
    }

    public void a(long j) {
        a aVar = this.f5573b;
        if (aVar != null) {
            aVar.a(j);
        }
    }

    public void a() {
        a aVar = this.f5573b;
        if (aVar != null) {
            aVar.a();
        }
    }
}
