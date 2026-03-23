.class public Lcom/roblox/client/i/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/i/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/i/c$c;,
        Lcom/roblox/client/i/c$a;,
        Lcom/roblox/client/i/c$b;
    }
.end annotation


# static fields
.field private static final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/roblox/client/i/c$b;

.field private b:Lcom/roblox/client/i/c$a;

.field private c:Z

.field private d:Lcom/google/android/gms/analytics/h;

.field private e:Z

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 57
    :try_start_0
    const-string v0, "fmod"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 58
    const-string v0, "roblox"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 61
    const-string v0, "shell-lib"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/roblox/client/i/a;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/roblox/client/i/a;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/roblox/client/i/a;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/roblox/client/i/a;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/roblox/client/i/c;->g:Ljava/util/Set;

    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 67
    const-string v1, "AppManager"

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    sget-object v0, Lcom/roblox/client/i/c$b;->a:Lcom/roblox/client/i/c$b;

    iput-object v0, p0, Lcom/roblox/client/i/c;->a:Lcom/roblox/client/i/c$b;

    .line 87
    sget-object v0, Lcom/roblox/client/i/c$a;->a:Lcom/roblox/client/i/c$a;

    iput-object v0, p0, Lcom/roblox/client/i/c;->b:Lcom/roblox/client/i/c$a;

    .line 119
    const-string v0, "AppManager"

    const-string v1, "[AppManager]: Constructor called."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-void
.end method

.method synthetic constructor <init>(Lcom/roblox/client/i/c$1;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/roblox/client/i/c;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Z)Lcom/google/android/gms/analytics/h;
    .locals 2

    .prologue
    .line 356
    if-nez p2, :cond_0

    .line 357
    const/4 v0, 0x0

    .line 360
    :goto_0
    return-object v0

    .line 359
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/analytics/d;->a(Landroid/content/Context;)Lcom/google/android/gms/analytics/d;

    move-result-object v0

    .line 360
    const/high16 v1, 0x7f110000

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/d;->a(I)Lcom/google/android/gms/analytics/h;

    move-result-object v0

    goto :goto_0
.end method

.method public static a()Lcom/roblox/client/i/c;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/roblox/client/i/c$c;->a:Lcom/roblox/client/i/c;

    return-object v0
.end method

