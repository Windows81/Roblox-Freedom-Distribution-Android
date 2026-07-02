package android.support.v4.media.session;

import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.a;
import android.support.v4.media.session.b;
import android.support.v4.media.session.c;
import android.util.Log;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class MediaControllerCompat {

    public static abstract class a implements IBinder.DeathRecipient {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        HandlerC0021a f994a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f995b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Object f996c;

        public a() {
            if (Build.VERSION.SDK_INT >= 21) {
                this.f996c = android.support.v4.media.session.c.a(new b(this));
            } else {
                this.f996c = new c(this);
            }
        }

        public void a() {
        }

        public void b() {
        }

        public void a(String str, Bundle bundle) {
        }

        public void a(PlaybackStateCompat playbackStateCompat) {
        }

        public void a(MediaMetadataCompat mediaMetadataCompat) {
        }

        public void a(List<MediaSessionCompat.QueueItem> list) {
        }

        public void a(CharSequence charSequence) {
        }

        public void a(Bundle bundle) {
        }

        public void a(b bVar) {
        }

        public void a(boolean z) {
        }

        public void a(int i) {
        }

        public void b(int i) {
        }

        void a(int i, Object obj, Bundle bundle) {
            if (this.f994a != null) {
                Message messageObtainMessage = this.f994a.obtainMessage(i, obj);
                messageObtainMessage.setData(bundle);
                messageObtainMessage.sendToTarget();
            }
        }

        private static class b implements c.a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final WeakReference<a> f999a;

            b(a aVar) {
                this.f999a = new WeakReference<>(aVar);
            }

            @Override // android.support.v4.media.session.c.a
            public void a() {
                a aVar = this.f999a.get();
                if (aVar != null) {
                    aVar.b();
                }
            }

            @Override // android.support.v4.media.session.c.a
            public void a(String str, Bundle bundle) {
                a aVar = this.f999a.get();
                if (aVar != null) {
                    if (!aVar.f995b || Build.VERSION.SDK_INT >= 23) {
                        aVar.a(str, bundle);
                    }
                }
            }

            @Override // android.support.v4.media.session.c.a
            public void a(Object obj) {
                a aVar = this.f999a.get();
                if (aVar != null && !aVar.f995b) {
                    aVar.a(PlaybackStateCompat.a(obj));
                }
            }

            @Override // android.support.v4.media.session.c.a
            public void b(Object obj) {
                a aVar = this.f999a.get();
                if (aVar != null) {
                    aVar.a(MediaMetadataCompat.a(obj));
                }
            }

            @Override // android.support.v4.media.session.c.a
            public void a(List<?> list) {
                a aVar = this.f999a.get();
                if (aVar != null) {
                    aVar.a(MediaSessionCompat.QueueItem.a(list));
                }
            }

            @Override // android.support.v4.media.session.c.a
            public void a(CharSequence charSequence) {
                a aVar = this.f999a.get();
                if (aVar != null) {
                    aVar.a(charSequence);
                }
            }

            @Override // android.support.v4.media.session.c.a
            public void a(Bundle bundle) {
                a aVar = this.f999a.get();
                if (aVar != null) {
                    aVar.a(bundle);
                }
            }

            @Override // android.support.v4.media.session.c.a
            public void a(int i, int i2, int i3, int i4, int i5) {
                a aVar = this.f999a.get();
                if (aVar != null) {
                    aVar.a(new b(i, i2, i3, i4, i5));
                }
            }
        }

        private static class c extends a.AbstractBinderC0022a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final WeakReference<a> f1000a;

            c(a aVar) {
                this.f1000a = new WeakReference<>(aVar);
            }

            @Override // android.support.v4.media.session.a
            public void a(String str, Bundle bundle) throws RemoteException {
                a aVar = this.f1000a.get();
                if (aVar != null) {
                    aVar.a(1, str, bundle);
                }
            }

            public void a() throws RemoteException {
                a aVar = this.f1000a.get();
                if (aVar != null) {
                    aVar.a(8, null, null);
                }
            }

            @Override // android.support.v4.media.session.a
            public void a(PlaybackStateCompat playbackStateCompat) throws RemoteException {
                a aVar = this.f1000a.get();
                if (aVar != null) {
                    aVar.a(2, playbackStateCompat, null);
                }
            }

            public void a(MediaMetadataCompat mediaMetadataCompat) throws RemoteException {
                a aVar = this.f1000a.get();
                if (aVar != null) {
                    aVar.a(3, mediaMetadataCompat, null);
                }
            }

            public void a(List<MediaSessionCompat.QueueItem> list) throws RemoteException {
                a aVar = this.f1000a.get();
                if (aVar != null) {
                    aVar.a(5, list, null);
                }
            }

            public void a(CharSequence charSequence) throws RemoteException {
                a aVar = this.f1000a.get();
                if (aVar != null) {
                    aVar.a(6, charSequence, null);
                }
            }

            @Override // android.support.v4.media.session.a
            public void b(boolean z) throws RemoteException {
                a aVar = this.f1000a.get();
                if (aVar != null) {
                    aVar.a(11, Boolean.valueOf(z), null);
                }
            }

            @Override // android.support.v4.media.session.a
            public void a(int i) throws RemoteException {
                a aVar = this.f1000a.get();
                if (aVar != null) {
                    aVar.a(9, Integer.valueOf(i), null);
                }
            }

            @Override // android.support.v4.media.session.a
            public void a(boolean z) throws RemoteException {
            }

            @Override // android.support.v4.media.session.a
            public void b(int i) throws RemoteException {
                a aVar = this.f1000a.get();
                if (aVar != null) {
                    aVar.a(12, Integer.valueOf(i), null);
                }
            }

            public void a(Bundle bundle) throws RemoteException {
                a aVar = this.f1000a.get();
                if (aVar != null) {
                    aVar.a(7, bundle, null);
                }
            }

            public void a(ParcelableVolumeInfo parcelableVolumeInfo) throws RemoteException {
                a aVar = this.f1000a.get();
                if (aVar != null) {
                    aVar.a(4, parcelableVolumeInfo != null ? new b(parcelableVolumeInfo.f1011a, parcelableVolumeInfo.f1012b, parcelableVolumeInfo.f1013c, parcelableVolumeInfo.f1014d, parcelableVolumeInfo.e) : null, null);
                }
            }

            @Override // android.support.v4.media.session.a
            public void b() throws RemoteException {
                a aVar = this.f1000a.get();
                if (aVar != null) {
                    aVar.a(13, null, null);
                }
            }
        }

        /* JADX INFO: renamed from: android.support.v4.media.session.MediaControllerCompat$a$a, reason: collision with other inner class name */
        private class HandlerC0021a extends Handler {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            boolean f997a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ a f998b;

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (this.f997a) {
                    switch (message.what) {
                        case 1:
                            this.f998b.a((String) message.obj, message.getData());
                            break;
                        case 2:
                            this.f998b.a((PlaybackStateCompat) message.obj);
                            break;
                        case 3:
                            this.f998b.a((MediaMetadataCompat) message.obj);
                            break;
                        case 4:
                            this.f998b.a((b) message.obj);
                            break;
                        case 5:
                            this.f998b.a((List<MediaSessionCompat.QueueItem>) message.obj);
                            break;
                        case 6:
                            this.f998b.a((CharSequence) message.obj);
                            break;
                        case 7:
                            this.f998b.a((Bundle) message.obj);
                            break;
                        case 8:
                            this.f998b.b();
                            break;
                        case 9:
                            this.f998b.a(((Integer) message.obj).intValue());
                            break;
                        case 11:
                            this.f998b.a(((Boolean) message.obj).booleanValue());
                            break;
                        case 12:
                            this.f998b.b(((Integer) message.obj).intValue());
                            break;
                        case 13:
                            this.f998b.a();
                            break;
                    }
                }
            }
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f1001a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f1002b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f1003c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f1004d;
        private final int e;

        b(int i, int i2, int i3, int i4, int i5) {
            this.f1001a = i;
            this.f1002b = i2;
            this.f1003c = i3;
            this.f1004d = i4;
            this.e = i5;
        }
    }

    static class MediaControllerImplApi21 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List<a> f990a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private android.support.v4.media.session.b f991b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private HashMap<a, a> f992c;

        /* JADX INFO: Access modifiers changed from: private */
        public void a() {
            if (this.f991b != null) {
                synchronized (this.f990a) {
                    for (a aVar : this.f990a) {
                        a aVar2 = new a(aVar);
                        this.f992c.put(aVar, aVar2);
                        aVar.f995b = true;
                        try {
                            this.f991b.a(aVar2);
                            aVar.a();
                        } catch (RemoteException e) {
                            Log.e("MediaControllerCompat", "Dead object in registerCallback.", e);
                            this.f990a.clear();
                        }
                    }
                    this.f990a.clear();
                }
            }
        }

        private static class ExtraBinderRequestResultReceiver extends ResultReceiver {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private WeakReference<MediaControllerImplApi21> f993a;

            @Override // android.os.ResultReceiver
            protected void onReceiveResult(int i, Bundle bundle) {
                MediaControllerImplApi21 mediaControllerImplApi21 = this.f993a.get();
                if (mediaControllerImplApi21 != null && bundle != null) {
                    mediaControllerImplApi21.f991b = b.a.a(android.support.v4.app.f.a(bundle, "android.support.v4.media.session.EXTRA_BINDER"));
                    mediaControllerImplApi21.a();
                }
            }
        }

        private static class a extends a.c {
            a(a aVar) {
                super(aVar);
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.a.c, android.support.v4.media.session.a
            public void a() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.a.c, android.support.v4.media.session.a
            public void a(MediaMetadataCompat mediaMetadataCompat) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.a.c, android.support.v4.media.session.a
            public void a(List<MediaSessionCompat.QueueItem> list) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.a.c, android.support.v4.media.session.a
            public void a(CharSequence charSequence) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.a.c, android.support.v4.media.session.a
            public void a(Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.a.c, android.support.v4.media.session.a
            public void a(ParcelableVolumeInfo parcelableVolumeInfo) throws RemoteException {
                throw new AssertionError();
            }
        }
    }
}
