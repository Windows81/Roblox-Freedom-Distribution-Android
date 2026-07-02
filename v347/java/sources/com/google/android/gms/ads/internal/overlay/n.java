package com.google.android.gms.ads.internal.overlay;

import android.R;
import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import com.google.android.gms.internal.ads.aoo;
import com.google.android.gms.internal.ads.cm;
import com.google.android.gms.internal.ads.ly;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class n extends FrameLayout implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ImageButton f3170a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final v f3171b;

    public n(Context context, o oVar, @Nullable v vVar) {
        super(context);
        this.f3171b = vVar;
        setOnClickListener(this);
        this.f3170a = new ImageButton(context);
        this.f3170a.setImageResource(R.drawable.btn_dialog);
        this.f3170a.setBackgroundColor(0);
        this.f3170a.setOnClickListener(this);
        ImageButton imageButton = this.f3170a;
        aoo.a();
        int iA = ly.a(context, oVar.f3172a);
        aoo.a();
        int iA2 = ly.a(context, 0);
        aoo.a();
        int iA3 = ly.a(context, oVar.f3173b);
        aoo.a();
        imageButton.setPadding(iA, iA2, iA3, ly.a(context, oVar.f3175d));
        this.f3170a.setContentDescription("Interstitial close button");
        aoo.a();
        ly.a(context, oVar.e);
        ImageButton imageButton2 = this.f3170a;
        aoo.a();
        int iA4 = ly.a(context, oVar.e + oVar.f3172a + oVar.f3173b);
        aoo.a();
        addView(imageButton2, new FrameLayout.LayoutParams(iA4, ly.a(context, oVar.e + oVar.f3175d), 17));
    }

    public final void a(boolean z) {
        if (z) {
            this.f3170a.setVisibility(8);
        } else {
            this.f3170a.setVisibility(0);
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.f3171b != null) {
            this.f3171b.c();
        }
    }
}
