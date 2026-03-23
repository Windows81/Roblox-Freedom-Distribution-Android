.class public Lcom/roblox/client/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/c$a;
    }
.end annotation


# static fields
.field private static h:Lcom/roblox/client/c;


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

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean v0, p0, Lcom/roblox/client/c;->a:Z

    .line 34
    iput-boolean v0, p0, Lcom/roblox/client/c;->b:Z

    .line 35
    iput-boolean v0, p0, Lcom/roblox/client/c;->c:Z

    .line 38
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/roblox/client/c;->d:J

    .line 41
    const-string v0, "0"

    iput-object v0, p0, Lcom/roblox/client/c;->e:Ljava/lang/String;

    .line 44
    const-string v0, "0"

    iput-object v0, p0, Lcom/roblox/client/c;->f:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public static a()Lcom/roblox/client/c;
    .locals 2

    .prologue
    .line 52
    sget-object v0, Lcom/roblox/client/c;->h:Lcom/roblox/client/c;

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lcom/roblox/client/c;->h:Lcom/roblox/client/c;

    .line 61
    :goto_0
    return-object v0

    .line 56
    :cond_0
    const-class v1, Lcom/roblox/client/c;

    monitor-enter v1

    .line 57
    :try_start_0
    sget-object v0, Lcom/roblox/client/c;->h:Lcom/roblox/client/c;

    if-nez v0, :cond_1

    .line 58
    new-instance v0, Lcom/roblox/client/c;

    invoke-direct {v0}, Lcom/roblox/client/c;-><init>()V

    sput-object v0, Lcom/roblox/client/c;->h:Lcom/roblox/client/c;

    .line 60
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    sget-object v0, Lcom/roblox/client/c;->h:Lcom/roblox/client/c;

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/roblox/client/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/roblox/client/c;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/roblox/client/c;)Z
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/roblox/client/c;->h()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/roblox/client/c;Z)Z
    .locals 0

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/roblox/client/c;->a:Z

    return p1
.end method

.method private static b(J)V
    .locals 2

    .prologue
    .line 223
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->getKeyValues()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 224
    if-eqz v0, :cond_0

    .line 225
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "prefs_key_browser_tracker_id"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 229
    :goto_0
    return-void

    .line 227
    :cond_0
    const-string v0, "SharedPreferences is null when saving BTID"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/roblox/client/c;)Z
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/roblox/client/c;->i()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/roblox/client/c;Z)Z
    .locals 0

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/roblox/client/c;->b:Z

    return p1
.end method

.method static synthetic c(Lcom/roblox/client/c;)Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/roblox/client/c;->c:Z

    return v0
.end method

.method static synthetic c(Lcom/roblox/client/c;Z)Z
    .locals 0

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/roblox/client/c;->c:Z

    return p1
.end method

.method private h()Z
    .locals 2

    .prologue
    .line 203
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 204
    if-eqz v0, :cond_0

    const-string v1, "test-keys"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 208
    const/16 v2, 0xa

    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "/system/app/Superuser.apk"

    aput-object v2, v3, v1

    const-string v2, "/sbin/su"

    aput-object v2, v3, v0

    const/4 v2, 0x2

    const-string v4, "/system/bin/su"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string v4, "/system/xbin/su"

    aput-object v4, v3, v2

    const/4 v2, 0x4

    const-string v4, "/data/local/xbin/su"

    aput-object v4, v3, v2

    const/4 v2, 0x5

    const-string v4, "/data/local/bin/su"

    aput-object v4, v3, v2

    const/4 v2, 0x6

    const-string v4, "/system/sd/xbin/su"

    aput-object v4, v3, v2

    const/4 v2, 0x7

    const-string v4, "/system/bin/failsafe/su"

    aput-object v4, v3, v2

    const/16 v2, 0x8

    const-string v4, "/data/local/su"

    aput-object v4, v3, v2

    const/16 v2, 0x9

    const-string v4, "/su/bin/su"

    aput-object v4, v3, v2

    .line 210
    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    .line 212
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 219
    :goto_1
    return v0

    .line 215
    :catch_0
    move-exception v5

    .line 210
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 219
    goto :goto_1
.end method

