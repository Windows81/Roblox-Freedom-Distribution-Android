package androidx.fragment.app;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import androidx.lifecycle.x;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class FragmentState implements Parcelable {
    public static final Parcelable.Creator<FragmentState> CREATOR = new Parcelable.Creator<FragmentState>() { // from class: androidx.fragment.app.FragmentState.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public FragmentState createFromParcel(Parcel parcel) {
            return new FragmentState(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public FragmentState[] newArray(int i) {
            return new FragmentState[i];
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final String f1647a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final int f1648b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final boolean f1649c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final int f1650d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final int f1651e;
    final String f;
    final boolean g;
    final boolean h;
    final Bundle i;
    final boolean j;
    Bundle k;
    Fragment l;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    FragmentState(Fragment fragment) {
        this.f1647a = fragment.getClass().getName();
        this.f1648b = fragment.o;
        this.f1649c = fragment.w;
        this.f1650d = fragment.H;
        this.f1651e = fragment.I;
        this.f = fragment.J;
        this.g = fragment.M;
        this.h = fragment.L;
        this.i = fragment.q;
        this.j = fragment.K;
    }

    FragmentState(Parcel parcel) {
        this.f1647a = parcel.readString();
        this.f1648b = parcel.readInt();
        this.f1649c = parcel.readInt() != 0;
        this.f1650d = parcel.readInt();
        this.f1651e = parcel.readInt();
        this.f = parcel.readString();
        this.g = parcel.readInt() != 0;
        this.h = parcel.readInt() != 0;
        this.i = parcel.readBundle();
        this.j = parcel.readInt() != 0;
        this.k = parcel.readBundle();
    }

    public Fragment a(f fVar, d dVar, Fragment fragment, i iVar, x xVar) {
        if (this.l == null) {
            Context contextG = fVar.g();
            Bundle bundle = this.i;
            if (bundle != null) {
                bundle.setClassLoader(contextG.getClassLoader());
            }
            if (dVar != null) {
                this.l = dVar.a(contextG, this.f1647a, this.i);
            } else {
                this.l = Fragment.a(contextG, this.f1647a, this.i);
            }
            Bundle bundle2 = this.k;
            if (bundle2 != null) {
                bundle2.setClassLoader(contextG.getClassLoader());
                this.l.l = this.k;
            }
            this.l.a(this.f1648b, fragment);
            this.l.w = this.f1649c;
            this.l.y = true;
            this.l.H = this.f1650d;
            this.l.I = this.f1651e;
            this.l.J = this.f;
            this.l.M = this.g;
            this.l.L = this.h;
            this.l.K = this.j;
            this.l.B = fVar.f1679b;
            if (h.f1683a) {
                Log.v("FragmentManager", "Instantiated fragment " + this.l);
            }
        }
        this.l.E = iVar;
        this.l.F = xVar;
        return this.l;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f1647a);
        parcel.writeInt(this.f1648b);
        parcel.writeInt(this.f1649c ? 1 : 0);
        parcel.writeInt(this.f1650d);
        parcel.writeInt(this.f1651e);
        parcel.writeString(this.f);
        parcel.writeInt(this.g ? 1 : 0);
        parcel.writeInt(this.h ? 1 : 0);
        parcel.writeBundle(this.i);
        parcel.writeInt(this.j ? 1 : 0);
        parcel.writeBundle(this.k);
    }
}
