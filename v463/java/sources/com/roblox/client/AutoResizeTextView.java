package com.roblox.client;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.RectF;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.method.SingleLineTransformationMethod;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.util.TypedValue;
import android.widget.TextView;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class AutoResizeTextView extends TextView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private RectF f5562a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private RectF f5563b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private SparseIntArray f5564c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextPaint f5565d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f5566e;
    private float f;
    private float g;
    private float h;
    private int i;
    private int j;
    private boolean k;
    private boolean l;
    private final a m;

    private interface a {
        int a(int i, RectF rectF);
    }

    public AutoResizeTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5562a = new RectF();
        this.f = 1.0f;
        this.g = 0.0f;
        this.h = 20.0f;
        this.k = true;
        this.m = new a() { // from class: com.roblox.client.AutoResizeTextView.1
            @Override // com.roblox.client.AutoResizeTextView.a
            public int a(int i, RectF rectF) {
                AutoResizeTextView.this.f5565d.setTextSize(i);
                String string = AutoResizeTextView.this.getText().toString();
                if (AutoResizeTextView.this.getTransformationMethod() instanceof SingleLineTransformationMethod) {
                    AutoResizeTextView.this.f5562a.bottom = AutoResizeTextView.this.f5565d.getFontSpacing();
                    AutoResizeTextView.this.f5562a.right = AutoResizeTextView.this.f5565d.measureText(string);
                } else {
                    StaticLayout staticLayout = new StaticLayout(string, AutoResizeTextView.this.f5565d, AutoResizeTextView.this.i, Layout.Alignment.ALIGN_NORMAL, AutoResizeTextView.this.f, AutoResizeTextView.this.g, true);
                    AutoResizeTextView.this.f5562a.bottom = staticLayout.getHeight();
                    int lineWidth = -1;
                    for (int i2 = 0; i2 < staticLayout.getLineCount(); i2++) {
                        if (lineWidth < staticLayout.getLineWidth(i2)) {
                            lineWidth = (int) staticLayout.getLineWidth(i2);
                        }
                    }
                    AutoResizeTextView.this.f5562a.right = lineWidth;
                }
                AutoResizeTextView.this.f5562a.offsetTo(0.0f, 0.0f);
                return rectF.contains(AutoResizeTextView.this.f5562a) ? -1 : 1;
            }
        };
        a();
    }

    private void a() {
        this.f5565d = new TextPaint(getPaint());
        this.f5566e = getTextSize();
        this.f5563b = new RectF();
        this.f5564c = new SparseIntArray();
        if (this.j == 0) {
            this.j = -1;
        }
        this.l = true;
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        super.setText(charSequence, bufferType);
        a(charSequence.toString());
    }

    @Override // android.widget.TextView
    public void setTextSize(float f) {
        this.f5566e = f;
        this.f5564c.clear();
        a(getText().toString());
    }

    @Override // android.widget.TextView
    public void setSingleLine() {
        super.setSingleLine();
        this.j = 1;
        b();
    }

    @Override // android.widget.TextView
    public void setSingleLine(boolean z) {
        super.setSingleLine(z);
        if (z) {
            this.j = 1;
        } else {
            this.j = -1;
        }
        b();
    }

    @Override // android.widget.TextView
    public void setLines(int i) {
        super.setLines(i);
        this.j = i;
        b();
    }

    @Override // android.widget.TextView
    public void setTextSize(int i, float f) {
        Resources resources;
        Context context = getContext();
        if (context == null) {
            resources = Resources.getSystem();
        } else {
            resources = context.getResources();
        }
        this.f5566e = TypedValue.applyDimension(i, f, resources.getDisplayMetrics());
        this.f5564c.clear();
        a(getText().toString());
    }

    @Override // android.widget.TextView
    public void setLineSpacing(float f, float f2) {
        super.setLineSpacing(f, f2);
        this.f = f2;
        this.g = f;
    }

    public void setMinTextSize(float f) {
        this.h = f;
        b();
    }

    private void b() {
        a(getText().toString());
    }

    private void a(String str) {
        if (this.l) {
            int i = (int) this.h;
            int measuredHeight = (getMeasuredHeight() - getCompoundPaddingBottom()) - getCompoundPaddingTop();
            int measuredWidth = (getMeasuredWidth() - getCompoundPaddingLeft()) - getCompoundPaddingRight();
            this.i = measuredWidth;
            this.f5563b.right = measuredWidth;
            this.f5563b.bottom = measuredHeight;
            super.setTextSize(0, a(i, (int) this.f5566e, this.m, this.f5563b));
        }
    }

    private int a(int i, int i2, a aVar, RectF rectF) {
        if (!this.k) {
            return b(i, i2, aVar, rectF);
        }
        String string = getText().toString();
        int length = string == null ? 0 : string.length();
        int i3 = this.f5564c.get(length);
        if (i3 != 0) {
            return i3;
        }
        int iB = b(i, i2, aVar, rectF);
        this.f5564c.put(length, iB);
        return iB;
    }

    private static int b(int i, int i2, a aVar, RectF rectF) {
        int i3 = i2 - 1;
        int i4 = i;
        while (i <= i3) {
            i4 = (i + i3) >>> 1;
            int iA = aVar.a(i4, rectF);
            if (iA >= 0) {
                if (iA <= 0) {
                    break;
                }
                i4--;
                i3 = i4;
            } else {
                int i5 = i4 + 1;
                i4 = i;
                i = i5;
            }
        }
        return i4;
    }

    @Override // android.widget.TextView
    protected void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        b();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        this.f5564c.clear();
        super.onSizeChanged(i, i2, i3, i4);
        if (i == i3 && i2 == i4) {
            return;
        }
        b();
    }
}
