package com.roblox.client.components;

import android.content.Context;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.d.a.t;
import com.roblox.client.R;

/* JADX INFO: loaded from: classes.dex */
public class n extends ImageView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f6763a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f6764b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f6765c;

    public n(Context context, String str, String str2, String str3) {
        super(context);
        this.f6763a = str3;
        this.f6765c = str;
        this.f6764b = str2;
        a(false);
    }

    public n(Context context, String str, String str2, String str3, boolean z) {
        this(context, str, str2, str3);
        a(z);
    }

    private void a(boolean z) {
        LinearLayout.LayoutParams layoutParams;
        if (z) {
            layoutParams = new LinearLayout.LayoutParams(0, (int) getResources().getDimension(R.dimen.morePageEventHeight), 1.0f);
        } else {
            layoutParams = new LinearLayout.LayoutParams(-1, (int) getResources().getDimension(R.dimen.morePageEventHeight));
        }
        int iA = (int) com.roblox.client.p.a(getContext(), 5);
        layoutParams.setMargins(iA, iA, iA, iA);
        setLayoutParams(layoutParams);
        setBackgroundResource(R.drawable.more_events_button_background);
        getEventImage();
    }

    private void getEventImage() {
        if (!TextUtils.isEmpty(this.f6763a)) {
            t.a(getContext()).a(this.f6763a).a(t.e.HIGH).a(this);
        }
    }

    public String getEventUrl() {
        return this.f6764b;
    }

    public String getEventName() {
        return this.f6765c;
    }
}
