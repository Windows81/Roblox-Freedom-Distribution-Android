package com.appsflyer.internal.model.event;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public abstract class Purchase extends BackgroundEvent {
    Purchase() {
        this(null, null, null);
    }

    Purchase(String str, Boolean bool, Context context) {
        super(str, Boolean.FALSE, null, bool, context);
    }
}
