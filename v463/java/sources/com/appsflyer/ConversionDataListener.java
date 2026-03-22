package com.appsflyer;

import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public interface ConversionDataListener {
    void onConversionDataLoaded(Map<String, Object> map);

    void onConversionFailure(String str);
}
