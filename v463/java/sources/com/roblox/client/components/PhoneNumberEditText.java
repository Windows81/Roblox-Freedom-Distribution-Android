package com.roblox.client.components;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import com.roblox.client.o;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class PhoneNumberEditText extends RbxEditText {
    private LinearLayout g;
    private RbxEditText h;

    public PhoneNumberEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        f();
    }

    public RbxEditText getPhonePrefixField() {
        return this.h;
    }

    public void setPhonePrefixText(String str) {
        this.h.setTextBoxText(str);
    }

    public void setPhonePrefixOnClickListener(View.OnClickListener onClickListener) {
        this.h.setOnClickListener(onClickListener);
    }

    @Override // com.roblox.client.components.RbxEditText
    public void a() {
        super.a();
        this.h.a();
    }

    @Override // com.roblox.client.components.RbxEditText
    public void setHintText(int i) {
        super.setHintText(i);
        this.h.setHintText("");
    }

    @Override // com.roblox.client.components.RbxEditText
    public void setHintText(String str) {
        super.setHintText(str);
        this.h.setHintText("");
    }

    @Override // com.roblox.client.components.RbxEditText
    public void a(int i) {
        super.a(i);
        this.h.a("");
    }

    @Override // com.roblox.client.components.RbxEditText
    public void a(String str) {
        super.a(str);
        this.h.a("");
    }

    @Override // com.roblox.client.components.RbxEditText
    public void b(int i) {
        super.b(i);
        this.h.b("");
    }

    @Override // com.roblox.client.components.RbxEditText
    public void b(String str) {
        super.b(str);
        this.h.b("");
    }

    @Override // com.roblox.client.components.RbxEditText
    public void c(String str) {
        super.c(str);
        this.h.c("");
    }

    @Override // com.roblox.client.components.RbxEditText
    public void b() {
        super.b();
        this.h.b();
    }

    @Override // com.roblox.client.components.RbxEditText
    public void c() {
        super.c();
        this.h.c();
    }

    private void f() {
        this.f5793d = false;
        this.g = (LinearLayout) findViewById(o.f.rbxEditTextTopLayout);
        RbxEditText rbxEditText = new RbxEditText(getContext());
        this.h = rbxEditText;
        rbxEditText.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
        this.h.getBottomContainer().setVisibility(8);
        this.h.getTopContainer().setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        EditText textBox = this.h.getTextBox();
        textBox.setId(o.f.view_phone_code_field);
        textBox.setFocusable(false);
        textBox.setKeyListener(null);
        textBox.setFocusableInTouchMode(false);
        this.g.addView(this.h, 0);
        setTextBoxInput("phone");
    }
}
