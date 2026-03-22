package android.support.v4.media.session;

import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.session.e;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class PlaybackStateCompat implements Parcelable {
    public static final Parcelable.Creator<PlaybackStateCompat> CREATOR = new Parcelable.Creator<PlaybackStateCompat>() { // from class: android.support.v4.media.session.PlaybackStateCompat.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PlaybackStateCompat createFromParcel(Parcel parcel) {
            return new PlaybackStateCompat(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PlaybackStateCompat[] newArray(int i) {
            return new PlaybackStateCompat[i];
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final int f1015a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final long f1016b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final long f1017c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final float f1018d;
    final long e;
    final int f;
    final CharSequence g;
    final long h;
    List<CustomAction> i;
    final long j;
    final Bundle k;
    private Object l;

    PlaybackStateCompat(int i, long j, long j2, float f, long j3, int i2, CharSequence charSequence, long j4, List<CustomAction> list, long j5, Bundle bundle) {
        this.f1015a = i;
        this.f1016b = j;
        this.f1017c = j2;
        this.f1018d = f;
        this.e = j3;
        this.f = i2;
        this.g = charSequence;
        this.h = j4;
        this.i = new ArrayList(list);
        this.j = j5;
        this.k = bundle;
    }

    PlaybackStateCompat(Parcel parcel) {
        this.f1015a = parcel.readInt();
        this.f1016b = parcel.readLong();
        this.f1018d = parcel.readFloat();
        this.h = parcel.readLong();
        this.f1017c = parcel.readLong();
        this.e = parcel.readLong();
        this.g = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.i = parcel.createTypedArrayList(CustomAction.CREATOR);
        this.j = parcel.readLong();
        this.k = parcel.readBundle();
        this.f = parcel.readInt();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("PlaybackState {");
        sb.append("state=").append(this.f1015a);
        sb.append(", position=").append(this.f1016b);
        sb.append(", buffered position=").append(this.f1017c);
        sb.append(", speed=").append(this.f1018d);
        sb.append(", updated=").append(this.h);
        sb.append(", actions=").append(this.e);
        sb.append(", error code=").append(this.f);
        sb.append(", error message=").append(this.g);
        sb.append(", custom actions=").append(this.i);
        sb.append(", active item id=").append(this.j);
        sb.append("}");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f1015a);
        parcel.writeLong(this.f1016b);
        parcel.writeFloat(this.f1018d);
        parcel.writeLong(this.h);
        parcel.writeLong(this.f1017c);
        parcel.writeLong(this.e);
        TextUtils.writeToParcel(this.g, parcel, i);
        parcel.writeTypedList(this.i);
        parcel.writeLong(this.j);
        parcel.writeBundle(this.k);
        parcel.writeInt(this.f);
    }

    public static PlaybackStateCompat a(Object obj) {
        Bundle bundleA;
        if (obj != null && Build.VERSION.SDK_INT >= 21) {
            List<Object> listH = e.h(obj);
            ArrayList arrayList = null;
            if (listH != null) {
                arrayList = new ArrayList(listH.size());
                Iterator<Object> it = listH.iterator();
                while (it.hasNext()) {
                    arrayList.add(CustomAction.a(it.next()));
                }
            }
            if (Build.VERSION.SDK_INT >= 22) {
                bundleA = f.a(obj);
            } else {
                bundleA = null;
            }
            PlaybackStateCompat playbackStateCompat = new PlaybackStateCompat(e.a(obj), e.b(obj), e.c(obj), e.d(obj), e.e(obj), 0, e.f(obj), e.g(obj), arrayList, e.i(obj), bundleA);
            playbackStateCompat.l = obj;
            return playbackStateCompat;
        }
        return null;
    }

    public static final class CustomAction implements Parcelable {
        public static final Parcelable.Creator<CustomAction> CREATOR = new Parcelable.Creator<CustomAction>() { // from class: android.support.v4.media.session.PlaybackStateCompat.CustomAction.1
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public CustomAction createFromParcel(Parcel parcel) {
                return new CustomAction(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public CustomAction[] newArray(int i) {
                return new CustomAction[i];
            }
        };

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f1019a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final CharSequence f1020b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f1021c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final Bundle f1022d;
        private Object e;

        CustomAction(String str, CharSequence charSequence, int i, Bundle bundle) {
            this.f1019a = str;
            this.f1020b = charSequence;
            this.f1021c = i;
            this.f1022d = bundle;
        }

        CustomAction(Parcel parcel) {
            this.f1019a = parcel.readString();
            this.f1020b = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f1021c = parcel.readInt();
            this.f1022d = parcel.readBundle();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f1019a);
            TextUtils.writeToParcel(this.f1020b, parcel, i);
            parcel.writeInt(this.f1021c);
            parcel.writeBundle(this.f1022d);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public static CustomAction a(Object obj) {
            if (obj == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            CustomAction customAction = new CustomAction(e.a.a(obj), e.a.b(obj), e.a.c(obj), e.a.d(obj));
            customAction.e = obj;
            return customAction;
        }

        public String toString() {
            return "Action:mName='" + ((Object) this.f1020b) + ", mIcon=" + this.f1021c + ", mExtras=" + this.f1022d;
        }
    }
}
