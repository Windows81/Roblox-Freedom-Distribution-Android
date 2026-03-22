package android.support.v4.os;

import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.os.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
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
    final boolean f551a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Handler f552b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    android.support.v4.os.a f553c;

    protected void a(int i, Bundle bundle) {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final int f555a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Bundle f556b;

        b(int i, Bundle bundle) {
            this.f555a = i;
            this.f556b = bundle;
        }

        @Override // java.lang.Runnable
        public void run() {
            ResultReceiver.this.a(this.f555a, this.f556b);
        }
    }

    class a extends a.AbstractBinderC0009a {
        a() {
        }

        @Override // android.support.v4.os.a
        public void a(int i, Bundle bundle) {
            if (ResultReceiver.this.f552b != null) {
                ResultReceiver.this.f552b.post(ResultReceiver.this.new b(i, bundle));
            } else {
                ResultReceiver.this.a(i, bundle);
            }
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        synchronized (this) {
            if (this.f553c == null) {
                this.f553c = new a();
            }
            parcel.writeStrongBinder(this.f553c.asBinder());
        }
    }

    ResultReceiver(Parcel parcel) {
        this.f553c = a.AbstractBinderC0009a.a(parcel.readStrongBinder());
    }
}
