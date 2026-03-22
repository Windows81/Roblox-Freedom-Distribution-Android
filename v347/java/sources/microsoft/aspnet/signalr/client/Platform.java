package microsoft.aspnet.signalr.client;

import java.util.Locale;
import microsoft.aspnet.signalr.client.http.HttpConnection;
import microsoft.aspnet.signalr.client.http.java.JavaHttpConnection;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class Platform {
    public static String robloxUserAgent;
    static boolean mPlatformVerified = false;
    static boolean mIsAndroid = false;
    static PlatformComponent mPlatformComponent = null;
    public static boolean skipCookie = true;
    private static String fallbackCookie = null;

    public static void loadPlatformComponent(PlatformComponent platformComponent) {
        mPlatformComponent = platformComponent;
    }

    public static HttpConnection createHttpConnection(Logger logger) {
        return mPlatformComponent != null ? mPlatformComponent.createHttpConnection(logger) : createDefaultHttpConnection(logger);
    }

    public static HttpConnection createDefaultHttpConnection(Logger logger) {
        return new JavaHttpConnection(logger, skipCookie);
    }

    public static String getUserAgent() {
        String lowerCase;
        if (robloxUserAgent != null) {
            return robloxUserAgent;
        }
        if (mPlatformComponent != null) {
            lowerCase = mPlatformComponent.getOSName();
        } else {
            lowerCase = System.getProperty("os.name").toLowerCase(Locale.getDefault());
        }
        return String.format("SignalR (lang=Java; os=%s; version=2.0)", lowerCase);
    }

    public static void setRobloxUserAgent(String str) {
        robloxUserAgent = str;
    }

    public static void setSkipCookie(boolean z) {
        skipCookie = z;
    }

    public static void setFallbackCookie(String str) {
        fallbackCookie = str;
    }

    public static String getFallbackCookie() {
        return fallbackCookie;
    }
}
