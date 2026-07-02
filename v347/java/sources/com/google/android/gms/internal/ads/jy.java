package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.text.TextUtils;
import android.webkit.WebSettings;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(17)
public class jy extends ka {
    @Override // com.google.android.gms.internal.ads.js
    public final Drawable a(Context context, Bitmap bitmap, boolean z, float f) {
        if (!z || f <= 0.0f || f > 25.0f) {
            return new BitmapDrawable(context.getResources(), bitmap);
        }
        try {
            Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, bitmap.getWidth(), bitmap.getHeight(), false);
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmapCreateScaledBitmap);
            RenderScript renderScriptCreate = RenderScript.create(context);
            ScriptIntrinsicBlur scriptIntrinsicBlurCreate = ScriptIntrinsicBlur.create(renderScriptCreate, Element.U8_4(renderScriptCreate));
            Allocation allocationCreateFromBitmap = Allocation.createFromBitmap(renderScriptCreate, bitmapCreateScaledBitmap);
            Allocation allocationCreateFromBitmap2 = Allocation.createFromBitmap(renderScriptCreate, bitmapCreateBitmap);
            scriptIntrinsicBlurCreate.setRadius(f);
            scriptIntrinsicBlurCreate.setInput(allocationCreateFromBitmap);
            scriptIntrinsicBlurCreate.forEach(allocationCreateFromBitmap2);
            allocationCreateFromBitmap2.copyTo(bitmapCreateBitmap);
            return new BitmapDrawable(context.getResources(), bitmapCreateBitmap);
        } catch (RuntimeException e) {
            return new BitmapDrawable(context.getResources(), bitmap);
        }
    }

    @Override // com.google.android.gms.internal.ads.js
    public final String a(Context context) {
        lr lrVarA = lr.a();
        if (TextUtils.isEmpty(lrVarA.f5271a)) {
            lrVarA.f5271a = com.google.android.gms.common.util.c.a() ? (String) lp.a(context, new ls(lrVarA, context)) : (String) lp.a(context, new lt(lrVarA, com.google.android.gms.common.k.e(context), context));
        }
        return lrVarA.f5271a;
    }

    @Override // com.google.android.gms.internal.ads.ka, com.google.android.gms.internal.ads.jv, com.google.android.gms.internal.ads.js
    public final boolean a(Context context, WebSettings webSettings) {
        super.a(context, webSettings);
        webSettings.setMediaPlaybackRequiresUserGesture(false);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.js
    public final void b(Context context) {
        lr lrVarA = lr.a();
        jd.a("Updating user agent.");
        String defaultUserAgent = WebSettings.getDefaultUserAgent(context);
        if (!defaultUserAgent.equals(lrVarA.f5271a)) {
            Context contextE = com.google.android.gms.common.k.e(context);
            if (com.google.android.gms.common.util.c.a() || contextE == null) {
                SharedPreferences.Editor editorPutString = context.getSharedPreferences("admob_user_agent", 0).edit().putString("user_agent", WebSettings.getDefaultUserAgent(context));
                if (contextE == null) {
                    editorPutString.apply();
                } else {
                    com.google.android.gms.common.util.q.a(context, editorPutString, "admob_user_agent");
                }
            }
            lrVarA.f5271a = defaultUserAgent;
        }
        jd.a("User agent is updated.");
    }
}