.method private c(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 301
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 303
    const v0, 0x7f0e01af

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 304
    const/4 v1, 0x3

    .line 305
    new-instance v2, Landroid/app/NotificationChannel;

    const-string v3, "channel_general"

    invoke-direct {v2, v3, v0, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 308
    const-string v0, "notification"

    .line 309
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 310
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 312
    :cond_0
    return-void
.end method

.method private e()Lcom/roblox/platform/c;
    .locals 5

    .prologue
    .line 278
    new-instance v0, Lcom/roblox/client/util/c;

    invoke-direct {v0}, Lcom/roblox/client/util/c;-><init>()V

    .line 280
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->getBaseUrlValue()Ljava/lang/String;

    move-result-object v1

    .line 281
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->getBaseUrlApiValue()Ljava/lang/String;

    move-result-object v2

    .line 283
    new-instance v3, Lcom/roblox/platform/c;

    .line 284
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->getDomain()Ljava/lang/String;

    move-result-object v4

    .line 285
    invoke-virtual {v0, v1}, Lcom/roblox/client/util/c;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_0

    .line 286
    invoke-virtual {v0, v2}, Lcom/roblox/client/util/c;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v3, v4, v1, v0}, Lcom/roblox/platform/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    return-object v3

    .line 286
    :cond_0
    const-string v0, "api"

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 130
    const-string v0, "DeviceInstallPreferences"

    invoke-static {p1, v0}, Lcom/roblox/client/util/m;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 131
    const-string v1, "AppFirstLaunch"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/roblox/client/i/c;->e:Z

    .line 132
    iget-boolean v1, p0, Lcom/roblox/client/i/c;->e:Z

    if-eqz v1, :cond_0

    .line 133
    const-string v1, "AppManager"

    const-string v2, "First App launch!"

    invoke-static {v1, v2}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-static {}, Lcom/roblox/client/i/f;->a()Lcom/roblox/client/i/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/i/f;->b()V

    .line 135
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 136
    const-string v1, "AppFirstLaunch"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 137
    const-string v1, "AppFirstLaunchTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 138
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 140
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/roblox/client/i/c$b;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 172
    sget-object v0, Lcom/roblox/client/i/c$b;->b:Lcom/roblox/client/i/c$b;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/roblox/client/i/c$b;->c:Lcom/roblox/client/i/c$b;

    if-eq p2, v0, :cond_0

    .line 173
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid AppInitType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/i/c;->b:Lcom/roblox/client/i/c$a;

    sget-object v1, Lcom/roblox/client/i/c$a;->a:Lcom/roblox/client/i/c$a;

    if-eq v0, v1, :cond_1

    .line 275
    :goto_0
    return-void

    .line 180
    :cond_1
    const-class v1, Lcom/roblox/client/i/c;

    monitor-enter v1

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/roblox/client/i/c;->b:Lcom/roblox/client/i/c$a;

    sget-object v2, Lcom/roblox/client/i/c$a;->a:Lcom/roblox/client/i/c$a;

    if-eq v0, v2, :cond_2

    .line 182
    monitor-exit v1

    goto :goto_0

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 184
    :cond_2
    :try_start_1
    sget-object v0, Lcom/roblox/client/i/c$a;->b:Lcom/roblox/client/i/c$a;

    iput-object v0, p0, Lcom/roblox/client/i/c;->b:Lcom/roblox/client/i/c$a;

    .line 185
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    iput-object p2, p0, Lcom/roblox/client/i/c;->a:Lcom/roblox/client/i/c$b;

    .line 188
    const-string v0, "AppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialize: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/i/c;->a:Lcom/roblox/client/i/c$b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] Start..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 192
    invoke-static {}, Lcom/google/android/gms/common/e;->a()Lcom/google/android/gms/common/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/e;->a(Landroid/content/Context;)I

    move-result v0

    .line 193
    if-nez v0, :cond_3

    .line 194
    iput-boolean v7, p0, Lcom/roblox/client/i/c;->c:Z

    .line 201
    :goto_1
    iget-boolean v0, p0, Lcom/roblox/client/i/c;->c:Z

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/i/c;->a(Landroid/content/Context;Z)Lcom/google/android/gms/analytics/h;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/i/c;->d:Lcom/google/android/gms/analytics/h;

    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/roblox/client/util/m;->a(Landroid/content/Context;)Lcom/roblox/client/util/m;

    move-result-object v0

    .line 208
    :try_start_2
    invoke-static {p1}, Lcom/roblox/client/RobloxSettings;->initConfig(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 215
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->userAgent()Ljava/lang/String;

    move-result-object v1

    .line 216
    const-string v4, "AppManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ROBLOX | User-Agent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-static {v1}, Lmicrosoft/aspnet/signalr/client/Platform;->setRobloxUserAgent(Ljava/lang/String;)V

    .line 220
    invoke-static {v7}, Lmicrosoft/aspnet/signalr/client/Platform;->setSkipCookie(Z)V

    .line 223
    invoke-static {v1}, Lcom/roblox/platform/g;->a(Ljava/lang/String;)V

    .line 224
    invoke-direct {p0}, Lcom/roblox/client/i/c;->e()Lcom/roblox/platform/c;

    move-result-object v1

    invoke-static {v1}, Lcom/roblox/platform/g;->a(Lcom/roblox/platform/c;)V

    .line 225
    new-instance v1, Lcom/roblox/client/i/c$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/i/c$1;-><init>(Lcom/roblox/client/i/c;)V

    invoke-static {v1}, Lcom/roblox/platform/g;->a(Lcom/roblox/platform/b;)V

    .line 244
    invoke-static {p1, v8}, Lcom/roblox/client/i/g;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 247
    invoke-static {}, Lcom/roblox/client/i/f;->a()Lcom/roblox/client/i/f;

    move-result-object v1

    .line 249
    invoke-static {}, Lcom/roblox/abtesting/a;->a()Lcom/roblox/abtesting/a;

    move-result-object v4

    .line 250
    invoke-virtual {v4, v1}, Lcom/roblox/abtesting/a;->a(Lcom/roblox/client/i/f;)V

    .line 251
    new-instance v5, Lcom/roblox/client/http/h;

    invoke-direct {v5}, Lcom/roblox/client/http/h;-><init>()V

    invoke-virtual {v4, v5}, Lcom/roblox/abtesting/a;->a(Lcom/roblox/client/http/f;)V

    .line 252
    invoke-virtual {v4, v0}, Lcom/roblox/abtesting/a;->a(Lcom/roblox/client/util/m;)V

    .line 256
    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    .line 258
    invoke-static {}, Lcom/roblox/client/c;->a()Lcom/roblox/client/c;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/roblox/client/c;->a(Lcom/roblox/client/c$a;)V

    .line 259
    invoke-static {}, Lcom/roblox/client/c/a;->a()Lcom/roblox/client/c/a;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/roblox/client/c/a;->a(Landroid/content/Context;Lcom/roblox/client/i/f;)V

    .line 261
    invoke-static {p1}, Lcom/roblox/client/i/a;->a(Landroid/content/Context;)Lcom/roblox/client/i/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/roblox/client/i/a;->a(Lcom/roblox/client/i/a$a;)V

    .line 262
    invoke-static {}, Lcom/roblox/client/d/c;->a()V

    .line 264
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 265
    invoke-static {}, Lcom/roblox/client/locale/a;->a()Lcom/roblox/client/locale/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/roblox/client/locale/a;->a(Ljava/util/Locale;)V

    .line 266
    const-string v1, "Locale"

    const-string v4, "DeviceLocale"

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v1, v4, v0}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-direct {p0, p1}, Lcom/roblox/client/i/c;->c(Landroid/content/Context;)V

    .line 272
    sget-object v0, Lcom/roblox/client/i/c$a;->c:Lcom/roblox/client/i/c$a;

    iput-object v0, p0, Lcom/roblox/client/i/c;->b:Lcom/roblox/client/i/c$a;

    .line 273
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, v2

    .line 274
    const-string v2, "AppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initialize: Completed OK. elapsedTime(ms) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 196
    :cond_3
    const-string v0, "AppManager"

    const-string v1, "GooglePlay services is NOT available!"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 209
    :catch_0
    move-exception v0

    .line 210
    const-string v1, "AppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** Exception caught in initConfig: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/roblox/client/util/g;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    sget-object v0, Lcom/roblox/client/i/c$a;->d:Lcom/roblox/client/i/c$a;

    iput-object v0, p0, Lcom/roblox/client/i/c;->b:Lcom/roblox/client/i/c$a;

    .line 212
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "IOException in RobloxSettings.initConfig()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_4
    const-string v0, "NULL"

    goto :goto_2
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 319
    const-string v0, "AppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityCreationLimit: activityName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const-string v0, "ActivityTracker"

    const-string v1, "CreationLimit"

    invoke-static {v0, v1, p2}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-static {}, Lcom/roblox/client/b;->av()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/roblox/client/i/c;->g:Ljava/util/Set;

    .line 325
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    const-string v0, "AppManager"

    const-string v1, "!!!!! ACTIVITIES CREATED TOO MANY TIMES !!!!!"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const-string v0, "AppManager"

    const-string v1, "!!!!!           RESTART THE APP         !!!!!"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const-string v0, "ActivityTracker"

    const-string v1, "RestartApp"

    invoke-static {v0, v1, p2}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-wide/16 v0, 0x64

    invoke-static {p1, v0, v1}, Lcom/roblox/client/util/k;->a(Landroid/content/Context;J)V

    .line 331
    invoke-static {}, Lcom/roblox/client/util/k;->a()V

    .line 333
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 349
    iput-boolean p1, p0, Lcom/roblox/client/i/c;->f:Z

    .line 350
    return-void
.end method

.method public b(Landroid/content/Context;)J
    .locals 4

    .prologue
    .line 149
    const-string v0, "DeviceInstallPreferences"

    invoke-static {p1, v0}, Lcom/roblox/client/util/m;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 150
    const-string v1, "AppFirstLaunchTime"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()Lcom/google/android/gms/analytics/h;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/roblox/client/i/c;->d:Lcom/google/android/gms/analytics/h;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/roblox/client/i/c;->e:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/roblox/client/i/c;->f:Z

    return v0
.end method