.method private static j()J
    .locals 5

    .prologue
    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    .line 234
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->getKeyValues()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_1

    .line 236
    const-string v1, "prefs_key_browser_tracker_id"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 237
    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 238
    const-string v2, "BTID is invalid even from preferences"

    invoke-static {v2, v4}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Z)V

    .line 243
    :cond_0
    :goto_0
    return-wide v0

    .line 241
    :cond_1
    const-string v0, "SharedPreferences is null when getting BTID"

    invoke-static {v0, v4}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Z)V

    move-wide v0, v2

    goto :goto_0
.end method


# virtual methods
.method public a(J)V
    .locals 7

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/roblox/client/c;->d:J

    .line 73
    invoke-static {p1, p2}, Lcom/roblox/client/c;->b(J)V

    .line 76
    const-string v0, "0"

    iput-object v0, p0, Lcom/roblox/client/c;->e:Ljava/lang/String;

    .line 78
    invoke-static {}, Lcom/roblox/client/b;->aD()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/roblox/platform/DeviceTools;->nativeGetDeviceHandleV2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/c;->f:Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/roblox/client/c;->g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 83
    const-string v0, "DeviceTools"

    const-string v1, "setBrowserTrackerId: Create a new executor to update DeviceHandleV2"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-static {}, Lcom/roblox/client/b;->aE()J

    move-result-wide v2

    .line 85
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/roblox/client/c;->g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 86
    iget-object v0, p0, Lcom/roblox/client/c;->g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/roblox/client/c$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/c$1;-><init>(Lcom/roblox/client/c;)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 110
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/c/a/a/a$a;)V
    .locals 2

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/roblox/client/c;->b:Z

    if-eqz v0, :cond_0

    .line 254
    iget-boolean v0, p0, Lcom/roblox/client/c;->c:Z

    invoke-interface {p2, v0}, Lcom/c/a/a/a$a;->a(Z)V

    .line 270
    :goto_0
    return-void

    .line 257
    :cond_0
    invoke-static {p1}, Lcom/c/a/a/a;->a(Landroid/content/Context;)Lcom/c/a/a/a;

    move-result-object v0

    const/4 v1, 0x0

    .line 258
    invoke-virtual {v0, v1}, Lcom/c/a/a/a;->a(Z)Lcom/c/a/a/a;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/c$3;

    invoke-direct {v1, p0, p2}, Lcom/roblox/client/c$3;-><init>(Lcom/roblox/client/c;Lcom/c/a/a/a$a;)V

    .line 259
    invoke-virtual {v0, v1}, Lcom/c/a/a/a;->a(Lcom/c/a/a/a$a;)V

    goto :goto_0
.end method

.method public a(Lcom/roblox/client/c$a;)V
    .locals 3

    .prologue
    .line 180
    new-instance v0, Lcom/roblox/client/c$2;

    invoke-direct {v0, p0, p1}, Lcom/roblox/client/c$2;-><init>(Lcom/roblox/client/c;Lcom/roblox/client/c$a;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 193
    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/c$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 194
    return-void
.end method

.method public b()J
    .locals 4

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/roblox/client/c;->d:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 119
    iget-wide v0, p0, Lcom/roblox/client/c;->d:J

    .line 123
    :goto_0
    return-wide v0

    .line 122
    :cond_0
    invoke-static {}, Lcom/roblox/client/c;->j()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/roblox/client/c;->d:J

    .line 123
    iget-wide v0, p0, Lcom/roblox/client/c;->d:J

    goto :goto_0
.end method

.method public declared-synchronized c()Ljava/lang/String;
    .locals 4

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    const-string v0, "0"

    iget-object v1, p0, Lcom/roblox/client/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/roblox/client/c;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :goto_0
    monitor-exit p0

    return-object v0

    .line 136
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/roblox/client/c;->b()J

    move-result-wide v0

    .line 138
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 139
    const-string v0, "0"

    goto :goto_0

    .line 142
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/roblox/platform/DeviceTools;->nativeGetDeviceHandle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/c;->e:Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/roblox/client/c;->e:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_rbldh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 149
    invoke-virtual {p0}, Lcom/roblox/client/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    return-object v0
.end method

.method public declared-synchronized e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/roblox/client/c;->f:Ljava/lang/String;
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

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_ablm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 158
    invoke-virtual {p0}, Lcom/roblox/client/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    return-object v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/roblox/client/c;->a:Z

    return v0
.end method
