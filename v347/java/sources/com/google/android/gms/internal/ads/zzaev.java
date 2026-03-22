package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.io.DataInputStream;
import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class zzaev extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaev> CREATOR = new dz();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ParcelFileDescriptor f5768a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Parcelable f5769b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f5770c;

    public zzaev(ParcelFileDescriptor parcelFileDescriptor) {
        this.f5768a = parcelFileDescriptor;
        this.f5769b = null;
        this.f5770c = true;
    }

    public zzaev(SafeParcelable safeParcelable) {
        this.f5768a = null;
        this.f5769b = safeParcelable;
        this.f5770c = false;
    }

    private final ParcelFileDescriptor a() {
        if (this.f5768a == null) {
            Parcel parcelObtain = Parcel.obtain();
            try {
                this.f5769b.writeToParcel(parcelObtain, 0);
                byte[] bArrMarshall = parcelObtain.marshall();
                parcelObtain.recycle();
                this.f5768a = a(bArrMarshall);
            } catch (Throwable th) {
                parcelObtain.recycle();
                throw th;
            }
        }
        return this.f5768a;
    }

    private final <T> ParcelFileDescriptor a(byte[] bArr) {
        ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream;
        try {
            ParcelFileDescriptor[] parcelFileDescriptorArrCreatePipe = ParcelFileDescriptor.createPipe();
            autoCloseOutputStream = new ParcelFileDescriptor.AutoCloseOutputStream(parcelFileDescriptorArrCreatePipe[1]);
            try {
                new Thread(new dy(this, autoCloseOutputStream, bArr)).start();
                return parcelFileDescriptorArrCreatePipe[0];
            } catch (IOException e) {
                e = e;
                jd.b("Error transporting the ad response", e);
                com.google.android.gms.ads.internal.aw.i().a(e, "LargeParcelTeleporter.pipeData.2");
                com.google.android.gms.common.util.l.a(autoCloseOutputStream);
                return null;
            }
        } catch (IOException e2) {
            e = e2;
            autoCloseOutputStream = null;
        }
    }

    public final <T extends SafeParcelable> T a(Parcelable.Creator<T> creator) {
        if (this.f5770c) {
            if (this.f5768a == null) {
                jd.c("File descriptor is empty, returning null.");
                return null;
            }
            DataInputStream dataInputStream = new DataInputStream(new ParcelFileDescriptor.AutoCloseInputStream(this.f5768a));
            try {
                try {
                    byte[] bArr = new byte[dataInputStream.readInt()];
                    dataInputStream.readFully(bArr, 0, bArr.length);
                    com.google.android.gms.common.util.l.a(dataInputStream);
                    Parcel parcelObtain = Parcel.obtain();
                    try {
                        parcelObtain.unmarshall(bArr, 0, bArr.length);
                        parcelObtain.setDataPosition(0);
                        this.f5769b = creator.createFromParcel(parcelObtain);
                        parcelObtain.recycle();
                        this.f5770c = false;
                    } catch (Throwable th) {
                        parcelObtain.recycle();
                        throw th;
                    }
                } catch (IOException e) {
                    jd.b("Could not read from parcel file descriptor", e);
                    com.google.android.gms.common.util.l.a(dataInputStream);
                    return null;
                }
            } catch (Throwable th2) {
                com.google.android.gms.common.util.l.a(dataInputStream);
                throw th2;
            }
        }
        return (T) this.f5769b;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        a();
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, (Parcelable) this.f5768a, i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
