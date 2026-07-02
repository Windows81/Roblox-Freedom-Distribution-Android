package com.roblox.client.signup.multiscreen.b;

import androidx.lifecycle.LiveData;
import com.roblox.client.phonenumber.PhonePrefix;

/* JADX INFO: loaded from: classes.dex */
public interface o {
    LiveData<com.roblox.client.signup.multiscreen.a.f> a();

    LiveData<com.roblox.client.signup.multiscreen.a.f> a(PhonePrefix phonePrefix);

    LiveData<com.roblox.client.signup.multiscreen.a.f> a(String str);

    LiveData<com.roblox.client.signup.multiscreen.a.f> b(String str);

    boolean b();

    com.roblox.client.signup.multiscreen.a.e c();
}
