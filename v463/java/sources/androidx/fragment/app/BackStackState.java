package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import androidx.fragment.app.a;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class BackStackState implements Parcelable {
    public static final Parcelable.Creator<BackStackState> CREATOR = new Parcelable.Creator<BackStackState>() { // from class: androidx.fragment.app.BackStackState.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public BackStackState createFromParcel(Parcel parcel) {
            return new BackStackState(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public BackStackState[] newArray(int i) {
            return new BackStackState[i];
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final int[] f1627a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final int f1628b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final int f1629c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final String f1630d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final int f1631e;
    final int f;
    final CharSequence g;
    final int h;
    final CharSequence i;
    final ArrayList<String> j;
    final ArrayList<String> k;
    final boolean l;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public BackStackState(a aVar) {
        int size = aVar.f1653b.size();
        this.f1627a = new int[size * 6];
        if (!aVar.i) {
            throw new IllegalStateException("Not on back stack");
        }
        int i = 0;
        int i2 = 0;
        while (i < size) {
            a.C0044a c0044a = aVar.f1653b.get(i);
            int i3 = i2 + 1;
            this.f1627a[i2] = c0044a.f1657a;
            int i4 = i3 + 1;
            this.f1627a[i3] = c0044a.f1658b != null ? c0044a.f1658b.o : -1;
            int i5 = i4 + 1;
            this.f1627a[i4] = c0044a.f1659c;
            int i6 = i5 + 1;
            this.f1627a[i5] = c0044a.f1660d;
            int i7 = i6 + 1;
            this.f1627a[i6] = c0044a.f1661e;
            this.f1627a[i7] = c0044a.f;
            i++;
            i2 = i7 + 1;
        }
        this.f1628b = aVar.g;
        this.f1629c = aVar.h;
        this.f1630d = aVar.k;
        this.f1631e = aVar.m;
        this.f = aVar.n;
        this.g = aVar.o;
        this.h = aVar.p;
        this.i = aVar.q;
        this.j = aVar.r;
        this.k = aVar.s;
        this.l = aVar.t;
    }

    public BackStackState(Parcel parcel) {
        this.f1627a = parcel.createIntArray();
        this.f1628b = parcel.readInt();
        this.f1629c = parcel.readInt();
        this.f1630d = parcel.readString();
        this.f1631e = parcel.readInt();
        this.f = parcel.readInt();
        this.g = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.h = parcel.readInt();
        this.i = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.j = parcel.createStringArrayList();
        this.k = parcel.createStringArrayList();
        this.l = parcel.readInt() != 0;
    }

    public a a(h hVar) {
        a aVar = new a(hVar);
        int i = 0;
        int i2 = 0;
        while (i < this.f1627a.length) {
            a.C0044a c0044a = new a.C0044a();
            int i3 = i + 1;
            c0044a.f1657a = this.f1627a[i];
            if (h.f1683a) {
                Log.v("FragmentManager", "Instantiate " + aVar + " op #" + i2 + " base fragment #" + this.f1627a[i3]);
            }
            int i4 = i3 + 1;
            int i5 = this.f1627a[i3];
            if (i5 >= 0) {
                c0044a.f1658b = hVar.f.get(i5);
            } else {
                c0044a.f1658b = null;
            }
            int i6 = i4 + 1;
            c0044a.f1659c = this.f1627a[i4];
            int i7 = i6 + 1;
            c0044a.f1660d = this.f1627a[i6];
            int i8 = i7 + 1;
            c0044a.f1661e = this.f1627a[i7];
            c0044a.f = this.f1627a[i8];
            aVar.f1654c = c0044a.f1659c;
            aVar.f1655d = c0044a.f1660d;
            aVar.f1656e = c0044a.f1661e;
            aVar.f = c0044a.f;
            aVar.a(c0044a);
            i2++;
            i = i8 + 1;
        }
        aVar.g = this.f1628b;
        aVar.h = this.f1629c;
        aVar.k = this.f1630d;
        aVar.m = this.f1631e;
        aVar.i = true;
        aVar.n = this.f;
        aVar.o = this.g;
        aVar.p = this.h;
        aVar.q = this.i;
        aVar.r = this.j;
        aVar.s = this.k;
        aVar.t = this.l;
        aVar.a(1);
        return aVar;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeIntArray(this.f1627a);
        parcel.writeInt(this.f1628b);
        parcel.writeInt(this.f1629c);
        parcel.writeString(this.f1630d);
        parcel.writeInt(this.f1631e);
        parcel.writeInt(this.f);
        TextUtils.writeToParcel(this.g, parcel, 0);
        parcel.writeInt(this.h);
        TextUtils.writeToParcel(this.i, parcel, 0);
        parcel.writeStringList(this.j);
        parcel.writeStringList(this.k);
        parcel.writeInt(this.l ? 1 : 0);
    }
}
