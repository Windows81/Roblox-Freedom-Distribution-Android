package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.util.Iterator;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class asr extends RelativeLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final float[] f4446a = {5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private AnimationDrawable f4447b;

    public asr(Context context, aso asoVar, RelativeLayout.LayoutParams layoutParams) {
        super(context);
        com.google.android.gms.common.internal.w.a(asoVar);
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(f4446a, null, null));
        shapeDrawable.getPaint().setColor(asoVar.d());
        setLayoutParams(layoutParams);
        com.google.android.gms.ads.internal.aw.g().a(this, shapeDrawable);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        if (!TextUtils.isEmpty(asoVar.a())) {
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
            TextView textView = new TextView(context);
            textView.setLayoutParams(layoutParams3);
            textView.setId(1195835393);
            textView.setTypeface(Typeface.DEFAULT);
            textView.setText(asoVar.a());
            textView.setTextColor(asoVar.e());
            textView.setTextSize(asoVar.f());
            aoo.a();
            int iA = ly.a(context, 4);
            aoo.a();
            textView.setPadding(iA, 0, ly.a(context, 4), 0);
            addView(textView);
            layoutParams2.addRule(1, textView.getId());
        }
        ImageView imageView = new ImageView(context);
        imageView.setLayoutParams(layoutParams2);
        imageView.setId(1195835394);
        List<ass> listC = asoVar.c();
        if (listC != null && listC.size() > 1) {
            this.f4447b = new AnimationDrawable();
            Iterator<ass> it = listC.iterator();
            while (it.hasNext()) {
                try {
                    this.f4447b.addFrame((Drawable) com.google.android.gms.b.b.a(it.next().a()), asoVar.g());
                } catch (Exception e) {
                    jd.b("Error while getting drawable.", e);
                }
            }
            com.google.android.gms.ads.internal.aw.g().a(imageView, this.f4447b);
        } else if (listC.size() == 1) {
            try {
                imageView.setImageDrawable((Drawable) com.google.android.gms.b.b.a(listC.get(0).a()));
            } catch (Exception e2) {
                jd.b("Error while getting drawable.", e2);
            }
        }
        addView(imageView);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        if (this.f4447b != null) {
            this.f4447b.start();
        }
        super.onAttachedToWindow();
    }
}
