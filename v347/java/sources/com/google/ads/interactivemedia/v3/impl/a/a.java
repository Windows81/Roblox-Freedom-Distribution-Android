package com.google.ads.interactivemedia.v3.impl.a;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.Shape;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class a extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private d f2786a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TextView f2787b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TextView f2788c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<InterfaceC0059a> f2789d;

    /* JADX INFO: renamed from: com.google.ads.interactivemedia.v3.impl.a.a$a, reason: collision with other inner class name */
    public interface InterfaceC0059a {
        void c();
    }

    public a(Context context, d dVar) {
        this(context, dVar, new TextView(context), new TextView(context));
    }

    a(Context context, d dVar, TextView textView, TextView textView2) {
        super(context);
        this.f2789d = new ArrayList();
        this.f2786a = dVar;
        this.f2787b = textView;
        this.f2788c = textView2;
        textView.setTextColor(dVar.i);
        textView.setIncludeFontPadding(false);
        textView.setGravity(16);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setSingleLine();
        int iA = c.a(dVar.l, getResources().getDisplayMetrics().density);
        textView.setPadding(iA, iA, iA, iA);
        addView(textView, new LinearLayout.LayoutParams(-2, -2, 1.0f));
        if (dVar.m) {
            textView2.setTextColor(dVar.p);
            textView2.setTextSize(dVar.q);
            textView2.setText(dVar.o);
            textView2.setIncludeFontPadding(false);
            textView2.setPadding(10, 10, 10, 10);
            textView2.setGravity(16);
            textView2.setEllipsize(TextUtils.TruncateAt.END);
            textView2.setSingleLine();
            ShapeDrawable shapeDrawable = new ShapeDrawable(new Shape() { // from class: com.google.ads.interactivemedia.v3.impl.a.a.1
                @Override // android.graphics.drawable.shapes.Shape
                public void draw(Canvas canvas, Paint paint) {
                    canvas.drawLine(0.0f, 0.0f, 0.0f, getHeight(), paint);
                }
            });
            shapeDrawable.getPaint().setColor(dVar.f);
            shapeDrawable.getPaint().setStrokeWidth(dVar.g);
            shapeDrawable.getPaint().setStyle(Paint.Style.STROKE);
            textView2.setBackgroundDrawable(shapeDrawable);
            textView2.setOnClickListener(new View.OnClickListener() { // from class: com.google.ads.interactivemedia.v3.impl.a.a.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    a.this.a();
                }
            });
            ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            textView2.setLayoutParams(layoutParams);
            addView(textView2, layoutParams);
        }
    }

    public void a(String str) {
        this.f2787b.setText(str);
    }

    public void b(String str) {
        this.f2788c.setText(str);
    }

    public void a(InterfaceC0059a interfaceC0059a) {
        this.f2789d.add(interfaceC0059a);
    }

    protected void a() {
        Iterator<InterfaceC0059a> it = this.f2789d.iterator();
        while (it.hasNext()) {
            it.next().c();
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, this.f2786a.f2800c);
        gradientDrawable.setBounds(0, 0, i, i2);
        ShapeDrawable shapeDrawable = new ShapeDrawable(new Shape() { // from class: com.google.ads.interactivemedia.v3.impl.a.a.3
            @Override // android.graphics.drawable.shapes.Shape
            public void draw(Canvas canvas, Paint paint) {
                canvas.drawLine(0.0f, getHeight(), getWidth(), getHeight(), paint);
            }
        });
        shapeDrawable.getPaint().setColor(this.f2786a.f2801d);
        shapeDrawable.getPaint().setStrokeWidth(this.f2786a.e);
        shapeDrawable.getPaint().setStyle(Paint.Style.STROKE);
        shapeDrawable.setBounds(0, 0, i, i2);
        setBackgroundDrawable(new LayerDrawable(new Drawable[]{gradientDrawable, shapeDrawable}));
    }
}
