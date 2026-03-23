.class public Lcom/roblox/client/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/j$b;,
        Lcom/roblox/client/j$a;
    }
.end annotation


# static fields
.field private static h:Lcom/roblox/client/j;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/roblox/client/j;->a:Z

    .line 35
    iput-boolean v0, p0, Lcom/roblox/client/j;->b:Z

    .line 36
    iput-boolean v0, p0, Lcom/roblox/client/j;->c:Z

    const-wide/16 v0, -0x1

    .line 39
    iput-wide v0, p0, Lcom/roblox/client/j;->d:J

    const-string v0, "0"

    .line 42
    iput-object v0, p0, Lcom/roblox/client/j;->e:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/roblox/client/j;->f:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/roblox/client/j;
    .locals 2

    .line 66
    sget-object v0, Lcom/roblox/client/j;->h:Lcom/roblox/client/j;

    if-eqz v0, :cond_0

    return-object v0

    .line 70
    :cond_0
    const-class v0, Lcom/roblox/client/j;

    monitor-enter v0

    .line 71
    :try_start_0
    sget-object v1, Lcom/roblox/client/j;->h:Lcom/roblox/client/j;

    if-nez v1, :cond_1

    .line 72
    new-instance v1, Lcom/roblox/client/j;

    invoke-direct {v1}, Lcom/roblox/client/j;-><init>()V

    sput-object v1, Lcom/roblox/client/j;->h:Lcom/roblox/client/j;

    .line 74
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    sget-object v0, Lcom/roblox/client/j;->h:Lcom/roblox/client/j;

    return-object v0

    :catchall_0
    move-exception v1

    .line 74
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic a(Lcom/roblox/client/j;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/roblox/client/j;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/roblox/client/j;)Z
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/roblox/client/j;->j()Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/roblox/client/j;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/roblox/client/j;->a:Z

    return p1
.end method

.method private static b(J)V
    .locals 2

    .line 237
    invoke-static {}, Lcom/roblox/client/u;->g()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "prefs_key_browser_tracker_id"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    const-string p1, "SharedPreferences is null when saving BTID"

    .line 241
    invoke-static {p1, p0}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/roblox/client/j;)Z
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/roblox/client/j;->k()Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/roblox/client/j;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/roblox/client/j;->b:Z

    return p1
.end method

.method static synthetic c(Lcom/roblox/client/j;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/roblox/client/j;->c:Z

    return p0
.end method

.method static synthetic c(Lcom/roblox/client/j;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/roblox/client/j;->c:Z

    return p1
.end method

.method private j()Z
    .locals 2

    .line 217
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "test-keys"

    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private k()Z
    .locals 10

    const-string v0, "/system/app/Superuser.apk"

    const-string v1, "/sbin/su"

    const-string v2, "/system/bin/su"

    const-string v3, "/system/xbin/su"

    const-string v4, "/data/local/xbin/su"

    const-string v5, "/data/local/bin/su"

    const-string v6, "/system/sd/xbin/su"

    const-string v7, "/system/bin/failsafe/su"

    const-string v8, "/data/local/su"

    const-string v9, "/su/bin/su"

    .line 222
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    .line 224
    aget-object v3, v0, v2

    .line 226
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static l()J
    .locals 6

    .line 248
    invoke-static {}, Lcom/roblox/client/u;->g()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    if-eqz v0, :cond_1

    const-string v4, "prefs_key_browser_tracker_id"

    .line 250
    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-nez v0, :cond_0

    const-string v0, "BTID is invalid even from preferences"

    .line 252
    invoke-static {v0, v1}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;Z)V

    :cond_0
    move-wide v2, v4

    goto :goto_0

    :cond_1
    const-string v0, "SharedPreferences is null when getting BTID"

    .line 255
    invoke-static {v0, v1}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;Z)V

    :goto_0
    return-wide v2
.end method


