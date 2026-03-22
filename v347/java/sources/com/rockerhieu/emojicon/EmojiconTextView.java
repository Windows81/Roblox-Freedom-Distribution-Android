package com.rockerhieu.emojicon;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.TextView;
import com.rockerhieu.emojicon.c;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class EmojiconTextView extends TextView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f8057a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f8058b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f8059c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f8060d;
    private int e;
    private boolean f;

    public EmojiconTextView(Context context) {
        super(context);
        this.f8060d = 0;
        this.e = -1;
        this.f = false;
        a(null);
    }

    public EmojiconTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8060d = 0;
        this.e = -1;
        this.f = false;
        a(attributeSet);
    }

    public EmojiconTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f8060d = 0;
        this.e = -1;
        this.f = false;
        a(attributeSet);
    }

    private void a(AttributeSet attributeSet) {
        this.f8059c = (int) getTextSize();
        if (attributeSet == null) {
            this.f8057a = (int) getTextSize();
        } else {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, c.b.Emojicon);
            this.f8057a = (int) typedArrayObtainStyledAttributes.getDimension(c.b.Emojicon_emojiconSize, getTextSize());
            this.f8058b = typedArrayObtainStyledAttributes.getInt(c.b.Emojicon_emojiconAlignment, 1);
            this.f8060d = typedArrayObtainStyledAttributes.getInteger(c.b.Emojicon_emojiconTextStart, 0);
            this.e = typedArrayObtainStyledAttributes.getInteger(c.b.Emojicon_emojiconTextLength, -1);
            this.f = typedArrayObtainStyledAttributes.getBoolean(c.b.Emojicon_emojiconUseSystemDefault, false);
            typedArrayObtainStyledAttributes.recycle();
        }
        setText(getText());
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        CharSequence charSequence2;
        if (TextUtils.isEmpty(charSequence)) {
            charSequence2 = charSequence;
        } else {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequence);
            a.a(getContext(), spannableStringBuilder, this.f8057a, this.f8058b, this.f8059c, this.f8060d, this.e, this.f);
            charSequence2 = spannableStringBuilder;
        }
        super.setText(charSequence2, bufferType);
    }

    public void setEmojiconSize(int i) {
        this.f8057a = i;
        super.setText(getText());
    }

    public void setUseSystemDefault(boolean z) {
        this.f = z;
    }
}
