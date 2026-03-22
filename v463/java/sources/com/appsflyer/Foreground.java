package com.appsflyer;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class Foreground {
    public static long CHECK_DELAY = 500;
    public static Listener listener;

    public interface Listener {
        void onBecameBackground(Context context);

        void onBecameForeground(Activity activity);
    }

    /* JADX INFO: renamed from: com.appsflyer.Foreground$4, reason: invalid class name */
    static class AnonymousClass4 implements Application.ActivityLifecycleCallbacks {

        /* JADX INFO: renamed from: ı, reason: contains not printable characters */
        final /* synthetic */ Listener f134;

        /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
        boolean f137;

        /* JADX INFO: renamed from: ɩ, reason: contains not printable characters */
        boolean f136 = true;

        /* JADX INFO: renamed from: ǃ, reason: contains not printable characters */
        private Executor f135 = Executors.newSingleThreadExecutor();

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityDestroyed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStarted(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStopped(Activity activity) {
        }

        AnonymousClass4(Listener listener) {
            this.f134 = listener;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityResumed(final Activity activity) {
            this.f135.execute(new Runnable() { // from class: com.appsflyer.Foreground.4.5
                @Override // java.lang.Runnable
                public final void run() {
                    if (!AnonymousClass4.this.f137) {
                        try {
                            AnonymousClass4.this.f134.onBecameForeground(activity);
                        } catch (Exception e2) {
                            AFLogger.afErrorLog("Listener thrown an exception: ", e2);
                        }
                    }
                    AnonymousClass4.this.f136 = false;
                    AnonymousClass4.this.f137 = true;
                }
            });
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPaused(final Activity activity) {
            this.f135.execute(new Runnable() { // from class: com.appsflyer.Foreground.4.3
                @Override // java.lang.Runnable
                public final void run() {
                    AnonymousClass4.this.f136 = true;
                    final Context applicationContext = activity.getApplicationContext();
                    try {
                        new Timer().schedule(new TimerTask() { // from class: com.appsflyer.Foreground.4.3.3
                            @Override // java.util.TimerTask, java.lang.Runnable
                            public final void run() {
                                if (AnonymousClass4.this.f137 && AnonymousClass4.this.f136) {
                                    AnonymousClass4.this.f137 = false;
                                    try {
                                        AnonymousClass4.this.f134.onBecameBackground(applicationContext);
                                    } catch (Exception e2) {
                                        AFLogger.afErrorLog("Listener threw exception! ", e2);
                                    }
                                }
                            }
                        }, Foreground.CHECK_DELAY);
                    } catch (Throwable th) {
                        AFLogger.afErrorLog("Background task failed with a throwable: ", th);
                    }
                }
            });
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityCreated(final Activity activity, Bundle bundle) {
            this.f135.execute(new Runnable() { // from class: com.appsflyer.Foreground.4.4
                @Override // java.lang.Runnable
                public final void run() {
                    AFDeepLinkManager.getInstance().collectIntentsFromActivities(activity.getIntent());
                }
            });
        }
    }

    /* JADX INFO: renamed from: ɩ, reason: contains not printable characters */
    static void m112(Context context, Listener listener2) {
        listener = listener2;
        AnonymousClass4 anonymousClass4 = new AnonymousClass4(listener2);
        if (context instanceof Activity) {
            anonymousClass4.onActivityResumed((Activity) context);
        }
        ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(anonymousClass4);
    }
}