# virtual methods
.method public a(J)V
    .locals 7

    .line 86
    iput-wide p1, p0, Lcom/roblox/client/j;->d:J

    .line 87
    invoke-static {p1, p2}, Lcom/roblox/client/j;->b(J)V

    const-string v0, "0"

    .line 90
    iput-object v0, p0, Lcom/roblox/client/j;->e:Ljava/lang/String;

    .line 92
    invoke-static {}, Lcom/roblox/client/b;->ab()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/roblox/engine/jni/NativeSettingsInterface;->nativeGetDeviceHandleV2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/j;->f:Ljava/lang/String;

    .line 96
    iget-object p1, p0, Lcom/roblox/client/j;->g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez p1, :cond_0

    const-string p1, "DeviceTools"

    const-string p2, "setBrowserTrackerId: Create a new executor to update DeviceHandleV2"

    .line 97
    invoke-static {p1, p2}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-static {}, Lcom/roblox/client/b;->ac()J

    move-result-wide v4

    .line 99
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 p1, 0x1

    invoke-direct {v0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/roblox/client/j;->g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 100
    new-instance v1, Lcom/roblox/client/j$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/j$1;-><init>(Lcom/roblox/client/j;)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v2, v4

    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .line 283
    invoke-static {}, Lcom/roblox/client/b;->bx()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    new-instance v0, Lcom/roblox/client/j$3;

    invoke-direct {v0, p0, p1}, Lcom/roblox/client/j$3;-><init>(Lcom/roblox/client/j;Landroid/content/Context;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 295
    invoke-virtual {v0, p1, v1}, Lcom/roblox/client/j$3;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/b/a/a/a$a;)V
    .locals 1

    .line 303
    iget-boolean v0, p0, Lcom/roblox/client/j;->b:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    .line 305
    iget-boolean p1, p0, Lcom/roblox/client/j;->c:Z

    invoke-interface {p2, p1}, Lcom/b/a/a/a$a;->a(Z)V

    goto :goto_0

    .line 309
    :cond_0
    invoke-static {p1}, Lcom/b/a/a/a;->a(Landroid/content/Context;)Lcom/b/a/a/a;

    move-result-object p1

    const/4 v0, 0x0

    .line 310
    invoke-virtual {p1, v0}, Lcom/b/a/a/a;->a(Z)Lcom/b/a/a/a;

    move-result-object p1

    new-instance v0, Lcom/roblox/client/j$4;

    invoke-direct {v0, p0, p2}, Lcom/roblox/client/j$4;-><init>(Lcom/roblox/client/j;Lcom/b/a/a/a$a;)V

    .line 311
    invoke-virtual {p1, v0}, Lcom/b/a/a/a;->a(Lcom/b/a/a/a$a;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/roblox/client/j$b;)V
    .locals 2

    .line 194
    new-instance v0, Lcom/roblox/client/j$2;

    invoke-direct {v0, p0, p1}, Lcom/roblox/client/j$2;-><init>(Lcom/roblox/client/j;Lcom/roblox/client/j$b;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 207
    invoke-virtual {v0, p1, v1}, Lcom/roblox/client/j$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public b()J
    .locals 5

    .line 132
    iget-wide v0, p0, Lcom/roblox/client/j;->d:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    .line 136
    :cond_0
    invoke-static {}, Lcom/roblox/client/j;->l()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/roblox/client/j;->d:J

    return-wide v0
.end method

.method public declared-synchronized c()Ljava/lang/String;
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "0"

    .line 146
    iget-object v1, p0, Lcom/roblox/client/j;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/roblox/client/j;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 150
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/roblox/client/j;->b()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const-string v0, "0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    monitor-exit p0

    return-object v0

    .line 156
    :cond_1
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/roblox/engine/jni/NativeSettingsInterface;->nativeGetDeviceHandle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/j;->e:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 158
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_rbldh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {p0}, Lcom/roblox/client/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/roblox/client/u;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized e()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/roblox/client/j;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_ablm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {p0}, Lcom/roblox/client/j;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/roblox/client/u;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 184
    iget-boolean v0, p0, Lcom/roblox/client/j;->a:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .line 273
    iget-boolean v0, p0, Lcom/roblox/client/j;->c:Z

    return v0
.end method

.method public i()Lcom/roblox/client/j$a;
    .locals 1

    .line 327
    invoke-static {}, Lcom/roblox/engine/jni/NativeSettingsInterface;->getRunningArchitecture()I

    move-result v0

    .line 328
    invoke-static {v0}, Lcom/roblox/client/j$a;->a(I)Lcom/roblox/client/j$a;

    move-result-object v0

    return-object v0
.end method
