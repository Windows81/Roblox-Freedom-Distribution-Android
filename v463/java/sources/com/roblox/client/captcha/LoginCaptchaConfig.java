package com.roblox.client.captcha;

import android.os.Parcel;
import android.os.Parcelable;
import com.roblox.client.m.c;
import com.roblox.client.u;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class LoginCaptchaConfig implements CaptchaConfig {
    public static final Parcelable.Creator<LoginCaptchaConfig> CREATOR = new Parcelable.Creator<LoginCaptchaConfig>() { // from class: com.roblox.client.captcha.LoginCaptchaConfig.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public LoginCaptchaConfig createFromParcel(Parcel parcel) {
            return new LoginCaptchaConfig(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public LoginCaptchaConfig[] newArray(int i) {
            return new LoginCaptchaConfig[i];
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f5755a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f5756b;

    public enum a {
        USERNAME,
        EMAIL,
        PHONE_NUMBER
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public LoginCaptchaConfig(a aVar, String str) {
        this.f5755a = a(aVar);
        this.f5756b = str;
    }

    @Override // com.roblox.client.captcha.CaptchaConfig
    public String a() {
        return b() ? u.b(this.f5755a, this.f5756b) : u.a(this.f5755a, this.f5756b);
    }

    public boolean b() {
        return c.a().aM();
    }

    public String toString() {
        return "CredentialType: " + this.f5755a + ". CredentialValue: " + this.f5756b;
    }

    /* JADX INFO: renamed from: com.roblox.client.captcha.LoginCaptchaConfig$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f5757a;

        static {
            int[] iArr = new int[a.values().length];
            f5757a = iArr;
            try {
                iArr[a.EMAIL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f5757a[a.PHONE_NUMBER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f5757a[a.USERNAME.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static String a(a aVar) {
        int i = AnonymousClass2.f5757a[aVar.ordinal()];
        return i != 1 ? i != 2 ? "username" : "phonenumber" : "email";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f5755a);
        parcel.writeString(this.f5756b);
    }

    private LoginCaptchaConfig(Parcel parcel) {
        this.f5755a = parcel.readString();
        this.f5756b = parcel.readString();
    }
}
