package android.support.v4.os;

import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.os.c;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class ResultReceiver implements Parcelable {
    public static final Parcelable.Creator<ResultReceiver> CREATOR = new Parcelable.Creator<ResultReceiver>() { // from class: android.support.v4.os.ResultReceiver.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ResultReceiver createFromParcel(Parcel parcel) {
            return new ResultReceiver(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ResultReceiver[] newArray(int i) {
            return new ResultReceiver[i];
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final boolean f1026a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Handler f1027b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    c f1028c;

    class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final int f1030a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Bundle f1031b;

        b(int i, Bundle bundle) {
            this.f1030a = i;
            this.f1031b = bundle;
        }

        @Override // java.lang.Runnable
        public void run() {
            ResultReceiver.this.a(this.f1030a, this.f1031b);
        }
    }

    class a extends c.a {
        a() {
        }

        @Override // android.support.v4.os.c
        public void a(int i, Bundle bundle) {
            if (ResultReceiver.this.f1027b != null) {
                ResultReceiver.this.f1027b.post(ResultReceiver.this.new b(i, bundle));
            } else {
                ResultReceiver.this.a(i, bundle);
            }
        }
    }

    protected void a(int i, Bundle bundle) {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        synchronized (this) {
            if (this.f1028c == null) {
                this.f1028c = new a();
            }
            parcel.writeStrongBinder(this.f1028c.asBinder());
        }
    }

    ResultReceiver(Parcel parcel) {
        this.f1028c = c.a.a(parcel.readStrongBinder());
    }
}
