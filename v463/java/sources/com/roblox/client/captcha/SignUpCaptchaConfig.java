package com.roblox.client.captcha;

import android.os.Parcel;
import android.os.Parcelable;
import com.roblox.client.m.c;
import com.roblox.client.u;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class SignUpCaptchaConfig implements CaptchaConfig {
    public static final Parcelable.Creator<SignUpCaptchaConfig> CREATOR = new Parcelable.Creator<SignUpCaptchaConfig>() { // from class: com.roblox.client.captcha.SignUpCaptchaConfig.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public SignUpCaptchaConfig createFromParcel(Parcel parcel) {
            return new SignUpCaptchaConfig();
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public SignUpCaptchaConfig[] newArray(int i) {
            return new SignUpCaptchaConfig[i];
        }
    };

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
    }

    @Override // com.roblox.client.captcha.CaptchaConfig
    public String a() {
        return b() ? u.A() : u.z();
    }

    public boolean b() {
        return c.a().aN();
    }
}
