package com.appsflyer.internal.model.event;

import android.content.Context;
import com.appsflyer.AFEvent;
import com.appsflyer.AFInAppEventType;

/* JADX INFO: loaded from: classes.dex */
public class Validate extends Purchase {
    public Validate(Context context) {
        super(AFInAppEventType.PURCHASE, Boolean.TRUE, context);
    }

    @Override // com.appsflyer.AFEvent
    public AFEvent urlString(String str) {
        return super.urlString(addChannel(str));
    }
}
