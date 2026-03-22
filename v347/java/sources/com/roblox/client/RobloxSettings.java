package com.roblox.client;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.Build;
import android.provider.Settings;
import android.text.TextUtils;
import com.roblox.client.components.q;
import com.roblox.client.h;
import com.roblox.engine.jni.NativeSettingsInterface;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import microsoft.aspnet.signalr.client.Constants;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class RobloxSettings {
    private static final String AMAZON_APP_STORE = " AmazonAppStore";
    public static final String API_SUB_DOMAIN = "api";
    private static final String GOOGLE_PLAY_STORE = " GooglePlayStore";
    public static final String LOGIN_CONSTRAINT_STRING = "Login/FulfillConstraint.aspx";
    private static final int NDK_PROFILER_FREQUENCY_DEFAULT_VALUE = 100;
    private static final String ROBLOX_API_KEY = "76E5A40C-3AE1-4028-9F10-7C62520BD94F";
    private static final String TAG = "roblox.config";
    public static final String TEST_SITES_DOMAIN = ".robloxlabs.com";
    private static final String USER_AGENT_SUFFIX_DEFAULT_VALUE = " RobloxAndroidClient";
    private static final String WEB_VIEW_URL_OVERRIDE_DEFAULT_VALUE = "https://www.roblox.com/PlaceItem.aspx?id=150055095";
    static boolean dontReloadMorePage;
    public static String eventsData;
    private static String mBaseUrl;
    public static int mDeviceDensity;
    public static String mDeviceId;
    private static String mDomain;
    private static String mDomainWithTrailingSlash;
    private static boolean mIsChrome;
    public static SharedPreferences mKeyValues;
    static Pattern mLoginUrlPattern;
    static Pattern sGameLinkPattern;
    private static boolean sNeedsRestart;
    private static String mVersion = "version missing";
    private static String mBaseApiUrl = null;
    private static String mActualUserAgentString = null;
    private static String mUserAgentSuffix = null;
    private static boolean isSw500dp = false;
    private static String mWebViewURLOverride = null;
    private static boolean mUseWebURLOverride = false;
    private static String mCacheDirectory = null;
    private static String mFilesDirectory = null;
    private static int mNDKProfilerFrequency = 0;
    private static String mDeviceNotSupported = null;
    private static boolean mDeviceNotSupportedSkippable = true;
    private static File mRobloxCookiesTmpFile = null;

    static {
        setBaseUrl("www.roblox.com/");
        sNeedsRestart = false;
        mKeyValues = null;
        eventsData = null;
        mDeviceId = "";
        mDeviceDensity = 0;
        dontReloadMorePage = false;
    }

    public static void setBaseUrl(String str) {
        com.roblox.client.util.g.b(TAG, "setBaseUrl() " + mBaseUrl + " => " + str);
        com.roblox.client.util.c cVar = new com.roblox.client.util.c();
        mBaseUrl = cVar.d(str);
        mDomainWithTrailingSlash = cVar.e(mBaseUrl);
        mDomain = cVar.c(mDomainWithTrailingSlash);
        mLoginUrlPattern = Pattern.compile(loginUrlPatternString(), 2);
    }

    public static String getDomainWithTrailingSlash() {
        return mDomainWithTrailingSlash;
    }

    public static String getBaseUrlValue() {
        return mBaseUrl;
    }

    public static String baseUrl() {
        return "https://" + mBaseUrl;
    }

    public static String getDomain() {
        return mDomain;
    }

    public static void setBaseUrlAPI(String str) {
        if (str != null) {
            mBaseApiUrl = new com.roblox.client.util.c().d(str);
        } else {
            mBaseApiUrl = null;
        }
    }

    public static SharedPreferences getKeyValues() {
        return mKeyValues;
    }

    public static SharedPreferences getKeyValues(Context context) {
        return com.roblox.client.util.m.a(context, "prefs");
    }

    public static String version() {
        return mVersion;
    }

    public static boolean isTablet() {
        return isSw500dp;
    }

    public static boolean isPhone() {
        return !isSw500dp;
    }

    public static boolean isChrome() {
        return mIsChrome;
    }

    static void updateDeviceType(Context context) {
        isSw500dp = context.getResources().getBoolean(2130968581);
        mIsChrome = context.getPackageManager().hasSystemFeature("org.chromium.arc.device_management");
    }

    public static String baseUrlWithPath(String str) {
        if (str.startsWith("/")) {
            str = str.substring(1);
        }
        return baseUrl() + str;
    }

    public static String baseUrlWWW() {
        return baseUrl();
    }

    public static String baseUrlSecure() {
        return baseUrl();
    }

    public static String baseUrlSecureWWW() {
        return baseUrl();
    }

    public static String baseUrlUnsecure() {
        return "http://" + mBaseUrl;
    }

    public static String getBaseUrlApiValue() {
        return mBaseApiUrl;
    }

    public static String baseUrlAPI() {
        return mBaseApiUrl == null ? "https://api." + getDomainWithTrailingSlash() : "https://" + mBaseApiUrl;
    }

    public static String baseUrlAuth() {
        return "https://auth." + getDomainWithTrailingSlash();
    }

    static String baseUrlInternalDebug() {
        return "https://" + mKeyValues.getString("internalDebugUrl", "failed");
    }

    public static boolean isTestSite() {
        return mBaseUrl.contains(TEST_SITES_DOMAIN);
    }

    public static String getJsonContentType() {
        return "application/json;charset=UTF-8";
    }

    public static Pattern getGameLinkPattern() {
        if (sGameLinkPattern == null) {
            sGameLinkPattern = Pattern.compile("(https://|http://|)" + getBaseUrlValue() + "games/(\\d+)/($|[^\\s])*");
        }
        return sGameLinkPattern;
    }

    static String webViewURLOverride() {
        return mWebViewURLOverride;
    }

    static boolean useWebURLOverride() {
        return mUseWebURLOverride;
    }

    static String userAgentSuffix() {
        return mUserAgentSuffix;
    }

    static void updateSharedPrefs(String str, String str2) {
        try {
            SharedPreferences.Editor editorEdit = mKeyValues.edit();
            editorEdit.putString(str, str2);
            editorEdit.putString("internalDebugUrl", str2);
            editorEdit.apply();
        } catch (Exception e) {
            com.roblox.client.util.g.e(TAG, "Error setting SharedPrefs: " + e.toString());
        }
    }

    public static int getPostLoginRequestTimeout() {
        return b.U();
    }

    public static String userAgent() {
        return mActualUserAgentString;
    }

    private static String buildUserAgent(Context context) {
        return com.roblox.platform.g.a(context, mVersion, p.c(context).f7521a, GOOGLE_PLAY_STORE, isPhone());
    }

    public static String loginApiUrlV2() {
        return baseUrlAPI() + "v2/login";
    }

    public static String logoutApiUrl() {
        return baseUrlAPI() + "sign-out/v1";
    }

    public static String accountInfoApiUrl() {
        return baseUrlAPI() + "users/account-info";
    }

    public static String balanceApiUrl() {
        return baseUrlAPI() + "my/balance";
    }

    public static String loginCaptchaValidateUrl() {
        return baseUrlAPI() + "captcha/validate/login";
    }

    public static String signupCaptchaValidateUrl() {
        return baseUrlAPI() + "captcha/validate/signup";
    }

    public static String loginAuthUrlV1() {
        return baseUrlAuth() + "v1/login";
    }

    public static String resetPasswordApiUrl() {
        return baseUrlAPI() + "/account/resetpassword";
    }

    public static String incomingItemsApiUrl() {
        return baseUrlAPI() + "incoming-items/counts";
    }

    public static String marketProductInfoUrl(long j) {
        return baseUrlAPI() + "marketplace/productinfo?assetId=" + j;
    }

    public static String assetThumbnailUrl(long j) {
        return baseUrl() + "asset-thumbnail/json?width=420&height=420&assetId=" + j;
    }

    public static String assetPagePath(long j) {
        return "catalog/" + j + "/itempage";
    }

    public static String twoSVLoginVerifyUrl() {
        return baseUrlAPI() + "v2/twostepverification/login/verify";
    }

    public static String twoSVResendCodeUrl() {
        return baseUrlAPI() + "v2/twostepverification/login/resend";
    }

    public static String abTestEnrollUrl() {
        return baseUrlAPI() + "ab/v1/enroll";
    }

    public static String abTestGetEnrollmentsUrl() {
        return baseUrlAPI() + "ab/v1/get-enrollments";
    }

    static String friendFinderUrl() {
        return baseUrlSecureWWW().replace("www.", "friends.");
    }

    public static String contactsSyncUrl() {
        return friendFinderUrl() + "v1/contacts/match";
    }

    public static String contactsUpdateUrl() {
        return friendFinderUrl() + "v1/contacts/update";
    }

    public static String avatarHeadShotForUserIdsUrl(ArrayList<Long> arrayList) {
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < arrayList.size()) {
                long jLongValue = arrayList.get(i2).longValue();
                if (i2 == 0) {
                    sb.append("userIds=").append(jLongValue);
                } else {
                    sb.append("&userIds=").append(jLongValue);
                }
                i = i2 + 1;
            } else {
                return baseUrlSecureWWW() + "thumbnail/avatar-headshots?" + ((Object) sb);
            }
        }
    }

    public static String getSendFriendRequestUrl() {
        return baseUrlAPI() + "user/request-friendship";
    }

    public static String signUpApiUrl() {
        return baseUrlAPI() + "signup/v1";
    }

    public static String usernameSuggestionAuthUrl(String str, String str2) {
        return str2 == null ? com.roblox.client.util.n.a("%sv1/validators/username?username=%s", baseUrlAuth(), str) : com.roblox.client.util.n.a("%sv1/validators/username?username=%s&birthday=%s", baseUrlAuth(), str, str2);
    }

    public static String emailValidationAuthUrl(String str) {
        return baseUrlAuth() + "v1/validators/email?email=" + str;
    }

    public static String usernameCheckUrlXBOX(String str, String str2) {
        return str2 == null ? com.roblox.client.util.n.a("%ssignup/is-username-valid?username=%s", baseUrlAPI(), str) : com.roblox.client.util.n.a("%ssignup/is-username-valid?username=%s&birthday=%s", baseUrlAPI(), str, str2);
    }

    public static String passwordCheckUrlXBOX(String str, String str2) {
        return com.roblox.client.util.n.a("%ssignup/is-password-valid?username=%s&password=%s", baseUrlAPI(), str, str2);
    }

    public static String homeUrl() {
        return baseUrlSecureWWW() + "home";
    }

    static String gamesUrl() {
        return baseUrlWWW() + b.bE();
    }

    public static String joinGameIconUrl(long j) {
        return baseUrlWWW() + "/thumbnail/place?placeId=" + j;
    }

    static String catalogUrl() {
        return baseUrl() + "catalog/";
    }

    static String characterUrl() {
        return baseUrl() + "My/Character.aspx";
    }

    static String tradeUrl() {
        return baseUrl() + "My/Money.aspx";
    }

    static String forumUrl() {
        return "https://www.roblox.com/Forum/default.aspx";
    }

    static String blogUrl() {
        return "https://blog.roblox.com/";
    }

    static String helpUrl() {
        return baseUrl() + "help/";
    }

    static String settingsUrl() {
        return baseUrlSecureWWW() + "my/account";
    }

    static String buildersClubUrl() {
        return baseUrl() + "mobile-app-upgrades/";
    }

    public static String robuxOnlyUrl() {
        return baseUrlSecureWWW() + "upgrades/robux";
    }

    public static String buildersClubOnlyUrl() {
        return baseUrlSecureWWW() + "mobile-app-upgrades/native-ios/bc";
    }

    static String messagesUrl() {
        return baseUrl() + "my/messages/#!/inbox";
    }

    static String groupsUrl() {
        return baseUrl() + "my/groups";
    }

    static String leaderboardsUrl() {
        return baseUrl() + "leaderboards";
    }

    static String inventoryUrl() {
        return getUsersPageUrl("inventory");
    }

    static String profileUrl() {
        return getUsersPageUrl("profile");
    }

    static String friendsUrl() {
        return getUsersPageUrl("friends");
    }

    static String searchUsersUrl(String str) {
        return baseUrl() + "users/search?keyword=" + str;
    }

    static String searchGamesUrl(String str) {
        return baseUrlWWW() + "games/?Keyword=" + str;
    }

    static String searchGroupsUrl(String str) {
        return baseUrlWWW() + "search/groups?keyword=" + str;
    }

    static String searchCatalogUrl(String str) {
        return baseUrl() + "catalog?Keyword=" + str;
    }

    static String gamesSeeAllUrl(String str) {
        return baseUrlWWW() + "games/?SortFilter=" + str;
    }

    static String aboutUsUrl() {
        return "https://corp.roblox.com/";
    }

    static String careersUrl() {
        return "https://corp.roblox.com/careers/";
    }

    static String parentsUrl() {
        return "https://corp.roblox.com/parents/";
    }

    static String termsUrl() {
        return baseUrl() + "Info/terms-of-service";
    }

    public static String privacyUrl() {
        return baseUrl() + "info/privacy";
    }

    static String createGamesUrl() {
        return baseUrl() + "develop/landing";
    }

    static String upgradeCheckUrl() {
        return baseUrlWWW() + "mobileapi/check-app-version?appVersion=" + (Build.BRAND.equals("Amazon") ? "AppAmazonV" : "AppAndroidV") + version();
    }

    static String getUsersPageUrl(String str) {
        long jB = com.roblox.client.i.h.a().b();
        return jB != -1 ? baseUrlSecureWWW() + "users/" + jB + "/" + str : baseUrlSecureWWW() + "users/" + str;
    }

    public static String getUserProfileUrl(long j) {
        return baseUrlSecureWWW() + "users/" + j + "/profile";
    }

    public static String getUserFriendRequestsUrl(long j) {
        return baseUrlSecureWWW() + "users/" + j + "/friends#!/friend-requests";
    }

    public static String getUserFriendRequestOnlyUrl() {
        return baseUrlSecureWWW() + "users/friends#!/friend-requests?onlyShowContents=true";
    }

    public static String getUserFriendsUrl(long j) {
        return baseUrlSecureWWW() + "users/" + j + "/friends#!/friends";
    }

    public static String acceptFriendRequestUrl() {
        return baseUrlAPI() + "user/accept-friend-request";
    }

    public static String declineFriendRequest() {
        return baseUrlAPI() + "user/decline-friend-request";
    }

    public static String NotificationUserProfileImageUrl(long j) {
        return baseUrlSecureWWW() + "headshot-thumbnail/json?userId=" + j + "&width=150&height=150";
    }

    public static String messageInboxUrl() {
        return baseUrlSecureWWW() + "my/messages/#!/inbox";
    }

    public static String privateMessageUrl(long j) {
        return baseUrlSecureWWW() + "my/messages/#!/inbox?conversationId=" + j;
    }

    public static String getSettingsPrivacyPagePath() {
        return "my/account#!/privacy";
    }

    public static String getSettingsNotificationsPagePath() {
        return "my/account#!/notifications";
    }

    public static String contactRobloxSupportUrl() {
        return "https://en.help.roblox.com/hc/en-us/articles/212459863";
    }

    static String loginUrlPatternString() {
        return "^(https?://" + Pattern.quote(getBaseUrlValue()) + "(?:login|newlogin)).*";
    }

    public static String getLoginWebUrlMatch(String str) {
        Matcher matcher = mLoginUrlPattern.matcher(str);
        if (matcher.matches()) {
            return matcher.group(1);
        }
        return null;
    }

    public static boolean isLoginWebUrl(String str) {
        String loginWebUrlMatch = getLoginWebUrlMatch(str);
        return ((loginWebUrlMatch == null || loginWebUrlMatch.isEmpty()) ? false : true) & (str.contains(LOGIN_CONSTRAINT_STRING) ? false : true);
    }

    public static String baseSignalRUrl() {
        String strJ = b.J();
        return (strJ == null || strJ.isEmpty()) ? "https://" + b.I() + "." + getDomainWithTrailingSlash() + b.E() : strJ;
    }

    static String appSettingsUrl() {
        return "https://clientsettings.api." + getDomainWithTrailingSlash() + "Setting/Get/AndroidAppSettings/?apiKey=" + ROBLOX_API_KEY;
    }

    static String billingUrl() {
        return baseUrlSecureWWW().replace("www.", "billing.");
    }

    public static String verifyPurchaseReceiptUrlForGoogle() {
        return billingUrl() + "v1/google/purchase";
    }

    public static String verifyPurchaseReceiptUrlForAmazon() {
        return billingUrl() + "v1/amazon/purchase";
    }

    public static String validatePurchaseGoogleUrl() {
        return billingUrl() + "v1/google/validate";
    }

    public static String validatePurchaseAmazonUrl() {
        return billingUrl() + "v1/amazon/validate";
    }

    public static String eventsUrl() {
        return baseUrlWWW() + "sponsoredpage/list-json";
    }

    public static boolean isEmailNotificationEnabled() {
        return com.roblox.client.q.d.a().h().c();
    }

    public static boolean isPasswordNotificationEnabled() {
        return com.roblox.client.q.d.a().h().d();
    }

    public static String passwordResetUrl() {
        return baseUrlSecureWWW() + "Login/ResetPasswordRequest.aspx";
    }

    public static String passwordResetCompletedUrl() {
        return baseUrlSecureWWW() + "login/resetpasswordrequest/success";
    }

    public static String passwordUsernameResetUrl() {
        return baseUrlSecureWWW() + "login/forgot-password-or-username";
    }

    public static String deviceIDUrl() {
        return baseUrlAPI() + "device/initialize";
    }

    public static String rbxAnalyticsUrl() {
        StringBuilder sbAppend = new StringBuilder().append("https://ecsv2.").append(getDomainWithTrailingSlash()).append("pe.png?t=mobile&lt=").append(String.format("%tFT%<tT.%<tLZ", Calendar.getInstance(TimeZone.getTimeZone("Z")))).append("&mdid=").append(mDeviceId).append("&idfv=").append(mDeviceId).append("&idfa=");
        com.roblox.client.util.b.b();
        return sbAppend.append(com.roblox.client.util.b.a()).toString();
    }

    public static String rbxAnalyticsBatchUrl() {
        return "https://ecsv2." + getDomainWithTrailingSlash() + "mobile/pbe";
    }

    public static String evtAppLaunchUrl(String str) {
        return rbxAnalyticsUrl() + "&evt=appLaunch&ctx=" + str + "&appStoreSource=google";
    }

    public static String evtScreenLoadedUrl(String str) {
        return rbxAnalyticsUrl() + "&evt=screenLoaded&ctx=" + str;
    }

    public static String evtAppStageUrl(String str, String str2) {
        return rbxAnalyticsUrl() + "&evt=appStageLoaded&ctx=" + str + "&stage=" + str2;
    }

    public static String evtButtonClickUrl(String str, String str2) {
        return rbxAnalyticsUrl() + "&evt=buttonClick&ctx=" + str + "&btn=" + str2;
    }

    public static String evtButtonClickUrl(String str, String str2, String str3) {
        return rbxAnalyticsUrl() + "&evt=buttonClick&ctx=" + str + "&btn=" + str2 + "&cstm=" + str3;
    }

    public static String evtFormFieldUrl(String str, String str2, boolean z) {
        return rbxAnalyticsUrl() + "&evt=formValidation&ctx=" + str + "&input=" + str2;
    }

    public static String evtFormFieldUrl(String str, String str2, boolean z, String str3) {
        return rbxAnalyticsUrl() + "&evt=formValidation&ctx=" + str + "&input=" + str2 + "&vis=" + z + "&msg=" + str3;
    }

    public static String evtFormFieldInteractionUrl(String str, String str2, String str3) {
        return rbxAnalyticsUrl() + "&evt=formInteraction&ctx=" + str + "&input=" + str2 + "&aType=" + str3;
    }

    public static String evtPushNotificationInteracted(String str, String str2, String str3, String str4, String str5, String str6, Boolean bool) {
        try {
            String str7 = rbxAnalyticsUrl() + "&evt=pushNotificationInteracted&ua=" + URLEncoder.encode(userAgent(), Constants.UTF8_NAME) + "&ctx=" + str + "&platformType=" + str2;
            if (str3 != null) {
                str7 = str7 + "&notificationType=" + str3;
            }
            if (str4 != null) {
                str7 = str7 + "&notificationId=" + str4;
            }
            if (str5 != null) {
                str7 = str7 + "&actionTaken=" + str5;
            }
            if (str6 != null) {
                str7 = str7 + "&clientState=" + str6;
            }
            if (bool != null) {
                return str7 + "&openedClient=" + bool;
            }
            return str7;
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String evtPushNotificationReceived(String str, String str2, String str3, String str4, String str5) {
        try {
            String str6 = rbxAnalyticsUrl() + "&evt=pushNotificationReceived&ua=" + URLEncoder.encode(userAgent(), Constants.UTF8_NAME) + "&ctx=" + str + "&platformType=" + str2;
            if (str3 != null) {
                str6 = str6 + "&notificationType=" + str3;
            }
            if (str4 != null) {
                str6 = str6 + "&notificationId=" + str4;
            }
            if (str5 != null) {
                return str6 + "&clientState=" + str5;
            }
            return str6;
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String evtSharingAppSelected(String str) {
        return rbxAnalyticsUrl() + "&evt=sharingAppSelected&appName=" + str;
    }

    public static String evtFormSubmitFieldValue(String str, String str2, String str3) {
        return com.roblox.client.util.n.a("%s&evt=formSubmit&ctx=%s&field=%s&value=%s", rbxAnalyticsUrl(), str, str2, str3);
    }

    public static String notificationStreamUrl() {
        return baseUrlSecureWWW() + b.W();
    }

    public static String ephemeralCounterParams(String str, int i) {
        return "&counterName=" + str + "&amount=" + i;
    }

    public static String ephemeralCounterUrl() {
        return "https://ephemeralcounters.api." + getDomainWithTrailingSlash() + "v1.1/Counters/Increment/?apiKey=" + ROBLOX_API_KEY;
    }

    public static String ephemeralSequenceStatsUrl() {
        return "https://ephemeralcounters.api." + getDomainWithTrailingSlash() + "v1.0/SequenceStatistics/AddToSequence?apiKey=" + ROBLOX_API_KEY;
    }

    public static String ephemeralSequenceStatsParams(String str, long j) {
        return "&sequenceName=" + str + "&value=" + j;
    }

    public static String ephemeralSequenceStatsWithCountryCodeUrl() {
        return "https://www." + getDomainWithTrailingSlash() + "performance/send-measurement";
    }

    public static boolean checkIfUserIsUnder13FromPreferences(Context context) {
        return getKeyValues(context).getBoolean("under13", true);
    }

    public static String getAdDetailsUrl() {
        return baseUrlAPI() + "mobile-ads/v1/get-ad-details";
    }

    public static String showShowAdUrl() {
        return baseUrlAPI() + "mobile-ads/v1/should-show-ad";
    }

    public static String flushAdCountUrl() {
        return baseUrlAPI() + "mobile-ads/v1/flush-count";
    }

    public static void saveRobloxCookies(String str, String str2) {
        if (str != null && str2 != null) {
            p.a(mRobloxCookiesTmpFile, str + "\n" + str2);
        }
    }

    static String exceptionReasonFilename() {
        return "exception_reason.txt";
    }

    static String deviceNotSupportedString() {
        return mDeviceNotSupported;
    }

    static boolean deviceNotSupportedSkippable() {
        return mDeviceNotSupportedSkippable;
    }

    public static boolean isUserInPreferencesList(String str, String str2, long j) {
        if (str2 == null) {
            str2 = "";
        }
        try {
            JSONArray jSONArray = new JSONArray(getKeyValues().getString(str, "[]"));
            for (int i = 0; i < jSONArray.length(); i++) {
                if (jSONArray.getString(i).equals(str2 + "_" + j)) {
                    return true;
                }
            }
            return false;
        } catch (JSONException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static void putUserInPreferencesList(String str, String str2, long j) {
        if (str2 == null) {
            str2 = "";
        }
        try {
            JSONArray jSONArray = new JSONArray(getKeyValues().getString(str, "[]"));
            jSONArray.put(str2 + "_" + j);
            getKeyValues().edit().putString(str, jSONArray.toString()).apply();
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public static void initConfig(Context context) throws IOException {
        if (com.roblox.client.d.b.a()) {
            SharedPreferences sharedPreferencesA = com.roblox.client.util.m.a(context, "configure_dev_roblox", true);
            String string = sharedPreferencesA.getString("BaseUrl", null);
            if (!TextUtils.isEmpty(string)) {
                com.roblox.client.util.g.b(TAG, "initConfig: This is a *Dev* build. Set base-URL from: " + mBaseUrl + " => " + string);
                setBaseUrl(string);
            }
            setBaseUrlAPI(sharedPreferencesA.getString("BaseApiUrl", null));
        }
        mKeyValues = getKeyValues(context);
        mUserAgentSuffix = USER_AGENT_SUFFIX_DEFAULT_VALUE;
        mWebViewURLOverride = WEB_VIEW_URL_OVERRIDE_DEFAULT_VALUE;
        mUseWebURLOverride = false;
        mNDKProfilerFrequency = 100;
        try {
            mVersion = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
            mDeviceDensity = context.getResources().getDisplayMetrics().densityDpi;
            if (!p.a()) {
                mDeviceNotSupported = context.getString(h.a.CommonUI_Messages_Response_RequiresNEONInstructions);
                mDeviceNotSupportedSkippable = false;
            } else if (p.b(context).x < 180) {
                mDeviceNotSupported = "";
            } else if (Build.MODEL.equals("SM\u00ad-T210R")) {
                mDeviceNotSupported = "SM\u00ad-T210R";
            }
            updateDeviceType(context);
            mFilesDirectory = context.getFilesDir().getAbsolutePath();
            initCookiesTempFile(initCacheDirectory(context));
            mDeviceId = Settings.Secure.getString(context.getContentResolver(), "android_id");
            mActualUserAgentString = buildUserAgent(context);
        } catch (PackageManager.NameNotFoundException e) {
            throw new RuntimeException("Cannot Read Package Info for Version String: " + e.getMessage());
        }
    }

    public static String initCacheDirectory(Context context) {
        mCacheDirectory = context.getCacheDir().getAbsolutePath();
        return mCacheDirectory;
    }

    public static String breakpadDirectoryInCache() {
        return "breakpad_" + mVersion;
    }

    public static File initCookiesTempFile(String str) {
        mRobloxCookiesTmpFile = new File(str, "2345sd-2345234-cookies.txt");
        return mRobloxCookiesTmpFile;
    }

    public static void enableNDKProfiler(boolean z) {
        if (z) {
            if (NativeSettingsInterface.nativeEnableNDKProfiler(mNDKProfilerFrequency)) {
                com.roblox.client.util.g.e(TAG, "Setting NDK Profiler frequency: " + mNDKProfilerFrequency);
            }
        } else if (NativeSettingsInterface.nativeEnableNDKProfiler(0)) {
            p.a(mFilesDirectory + "/gmon.out", 493);
        }
    }

    public static void updateNativeSettings() {
        NativeSettingsInterface.nativeSetExceptionReasonFilename(exceptionReasonFilename());
        NativeSettingsInterface.nativeSetBaseUrl(baseUrlUnsecure(), baseUrlAPI());
        if (mCacheDirectory == null) {
            throw new NullPointerException("Missing cacheDirectory");
        }
        NativeSettingsInterface.nativeSetCacheDirectory(mCacheDirectory);
        NativeSettingsInterface.nativeSetFilesDirectory(mFilesDirectory);
        NativeSettingsInterface.nativeSetPlatformUserAgent(userAgent());
        NativeSettingsInterface.nativeSetRobloxVersion(version());
        NativeSettingsInterface.nativeSetPlatformHeaders(mDeviceId, "googleplay");
        NativeSettingsInterface.nativeInitBreakpad(breakpadDirectoryInCache(), b.X(), b.Y());
        NativeSettingsInterface.nativeSetHttpProxy(System.getProperty("http.proxyHost", ""), Long.getLong("http.proxyPort", 0L).longValue());
        NativeSettingsInterface.nativeSetCookiesForDomain(new com.roblox.client.util.c().c(getBaseUrlValue()), com.roblox.client.http.b.c().a(getDomain()));
        NativeSettingsInterface.nativeInitFastLog();
        NativeSettingsInterface.nativeSetAdditionalEngineSettings(b.ac());
    }

    public static String ageVisibilityText(Context context) {
        String str = com.roblox.client.q.d.a().f() + " ";
        return com.roblox.client.q.d.a().g() ? str + context.getString(h.a.CommonUI_Features_Heading_VisibleAgeUnder13) : str + context.getString(h.a.CommonUI_Features_Heading_VisibleAgeOver13);
    }

    public static boolean isShowVisibleAge() {
        return (com.roblox.client.n.a.c() || com.roblox.client.n.a.d()) ? getLuaAppVisibleAgeStyle() == q.ALL && com.roblox.client.i.h.a().c() : getNativeShellVisibleAgeStyle() == q.ALL && com.roblox.client.i.h.a().c();
    }

    public static boolean isShowVisibleAgeOnMorePage() {
        return (com.roblox.client.n.a.c() || com.roblox.client.n.a.d()) ? getLuaAppVisibleAgeStyle() != q.NONE && com.roblox.client.i.h.a().c() : getNativeShellVisibleAgeStyle() != q.NONE && com.roblox.client.i.h.a().c();
    }

    public static q getLuaAppVisibleAgeStyle() {
        return q.a(b.ah());
    }

    public static q getNativeShellVisibleAgeStyle() {
        return q.a(b.ag());
    }

    public static void setNeedsRestart(boolean z) {
        sNeedsRestart = z;
    }

    public static boolean needsRestart() {
        return sNeedsRestart;
    }
}
