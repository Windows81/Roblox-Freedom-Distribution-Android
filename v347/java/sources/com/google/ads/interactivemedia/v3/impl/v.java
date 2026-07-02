package com.google.ads.interactivemedia.v3.impl;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import com.google.ads.interactivemedia.v3.impl.data.CompanionData;
import java.io.IOException;
import java.net.URL;

/* JADX INFO: loaded from: classes.dex */
public class v extends ImageView implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CompanionData f2902a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final x f2903b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f2904c;

    public v(Context context, x xVar, CompanionData companionData, String str) {
        super(context);
        this.f2903b = xVar;
        this.f2902a = companionData;
        this.f2904c = str;
        setOnClickListener(this);
    }

    Bitmap a(String str) throws IOException {
        return BitmapFactory.decodeStream(new URL(str).openConnection().getInputStream());
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.ads.interactivemedia.v3.impl.v$1] */
    public void a() {
        new AsyncTask<Void, Void, Bitmap>() { // from class: com.google.ads.interactivemedia.v3.impl.v.1

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            Exception f2905a = null;

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Bitmap doInBackground(Void... voidArr) {
                try {
                    return v.this.a(v.this.f2902a.src());
                } catch (IOException e) {
                    this.f2905a = e;
                    return null;
                }
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void onPostExecute(Bitmap bitmap) {
                if (bitmap == null) {
                    String strValueOf = String.valueOf(v.this.f2902a.src());
                    String strValueOf2 = String.valueOf(this.f2905a);
                    Log.e("IMASDK", new StringBuilder(String.valueOf(strValueOf).length() + 33 + String.valueOf(strValueOf2).length()).append("Loading image companion ").append(strValueOf).append(" failed: ").append(strValueOf2).toString());
                } else {
                    v.this.b();
                    v.this.setImageBitmap(bitmap);
                }
            }
        }.execute(new Void[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        this.f2903b.a(this.f2902a.companionId(), this.f2904c);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f2903b.d(this.f2902a.clickThroughUrl());
    }
}
